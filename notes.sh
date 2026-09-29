#!/usr/bin/env bash
#
# notes.sh — draft, preview, and promote Markdown + LaTeX notes.
#
#   staging/   working drafts (*.md)
#   output/    preview builds and logs (safe to wipe)
#   math/ signals/ electrical/   promoted notes (.md + .pdf)
#
# Run with no arguments for the interactive menu, or see ./notes.sh help.

set -uo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STAGING="$ROOT/staging"
OUTPUT="$ROOT/output"
LOGS="$OUTPUT/logs"
TEMPLATE="$ROOT/templates/note.md"
TARGETS=(math signals electrical)
PANDOC_ARGS=(--pdf-engine=pdflatex -V block-headings)

# ============================================================================
# COLOR DEFINITIONS
# ============================================================================
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m'

printHeader() {
    clear
    echo -e "${BOLD}${CYAN}"
    cat << "EOF"
  _   _       _
 | \ | | ___ | |_ ___  ___
 |  \| |/ _ \| __/ _ \/ __|
 | |\  | (_) | ||  __/\__ \
 |_| \_|\___/ \__\___||___/
EOF
    echo -e "${NC}"
}

printSeparator() {
    echo -e "${DIM}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

printError() {
    echo -e "${RED}${BOLD}✗ ERROR:${NC} ${RED}$1${NC}"
}

printSuccess() {
    echo -e "${GREEN}${BOLD}✓ SUCCESS:${NC} ${GREEN}$1${NC}"
}

printInfo() {
    echo -e "${BLUE}${BOLD}ℹ INFO:${NC} ${CYAN}$1${NC}"
}

printWarning() {
    echo -e "${YELLOW}${BOLD}⚠ WARNING:${NC} ${YELLOW}$1${NC}"
}

pause() {
    echo ""
    read -rp "$(echo -e "${DIM}Press Enter to continue...${NC}")" _
}

confirm() {
    local answer
    read -rp "$(echo -e "${BOLD}${YELLOW}$1 [y/N]:${NC} ")" answer
    [[ "$answer" =~ ^[Yy]$ ]]
}

# ============================================================================
# STAGING HELPERS
# ============================================================================

# Fills the global DRAFTS array with the names (no .md) of staging drafts.
loadDrafts() {
    DRAFTS=()
    local f
    for f in "$STAGING"/*.md; do
        [ -f "$f" ] || continue
        f="${f##*/}"
        DRAFTS+=("${f%.md}")
    done
}

# Prints the promoted folder that already holds <name>.md, if any.
existingTarget() {
    local t
    for t in "${TARGETS[@]}"; do
        if [ -f "$ROOT/$t/$1.md" ]; then
            echo "$t"
            return 0
        fi
    done
    return 1
}

# Preview state of a draft: none, stale (source changed since build), or built.
previewState() {
    local pdf="$OUTPUT/$1.pdf"
    if [ ! -f "$pdf" ]; then
        echo "none"
    elif [ "$STAGING/$1.md" -nt "$pdf" ]; then
        echo "stale"
    else
        echo "built"
    fi
}

showDrafts() {
    loadDrafts
    echo -e "${BOLD}Staging${NC} ${DIM}(${#DRAFTS[@]} draft(s) in staging/)${NC}"
    echo ""
    if [ ${#DRAFTS[@]} -eq 0 ]; then
        echo -e "  ${DIM}No drafts. Put a .md file in staging/ or choose 'New draft'.${NC}"
        return
    fi
    printf "  ${BOLD}%-3s %-28s %-10s %-18s %s${NC}\n" "#" "Draft" "Preview" "Promotes to" "Modified"
    local i name state target color modified
    for i in "${!DRAFTS[@]}"; do
        name="${DRAFTS[$i]}"
        state="$(previewState "$name")"
        case "$state" in
            built) color="$GREEN" ;;
            stale) color="$YELLOW" ;;
            *)     color="$DIM" ;;
        esac
        if target="$(existingTarget "$name")"; then
            target="$target/ (update)"
        else
            target="new"
        fi
        modified="$(date -r "$STAGING/$name.md" +'%Y-%m-%d %H:%M')"
        printf "  %-3s %-28s ${color}%-10s${NC} %-18s ${DIM}%s${NC}\n" \
            "$((i + 1)))" "$name" "$state" "$target" "$modified"
    done
}

# Asks for a draft by number or name; sets PICKED.
pickDraft() {
    loadDrafts
    PICKED=""
    if [ ${#DRAFTS[@]} -eq 0 ]; then
        printError "There are no drafts in staging/."
        return 1
    fi
    local choice
    read -rp "$(echo -e "${BOLD}${YELLOW}Draft # or name:${NC} ")" choice
    choice="${choice%.md}"
    if [[ "$choice" =~ ^[0-9]+$ ]] && [ "$choice" -ge 1 ] && [ "$choice" -le ${#DRAFTS[@]} ]; then
        PICKED="${DRAFTS[$((choice - 1))]}"
    elif [ -n "$choice" ] && [ -f "$STAGING/$choice.md" ]; then
        PICKED="$choice"
    else
        printError "No draft matches '$choice'."
        return 1
    fi
}

# Asks for a promotion folder; sets PICKED_TARGET. $1 is the draft name.
pickTarget() {
    local default="" i choice
    default="$(existingTarget "$1")" || default=""
    echo ""
    for i in "${!TARGETS[@]}"; do
        echo -e "  ${BOLD}$((i + 1)))${NC} ${TARGETS[$i]}/"
    done
    local hint=""
    [ -n "$default" ] && hint=" ${DIM}[Enter = $default]${NC}"
    read -rp "$(echo -e "${BOLD}${YELLOW}Promote to folder #:${NC}${hint} ")" choice
    PICKED_TARGET=""
    if [ -z "$choice" ] && [ -n "$default" ]; then
        PICKED_TARGET="$default"
    elif [[ "$choice" =~ ^[0-9]+$ ]] && [ "$choice" -ge 1 ] && [ "$choice" -le ${#TARGETS[@]} ]; then
        PICKED_TARGET="${TARGETS[$((choice - 1))]}"
    else
        printError "Invalid folder '$choice'."
        return 1
    fi
}

# ============================================================================
# ACTIONS
# ============================================================================

requirePandoc() {
    if ! command -v pandoc &>/dev/null; then
        printError "pandoc is not installed or not in PATH."
        return 1
    fi
}

# Builds staging/<name>.md into output/<name>.pdf. Log goes to output/logs/.
buildPreview() {
    local name="$1"
    local src="$STAGING/$name.md"
    local pdf="$OUTPUT/$name.pdf"
    local log="$LOGS/$name.log"

    if [ ! -f "$src" ]; then
        printError "staging/$name.md does not exist."
        return 1
    fi
    requirePandoc || return 1
    mkdir -p "$OUTPUT" "$LOGS"

    printInfo "Building ${BOLD}$name${NC}${CYAN} (this can take a minute)..."
    local start=$SECONDS
    if (cd "$STAGING" && pandoc "$name.md" -o "$pdf" "${PANDOC_ARGS[@]}") >"$log" 2>&1; then
        local pages=""
        if command -v pdfinfo &>/dev/null; then
            pages="$(pdfinfo "$pdf" 2>/dev/null | awk '/^Pages:/ {print $2}')"
            [ -n "$pages" ] && pages=", $pages page(s)"
        fi
        printSuccess "output/$name.pdf ($((SECONDS - start))s$pages)"
    else
        printError "Build failed for $name. Last lines of output/logs/$name.log:"
        tail -n 15 "$log" | sed 's/^/    /'
        return 1
    fi
}

buildAll() {
    loadDrafts
    if [ ${#DRAFTS[@]} -eq 0 ]; then
        printError "There are no drafts in staging/."
        return 1
    fi
    local name failed=0
    for name in "${DRAFTS[@]}"; do
        buildPreview "$name" || failed=$((failed + 1))
    done
    [ "$failed" -eq 0 ] || printWarning "$failed build(s) failed."
}

openPdf() {
    local pdf="$1"
    if [ ! -f "$pdf" ]; then
        printError "No PDF at ${pdf#"$ROOT"/}. Build a preview first."
        return 1
    fi
    if command -v cygpath &>/dev/null; then
        cmd.exe //c start "" "$(cygpath -w "$pdf")" &>/dev/null
    elif command -v xdg-open &>/dev/null; then
        xdg-open "$pdf" &>/dev/null &
    elif command -v open &>/dev/null; then
        open "$pdf"
    else
        printWarning "Cannot open a viewer here. The PDF is at ${pdf#"$ROOT"/}."
        return 0
    fi
    printInfo "Opened ${pdf#"$ROOT"/}"
}

# Fresh build, then move staging/<name>.md and the PDF into <target>/.
promote() {
    local name="$1" target="$2"
    local dest="$ROOT/$target"

    if [ ! -f "$STAGING/$name.md" ]; then
        printError "staging/$name.md does not exist."
        return 1
    fi
    mkdir -p "$dest"

    if [ -f "$dest/$name.md" ]; then
        printWarning "$target/$name.md already exists. Promotion replaces it (git keeps the old version)."
        confirm "Replace $target/$name.md?" || { printInfo "Promotion cancelled."; return 1; }
    fi

    printInfo "Making a fresh build before promotion..."
    buildPreview "$name" || { printError "Promotion stopped. staging/$name.md is unchanged."; return 1; }

    cp "$OUTPUT/$name.pdf" "$dest/$name.pdf" &&
        mv "$STAGING/$name.md" "$dest/$name.md" || {
        printError "Could not move files into $target/."
        return 1
    }
    printSuccess "Promoted to $target/$name.md and $target/$name.pdf"
}

newDraft() {
    local name
    read -rp "$(echo -e "${BOLD}${YELLOW}New draft name (kebab-case, no .md):${NC} ")" name
    name="${name%.md}"
    if [[ ! "$name" =~ ^[a-z0-9][a-z0-9-]*$ ]]; then
        printError "Use lowercase letters, digits, and hyphens only (example: dc-transients)."
        return 1
    fi
    if [ -f "$STAGING/$name.md" ]; then
        printError "staging/$name.md already exists."
        return 1
    fi
    local t
    if t="$(existingTarget "$name")"; then
        printWarning "$t/$name.md already exists. Promoting this draft will replace it."
    fi
    if [ ! -f "$TEMPLATE" ]; then
        printError "Template ${TEMPLATE#"$ROOT"/} is missing."
        return 1
    fi
    mkdir -p "$STAGING"
    cp "$TEMPLATE" "$STAGING/$name.md"
    printSuccess "Created staging/$name.md (preamble only)."
}

cleanOutput() {
    if [ ! -d "$OUTPUT" ] || [ -z "$(ls -A "$OUTPUT" 2>/dev/null)" ]; then
        printInfo "output/ is already empty."
        return 0
    fi
    local count
    count="$(find "$OUTPUT" -type f | wc -l | tr -d ' ')"
    confirm "Delete $count file(s) in output/?" || { printInfo "Nothing deleted."; return 0; }
    rm -rf "${OUTPUT:?}"/*
    printSuccess "output/ is empty."
}

gitSync() {
    cd "$ROOT" || return 1
    local changes
    changes="$(git status --short)"
    if [ -z "$changes" ]; then
        printInfo "Nothing to commit."
    else
        echo -e "${BOLD}Changes:${NC}"
        echo "$changes" | sed 's/^/    /'
        echo ""
        if confirm "Commit all of these changes?"; then
            local msg
            read -rp "$(echo -e "${BOLD}${YELLOW}Commit message:${NC} ")" msg
            [ -n "$msg" ] || { printError "Empty message. Nothing committed."; return 1; }
            git add -A && git commit -q -m "$msg" && printSuccess "Committed." || return 1
        fi
    fi
    local ahead
    ahead="$(git rev-list --count '@{u}..HEAD' 2>/dev/null || echo "?")"
    if [ "$ahead" != "0" ] && confirm "Push to $(git remote get-url origin)?"; then
        git push && printSuccess "Pushed."
    fi
}

# ============================================================================
# MENU
# ============================================================================

displayMenu() {
    echo ""
    printSeparator
    echo -e "  ${GREEN}${BOLD}b)${NC} Build preview        ${DIM}staging/x.md -> output/x.pdf${NC}"
    echo -e "  ${GREEN}${BOLD}a)${NC} Build all previews"
    echo -e "  ${BLUE}${BOLD}o)${NC} Open preview PDF"
    echo -e "  ${CYAN}${BOLD}p)${NC} Promote              ${DIM}fresh build, move to math/ signals/ electrical/${NC}"
    echo -e "  ${CYAN}${BOLD}n)${NC} New draft            ${DIM}preamble only, from templates/note.md${NC}"
    echo -e "  ${YELLOW}${BOLD}c)${NC} Clean output/"
    echo -e "  ${YELLOW}${BOLD}g)${NC} Git commit and push"
    echo -e "  ${RED}${BOLD}q)${NC} Quit"
    printSeparator
}

interactive() {
    local choice
    while true; do
        printHeader
        showDrafts
        displayMenu
        read -rp "$(echo -e "${BOLD}${YELLOW}Choice:${NC} ")" choice
        echo ""
        case "$choice" in
            b) pickDraft && buildPreview "$PICKED" ;;
            a) buildAll ;;
            o) pickDraft && openPdf "$OUTPUT/$PICKED.pdf" ;;
            p) pickDraft && pickTarget "$PICKED" && promote "$PICKED" "$PICKED_TARGET" ;;
            n) newDraft ;;
            c) cleanOutput ;;
            g) gitSync ;;
            q|"") printInfo "Goodbye!"; exit 0 ;;
            *) printError "Invalid option '$choice'" ;;
        esac
        pause
    done
}

usage() {
    cat << EOF
Usage: ./notes.sh [command]

  (no command)            interactive menu
  list                    show drafts in staging/
  build <name>            build staging/<name>.md to output/<name>.pdf
  build-all               build every draft in staging/
  promote <name> <folder> fresh build, then move to <folder>/ (${TARGETS[*]})
  clean                   empty output/
  help                    show this text
EOF
}

main() {
    local cmd="${1:-}"
    case "$cmd" in
        "")        interactive ;;
        list)      showDrafts ;;
        build)     [ -n "${2:-}" ] || { usage; exit 1; }; buildPreview "${2%.md}" ;;
        build-all) buildAll ;;
        promote)
            [ -n "${3:-}" ] || { usage; exit 1; }
            [[ " ${TARGETS[*]} " == *" $3 "* ]] || { printError "Folder must be one of: ${TARGETS[*]}"; exit 1; }
            promote "${2%.md}" "$3"
            ;;
        clean)     cleanOutput ;;
        help|-h|--help) usage ;;
        *)         printError "Unknown command '$cmd'"; usage; exit 1 ;;
    esac
}

main "$@"

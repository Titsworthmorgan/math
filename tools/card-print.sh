#!/usr/bin/env bash
#
# card-print.sh — put a 2-page card (any size, for example 3x9 or 3x5) on one letter sheet.
#
#   bash tools/card-print.sh diffeqcard
#
# Reads output/<name>.pdf (build it first with: bash notes.sh build <name>).
# Writes output/<name>-print.pdf: page 1 (front) and page 2 (back) side by side,
# with cut marks around the block and a dashed fold line between them.
# Print it at 100% scale, cut on the marks, and fold on the dashed line.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
name="${1:?usage: bash tools/card-print.sh <name>}"
src="$ROOT/output/$name.pdf"
out="$ROOT/output/$name-print.pdf"

if [ ! -f "$src" ]; then
    echo "output/$name.pdf does not exist. Run: bash notes.sh build $name" >&2
    exit 1
fi

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
cp "$src" "$work/card.pdf"

# Card size in inches, read from the first page of the PDF.
read -r w h < <(pdfinfo "$src" | awk '/^Page size:/ {printf "%.4f %.4f\n", $3/72, $5/72}')
# Center the two-panel block on the letter page.
left=$(awk -v w="$w" 'BEGIN {printf "%.4f", (8.5 - 2*w)/2}')
top=$(awk -v h="$h" 'BEGIN {printf "%.4f", (11 - h)/2}')
printf '\\def\\W{%sin}\\def\\H{%sin}\\def\\L{%sin}\\def\\T{%sin}\n' "$w" "$h" "$left" "$top" > "$work/size.tex"

cat > "$work/print.tex" <<'EOF'
\documentclass{article}
\usepackage[letterpaper,margin=0pt]{geometry}
\usepackage{graphicx}
\usepackage{tikz}
\pagestyle{empty}
\input{size.tex}
\begin{document}
\begin{tikzpicture}[remember picture,overlay]
  % the two-panel block, centered on the page
  \coordinate (TL) at ([xshift=\L,yshift=-\T]current page.north west);
  \node[anchor=north west,inner sep=0] at (TL) {\includegraphics[page=1,width=\W,height=\H]{card.pdf}};
  \node[anchor=north west,inner sep=0] at ([xshift=\W]TL) {\includegraphics[page=2,width=\W,height=\H]{card.pdf}};
  % fold line
  \draw[gray,dashed,line width=0.3pt] ([xshift=\W,yshift=0.25in]TL) -- ([xshift=\W,yshift=-\H-0.25in]TL);
  % cut marks at the four corners and at the fold
  \foreach \x in {0in,\W,2*\W}{
    \draw[black,line width=0.3pt] ([xshift=\x,yshift=0.1in]TL) -- ++(0,0.3in);
    \draw[black,line width=0.3pt] ([xshift=\x,yshift=-\H-0.1in]TL) -- ++(0,-0.3in);
  }
  \foreach \x/\d in {0in/-1,2*\W/1}{
    \draw[black,line width=0.3pt] ([xshift=\x+\d*0.1in]TL) -- ++(\d*0.3in,0);
    \draw[black,line width=0.3pt] ([xshift=\x+\d*0.1in,yshift=-\H]TL) -- ++(\d*0.3in,0);
  }
  \node[gray,font=\tiny,anchor=north] at ([xshift=\W,yshift=-\H-0.45in]TL) {cut on the marks --- fold on the dashed line --- print at 100\%};
\end{tikzpicture}
\end{document}
EOF

# Two passes: the overlay positions come from the .aux file of the first pass.
(cd "$work" && pdflatex -interaction=nonstopmode -halt-on-error print.tex >/dev/null \
    && pdflatex -interaction=nonstopmode -halt-on-error print.tex >/dev/null) \
    || { echo "pdflatex failed. See $work/print.log" >&2; trap - EXIT; exit 1; }
cp "$work/print.pdf" "$out"
echo "Wrote output/$name-print.pdf"

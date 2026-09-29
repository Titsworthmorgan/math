# math

Course notes and reference sheets in Markdown with raw LaTeX. Pandoc and `pdflatex` build them into dark-mode PDFs.

Drafts start in `staging/`. `notes.sh` builds previews into `output/`. When a draft is ready, the script builds it again from the source and promotes it into a course folder.

## Quick start

```bash
./notes.sh            # interactive menu
./notes.sh help       # commands you can run without the menu
```

Build command: `pandoc <note>.md -o <note>.pdf --pdf-engine=pdflatex -V block-headings`

## Layout

| Path | Contents |
| --- | --- |
| `notes.sh` | Interactive script to make drafts, build previews, promote notes, clean `output/`, and commit/push. |
| `staging/` | Working drafts (`.md`). |
| `output/` | Preview PDFs and build logs. Ignored by git. Safe to delete. |
| `math/` | Promoted math notes: algebra through vector calculus, discrete math, the process sheets, the index, and the MTH 254 guide. |
| `signals/` | Promoted signals and systems notes. |
| `electrical/` | Promoted electronics notes (DC transient circuits). |
| `templates/note.md` | Standard preamble (front matter and math syntax highlighting) for new drafts. |
| `instructions/` | How-to guides in Simplified Technical English. |

## Instructions

- [Setup](instructions/setup.md): tools and first run
- [Workflow](instructions/workflow.md): draft, preview, promote, clean, push
- [Writing notes](instructions/writing-notes.md): structure, macros, and cautions

## Remote

The upstream is a self-hosted Forgejo instance: `ssh://git@10.0.0.20/titsworthmorgan/math.git`.

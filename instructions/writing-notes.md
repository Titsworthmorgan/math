# Writing notes

## File names

- Use lowercase kebab-case. Examples: `vector-calc.md`, `dc-transients.md`.
- Do not put course numbers in the name.
- The PDF has the same name as the `.md` file.

## Preamble

- Start each note from `templates/note.md`. Select `n) New draft` in `notes.sh`.
- The preamble has two parts:
  1. YAML front matter. It sets the page, the font, the dark colors, and the macros.
  2. A raw LaTeX block. It colors the math (VS Code Dark Modern colors).
- Each note keeps its own copy of the preamble. Pandoc reads it from the note.
- The template uses 9pt text. The algebra notes use 10pt text and two more colors (`wordHi`, `ansHi`). Refer to `math/algebra.md`.

## Structure

- Write the body in raw LaTeX. Do not use Markdown headings.
- Use `\section{...}` for a topic. Use `\subsection{...}` for a subject in the topic.
- Put the content in `\begin{multicols}{2}` ... `\end{multicols}`.
- Put `\filbreak` before each `\subsection`. This keeps the heading and the start of the text on the same page.
- Use `\columnbreak` only when the automatic column break is bad.

## Macros

| Macro | Use |
| --- | --- |
| `\term{...}` | A new word or name. |
| `\keyres{...}` | A key result. |
| `\warn{...}` | A warning or a frequent mistake. |
| `\stepbox{LABEL}{...}` | One step of a procedure. |
| `\stepdown` | An arrow between two `\stepbox` steps. |
| `\ubox{...}`, `\dubox{...}` | The $u$ and $du$ parts of a substitution. |

## Cautions

- Write `^\circ` for degrees. Do not type the `°` character. `pdflatex` stops on it.
- Do not type other special Unicode characters. Use the LaTeX command.
- The build uses `-V block-headings`. The promoted notes were built with it. Do not remove it.
- The math coloring is off inside TikZ pictures. Do not change this.
- If you change the syntax-highlighting block, change `templates/note.md` too.

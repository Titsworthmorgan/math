# Setup

## Tools

You must have these tools:

| Tool | Use |
| --- | --- |
| Git Bash (Windows) or bash 4+ | Runs `notes.sh`. |
| Pandoc 3 | Changes Markdown to LaTeX. |
| A LaTeX distribution with `pdflatex` (MiKTeX or TeX Live) | Makes the PDF. |
| `pdfinfo` (optional) | Shows the page count after a build. |

## Procedure

1. Install Pandoc from <https://pandoc.org/installing.html>.
2. Install MiKTeX or TeX Live.
3. In MiKTeX, set "Install missing packages" to "Always". If you do not do this, the first build stops.
4. Open Git Bash.
5. Clone the repository:

   ```bash
   git clone ssh://git@10.0.0.20/titsworthmorgan/math.git
   cd math
   ```

6. Make sure that the tools are on the `PATH`:

   ```bash
   pandoc --version
   pdflatex --version
   ```

7. Start the script:

   ```bash
   ./notes.sh
   ```

## Line endings

- Git changes `.md` files to CRLF on Windows. This is correct. Pandoc reads CRLF files.
- `.gitattributes` keeps `.sh` files as LF. Do not change this. Bash cannot run a script with CRLF line endings.

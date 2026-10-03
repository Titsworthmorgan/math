# Pandoc LaTeX Bridge

This VS Code extension highlights the raw LaTeX in the notes as LaTeX. It colors two places:

- the `` ```{=latex} `` fence
- the `header-includes: |` block in the front matter

The extension uses the LaTeX grammar from LaTeX Workshop (`james-yu.latex-workshop`). LaTeX Workshop must be installed.

The extension also reads a TeX character code, such as `` `\( ``, as one character. Without this rule, LaTeX Workshop reads `\(` as the start of math, and the color of the rest of the file is wrong.

## Install

1. Go to this directory.
2. Package the extension:

   ```bash
   npx @vscode/vsce package --allow-missing-repository --skip-license
   ```

3. Install the `.vsix` file:

   ```bash
   code --install-extension pandoc-latex-bridge-0.1.0.vsix
   ```

4. Reload the VS Code window.

If you change a file in `syntaxes/`, increase `version` in `package.json`. Then do the install steps again.

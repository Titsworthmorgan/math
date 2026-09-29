# Workflow: draft, preview, promote

## Folders

| Folder | Contents | In git |
| --- | --- | --- |
| `staging/` | Drafts that you work on now. Only `.md` files. | Yes |
| `output/` | Preview PDFs and build logs. You can delete it at any time. | No |
| `math/` | Promoted math notes. Each note has a `.md` file and a `.pdf` file. | Yes |
| `signals/` | Promoted signals and systems notes. | Yes |
| `electrical/` | Promoted electronics notes (for example, DC transients). | Yes |
| `templates/` | `note.md`: the standard preamble for a new draft. | Yes |

Do not edit a promoted note in its folder. Put a draft in `staging/`, then promote it.

## Start the script

```bash
./notes.sh
```

The menu shows each draft in `staging/`. The columns are:

- **Preview**: `none` means that there is no preview. `built` means that the preview is current. `stale` means that the draft changed after the last build.
- **Promotes to**: `new` means that no promoted note has this name. `math/ (update)` means that promotion replaces `math/<name>.md`.

## Make a new draft

1. Select `n) New draft`.
2. Type a name in kebab-case, for example `dc-transients`. Do not type `.md`.
3. The script copies `templates/note.md` to `staging/<name>.md`. The file contains only the preamble.
4. Write the note below the preamble. Refer to [writing-notes.md](writing-notes.md).

You can also copy a `.md` file into `staging/` yourself. The menu shows it.

## Update a promoted note

1. Copy the note into `staging/`:

   ```bash
   cp math/calc1.md staging/
   ```

2. Edit `staging/calc1.md`.
3. Make a preview and promote it. The script finds the old folder. Push Enter to use that folder.

## Make a preview

1. Select `b) Build preview`. To build all drafts, select `a) Build all previews`.
2. Type the draft number or the draft name.
3. Wait. The first build can take one minute. MiKTeX can download packages during the build.
4. If the build is satisfactory, the script writes `output/<name>.pdf`.
5. If the build fails, the script shows the last lines of `output/logs/<name>.log`. Read the full log to find the error.
6. Select `o) Open preview PDF` to examine the PDF.
7. Do these steps again until the note is correct.

## Promote a note

1. Select `p) Promote`.
2. Type the draft number or the draft name.
3. Type the folder number. If the note already exists in a folder, push Enter to use that folder.
4. If the note already exists, the script asks for approval. Type `y` to replace it. Git keeps the old version.
5. The script builds the draft again. It does not use the old preview.
6. If the build is satisfactory, the script:
   - Copies the new PDF to `<folder>/<name>.pdf`.
   - Moves the draft to `<folder>/<name>.md`.
7. If the build fails, the script stops. The draft stays in `staging/`. The promoted note does not change.

## Delete the previews

1. Select `c) Clean output/`.
2. Type `y`. The script deletes all files in `output/`.

This does not change `staging/` or the promoted notes.

## Commit and push

1. Select `g) Git commit and push`.
2. Examine the list of changes.
3. Type `y` to commit all changes. Type a commit message.
4. Type `y` to push to Forgejo (`origin`).

You can also use `git` yourself. `output/` is in `.gitignore`.

## Commands without the menu

```bash
./notes.sh list                     # show the drafts
./notes.sh build dc-transients      # make output/dc-transients.pdf
./notes.sh build-all                # make a preview of each draft
./notes.sh promote dc-transients electrical
./notes.sh clean                    # asks for approval
```

## Add a new course folder

1. Make the folder, for example `mkdir controls`.
2. In `notes.sh`, add the folder name to `TARGETS`.
3. Add the folder to the tables in this file and in `README.md`.

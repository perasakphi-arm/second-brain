You are promoting a draft from inbox/ into the canonical wiki.
Read CLAUDE.md before doing anything else.

Input: $ARGUMENTS (draft filename, e.g. _draft-prompt-caching-20260416-1430.md)
If no argument, list all files in inbox/ for the user to choose.

Steps:

1. Read the draft file from inbox/.
2. Validate frontmatter:
   - id, title, type, tags, sources, aliases, created, updated are all present.
   - id follows the pattern <type>/<slug>.
   - sources lists at least one file.
   - Report any validation errors and STOP — do not promote an invalid draft.

3. Determine destination:
   - type: qa  → qa/<slug>-<YYYYMMDD>.md
   - all others → wiki/<type>/<slug>.md

4. Check if destination already exists (extending an existing note):
   - If YES: show a diff of what will change. Ask the user to confirm before
     merging. Merge by appending new sections; never delete existing content.
   - If NO: proceed to create.

5. Write the file to its destination.

6. Update meta/processed.json:
   - Compute SHA-256 of each file listed in sources.
   - Add entry: { "<hash>": { "file": "<source path>", "ingested": "<YYYY-MM-DD>", "wiki_id": "<id>" } }

7. Update meta/index.md:
   - Add or update the entry for this note under the correct type section.
   - Format: `- [[<id>]] — <title> (<tags joined by comma>)`

8. Delete the draft from inbox/.

9. Report: "Approved: <title> → <destination path>. processed.json updated."

Do NOT commit to Git. The user controls commits.

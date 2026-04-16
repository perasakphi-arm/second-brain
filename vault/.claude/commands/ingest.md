You are processing raw Markdown files for a personal second-brain vault.
Read CLAUDE.md before doing anything else to understand the invariants.

Input: $ARGUMENTS (file path). If empty, find all files under raw/ whose
SHA-256 hash is NOT already a key in meta/processed.json.

For each input file:

1. Read the file.
2. Read meta/index.md to know existing wiki titles and aliases.
3. Identify atomic concepts in the file. For each concept, decide:
   - Does it extend an existing wiki note? (match by id or alias)
   - Or is it a new concept requiring a new wiki note?
4. For each concept, write a draft to inbox/ with filename:
     _draft-<slug>-<YYYYMMDD-HHMM>.md
   Use the full frontmatter contract from CLAUDE.md.
   Set sources to include the raw file path.
5. Do NOT write to wiki/. Do NOT update meta/processed.json.
   (Those are /approve's responsibility.)
6. Report: list each draft created, the concept it covers, and whether it
   extends an existing note or creates a new one.

If the file is already in processed.json, skip it and say so.

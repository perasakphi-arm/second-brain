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
   Image handling: if the raw file contains Obsidian image embeds (![[filename.png]]),
   carry them into the draft at the relevant section(s) where they appeared in the
   source. Preserve the original ![[filename]] syntax exactly — do not alter paths.
   Only include images that are directly relevant to the concept being drafted
   (skip images that belong to a different concept in the same raw file).
5. Do NOT write to wiki/. Do NOT update meta/processed.json.
   (Those are /approve's responsibility.)
6. Report: list each draft created, the concept it covers, whether it
   extends an existing note or creates a new one, and how many images were
   carried over (if any).

If the file is already in processed.json, skip it and say so.

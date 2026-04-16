You are running a full organization pass over the vault.
Read CLAUDE.md before doing anything else.

Steps:

1. Read meta/processed.json to get the hash log.
2. Enumerate all .md files under raw/, inbox/, wiki/.
3. Skip any file whose SHA-256 hash appears in processed.json.
4. For new/changed content:
   a. Read meta/index.md to get existing wiki titles and aliases.
   b. Cluster new content by topic. For each cluster:
      - Does it map to an existing wiki note (by id or alias match)?
        YES → generate a diff/extension draft in inbox/
        NO  → generate a new draft in inbox/
   c. Write drafts to inbox/ with _draft- prefix and full frontmatter.
5. After drafting:
   - Run the link pass (same logic as /link) on all wiki/ notes.
   - Regenerate meta/index.md:
     Group all wiki notes by type. Format each entry:
       - [[<id>]] — <title> (<tags>)
   - Regenerate meta/alias-table.json:
     One pass over all wiki frontmatter → { "<alias>": "<id>", "<title>": "<id>" }
6. Report:
   - Files skipped (already processed): N
   - Drafts created: list them
   - meta/index.md regenerated: Y/N
   - meta/alias-table.json regenerated: Y/N
   - Orphan notes (zero inbound links): list them

IMPORTANT: Do NOT write to wiki/ directly. All new content goes to inbox/.
meta/ files are the only exception — they may be overwritten freely.

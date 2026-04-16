You are rewriting bare mentions of known concepts to Obsidian wiki-links.
Read CLAUDE.md before doing anything else.

Scope: $ARGUMENTS (glob pattern). Default: wiki/**/*.md

Steps:

1. Build the alias table:
   Read every .md file in wiki/ and extract title + aliases from frontmatter.
   Build a map: { "<alias or title (lowercase)>": "<id>" }
   Also load meta/alias-table.json if it exists.

2. For each file in scope:
   a. Parse the body, tracking whether you are inside:
      - A fenced code block (``` or ~~~) — SKIP all alias replacement inside.
      - An inline code span (`...`) — SKIP.
      - An existing [[wiki-link]] — SKIP (already linked).
   b. For each line outside code regions:
      Replace the FIRST occurrence of each known alias/title (case-insensitive)
      with [[<id>|<original text>]] if alias != id, or [[<id>]] if they match.
      Do not replace subsequent occurrences on the same line (avoid noise).
   c. Update links_out in the note's frontmatter to reflect all [[...]] targets
      now present in the body.

3. Write the updated files back to wiki/ (in-place edit).

4. Report:
   - Files modified: N
   - Total links added: N
   - Any aliases that appear in bodies but have no matching wiki note (candidate gaps)

Notes:
- Never create a [[link]] to a note that doesn't exist.
- Prefer the note's id as the link target, not the file path.

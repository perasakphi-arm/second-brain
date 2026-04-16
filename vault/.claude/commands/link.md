---
description: Rewrite bare concept mentions in wiki notes to Obsidian [[wiki-links]]
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
model: sonnet
argument-hint: [glob pattern, default: wiki/**/*.md]
---

# Link

## Purpose

Scan wiki/ notes for bare mentions of known concept titles and aliases, then
rewrite them as Obsidian [[wiki-links]]. Updates each note's links_out
frontmatter field to reflect the final link set. Safe to run repeatedly —
already-linked text is skipped.

## Variables

SCOPE: $ARGUMENTS
DEFAULT_SCOPE: wiki/**/*.md
WIKI_DIR: wiki/
ALIAS_FILE: meta/alias-table.json

## Instructions

- Read CLAUDE.md before doing anything else.
- If SCOPE is empty, default to `wiki/**/*.md`.
- Never create a [[link]] to a note that does not exist in wiki/.
- Prefer the note's id as the link target, not the file path.
- Skip replacement inside fenced code blocks (``` or ~~~) and inline code spans (`...`).
- Skip text that is already inside an existing [[wiki-link]].
- Replace only the FIRST occurrence of each alias/title per line to avoid noise.

## Workflow

1. Read CLAUDE.md to confirm invariants.
2. Build the alias map:
   a. Read every .md file in wiki/ and extract title + aliases from frontmatter.
   b. Build map: `{ "<alias or title (lowercase)>": "<id>" }`
   c. Merge with meta/alias-table.json if it exists (alias-table takes precedence for conflicts).
3. Resolve the file scope: use SCOPE argument or default to `wiki/**/*.md`.
4. For each file in scope:
   a. Parse body, tracking: fenced code blocks, inline code spans, existing [[...]] links.
   b. For each line outside code regions:
      - Replace FIRST occurrence of each known alias/title (case-insensitive) with `[[<id>|<original text>]]` if alias ≠ id, or `[[<id>]]` if they match.
   c. Update links_out in the note's frontmatter to list all [[...]] targets now present in the body.
5. Write updated files back to wiki/ in-place.

## Report

After completing the workflow, output:

```
Summary: Link pass complete — <N> file(s) modified, <N> link(s) added
Status: SUCCESS / FAILED

Details:
- Files scanned: <N>
- Files modified: <N>
- Total links added: <N>

Candidate gaps (alias found in body but no matching wiki note):
- "<alias>" — appears in <file>, no wiki note exists yet

Next Steps: Run /graph to refresh link-graph.json and see updated orphan report
```

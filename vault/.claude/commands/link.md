---
description: Add meaningful Obsidian [[wiki-links]] to wiki notes using conceptual reasoning, not just text matching
allowed-tools: Read, Write, Edit, Glob, Grep
model: sonnet
argument-hint: [glob pattern, default: wiki/**/*.md]
---

# Link

## Purpose

Wire wiki notes together with meaningful [[wiki-links]] by reasoning about
conceptual connections — not just scanning for exact alias text. A good link
helps a reader navigate to related knowledge at the moment they need it.

Run after /approve to connect new notes into the graph, or periodically to
repair orphan notes.

## Variables

SCOPE: $ARGUMENTS
DEFAULT_SCOPE: wiki/**/*.md
WIKI_DIR: wiki/
ALIAS_FILE: meta/alias-table.json

## Instructions

- Read CLAUDE.md before doing anything else.
- If SCOPE is empty, default to `wiki/**/*.md`.
- Never create a [[link]] to a note that does not exist in wiki/.
- Use the note's `id` as the link target. Use natural anchor text: `[[id|natural words]]`.
- Skip existing [[wiki-links]] and text inside fenced code blocks or inline code spans.
- A link is only worth adding if it genuinely helps the reader — it should answer "where do I go to learn more about THIS specific thing I just read?"
- Do not link every possible connection. Prefer 2–5 high-value links per note over a wall of links.
- If no meaningful inline location exists, append a `## See Also` section at the end of the note body.

## Workflow

1. Read CLAUDE.md to confirm invariants.

2. **Build the knowledge map:**
   a. Glob all `.md` files under `wiki/`.
   b. For each file, read the frontmatter: extract `id`, `title`, `aliases`, `tags`, and the opening paragraph of the body (first non-empty non-heading line after the frontmatter).
   c. Build a summary table: `{ id, title, aliases, tags, one-line-summary }` for every wiki note.

3. **Resolve scope:** use SCOPE argument or default to `wiki/**/*.md`.

4. **For each note in scope — Mechanical pass:**
   a. Read the full file.
   b. For each line outside code regions and existing links: replace the FIRST occurrence of any known alias/title (case-insensitive) with `[[<id>|<original text>]]`.
   c. Collect all links added in this pass.

5. **For each note in scope — Conceptual reasoning pass:**
   Read the note's full content. Then ask:
   > "Which OTHER wiki notes does this note's content genuinely depend on, build on, contrast with, or naturally lead a reader toward? For each candidate, identify the specific sentence or paragraph in THIS note where adding the link would be most useful."

   Evaluate each candidate connection using these questions:
   - Does this note USE a concept that lives in the other note (reader would want to jump there to understand it)?
   - Does this note APPLY or EXTEND a framework from the other note?
   - Does this note CONTRAST with or COMPARE to the other note?
   - Would a reader finishing this paragraph naturally want to read the other note next?

   If yes to any → add the link at the relevant sentence.
   If no natural inline location → collect for `## See Also`.

   Do NOT add a link just because two notes share a tag or topic. Only link when the connection is actionable for a reader.

6. **Merge and write:**
   a. Combine links from both passes. Deduplicate.
   b. For links with no inline location: append `## See Also` at the end of the body (skip if it already exists; add to existing one if it does).
   c. Update `links_out` in the note's frontmatter to list all `[[...]]` targets now in the body.
   d. Write the updated file back to wiki/ in-place.

7. Compile the report.

## Report

After completing the workflow, output:

```
Summary: Link pass complete — <N> file(s) modified, <N> link(s) added
Status: SUCCESS / FAILED

Details:
- Files scanned: <N>
- Files modified: <N>
- Mechanical links (exact alias match): <N>
- Conceptual links (reasoning-based): <N>

Per-file changes:
- <filename>: added [[id|anchor]], [[id|anchor]], ...

Orphan notes still unlinked (0 inbound after this pass):
- [[id]] — <title> — suggested connection: <one-line reason>

Next Steps: Run /graph to refresh link-graph.json
```

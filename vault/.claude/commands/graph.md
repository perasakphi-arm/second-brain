---
description: Generate link graph and orphan report for the vault
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
model: sonnet
argument-hint: [no argument needed]
---

# Graph

## Purpose

Walk all wiki/ and qa/ notes, build a directed edge list from [[wiki-links]],
compute inbound link counts, identify orphan notes, and write
meta/link-graph.json. Use this after /approve or /link to keep the graph
current and surface under-connected notes.

## Variables

WIKI_DIR: wiki/
QA_DIR: qa/
GRAPH_FILE: meta/link-graph.json
TOP_N: 5

## Scope

Only include **concept notes** — notes that represent reusable poker knowledge. Specifically, include only notes under:

- `wiki/frameworks/`
- `wiki/spots/`
- `wiki/hands/`
- `wiki/population/`
- `wiki/villains/`
- `wiki/concepts/`
- `qa/`

**Exclude** from graph (these are operational/organisational, not knowledge):
- `wiki/sessions/` — session to-do checklists
- `wiki/tasks/` — study task lists and progress trackers
- `meta/` — auto-generated indexes

## Instructions

- Read CLAUDE.md before doing anything else.
- Build edges from both frontmatter links_out AND any [[...]] found in note bodies not already in links_out.
- Only include edges where BOTH the source and target are in-scope concept notes. Drop any edge that points to or from a sessions/, tasks/, or meta/ note.
- An orphan is any in-scope note with ZERO inbound links from other in-scope notes.
- Write meta/link-graph.json — this file may be freely overwritten.

## Workflow

1. Read CLAUDE.md to confirm invariants.
2. Walk only the in-scope folders listed above.
3. For each file:
   a. Read the frontmatter links_out field.
   b. Scan the body for any [[...]] links not already in links_out.
   c. Record directed edges: `{ "from": "<id>", "to": "<id>" }` for each link target.
4. Build the full edge list and compute inbound link counts per note.
5. Identify orphans: notes with ZERO inbound links from other wiki/ notes.
6. Identify top-N most-linked notes by inbound count.
7. Write meta/link-graph.json:
   ```json
   { "edges": [ { "from": "<id>", "to": "<id>" }, ... ] }
   ```

## Report

After completing the workflow, output:

```
Summary: Link graph generated — <N> notes, <N> edges, <N> orphan(s)
Status: SUCCESS / FAILED

Details:
- Total wiki notes: <N>
- Total edges: <N>
- meta/link-graph.json: written

Orphan notes (0 inbound links):
- [[id]] — <title>
- ...

Most-linked notes (top 5 by inbound count):
- [[id]] — <N> inbound links
- ...

Next Steps: Run /discuss <orphan-topic> to build connections into isolated notes
```

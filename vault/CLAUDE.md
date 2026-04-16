# Second Brain — Vault Rules for Claude

This is a personal Obsidian vault managed as a knowledge base ("second brain").
Claude Code assists with ingestion, organization, linking, and Q&A.

---

## The One Invariant

**Never write directly to `wiki/` or `qa/`.**

All Claude-generated content goes to `inbox/` first. The user reviews it in
Obsidian and runs `/approve` to promote it. This gate is what keeps the wiki
trustworthy. There are no exceptions.

---

## Folder Purpose

| Folder | Purpose |
|--------|---------|
| `raw/` | User-dropped unstructured Markdown — never modified by Claude |
| `inbox/` | Claude drafts awaiting user review — filenames start with `_draft-` |
| `wiki/` | Canonical, linked knowledge base — write only via `/approve` |
| `qa/` | Approved Q&A pairs — write only via `/approve` after `/ask` |
| `meta/` | Auto-generated indexes, logs, hashes — Claude may update freely |
| `conversations/` | Optional chat transcripts — archival only, never linked as facts |
| `templates/` | Obsidian note templates — do not modify |

---

## Frontmatter Contract

Every wiki note and qa note MUST have this YAML front matter:

```yaml
---
id: <type>/<slug>          # e.g. concept/prompt-caching
title: <Human title>
type: concept              # concept | person | project | reference | qa | moc
tags: [tag1, tag2]
sources:                   # raw files or conversation transcripts this came from
  - raw/filename.md
aliases: [alias1, alias2]  # alternate names — used by alias-table for /ask retrieval
created: YYYY-MM-DD
updated: YYYY-MM-DD
links_out: []              # [[id]] links this note points to
---
```

Rules:
- `id` is the stable identifier — never change it after creation.
- `aliases` drive retrieval in `/ask` — add every common alternate spelling.
- `sources` must list every raw file or conversation that contributed content.
- `links_out` is maintained by `/link` — do not manually curate unless needed.

---

## Naming Rules

- Draft files: `inbox/_draft-<slug>-<YYYYMMDD-HHMM>.md`
- Wiki files: `wiki/<type>/<slug>.md`  (slug = lowercase, hyphens, no spaces)
- Q&A files: `qa/<slug>-<YYYYMMDD>.md`
- Conversation transcripts: `conversations/<YYYY-MM-DD>-<slug>.md`

---

## What Claude May Do Without `/approve`

- Read any file anywhere in the vault.
- Write to `inbox/` (drafts only, `_draft-` prefix required).
- Append to `meta/qa-log.md`.
- Overwrite `meta/index.md`, `meta/alias-table.json`, `meta/link-graph.json`, `meta/processed.json`.
- Write to `conversations/` (transcripts).

---

## What Requires `/approve`

- Any write to `wiki/`.
- Any write to `qa/`.
- Any update to an existing wiki note's body or frontmatter.

---

## Link Format

Use Obsidian `[[wiki-link]]` format. When the display text differs from the id,
use `[[id|display text]]`. Links must reference note `id` values, not file paths.

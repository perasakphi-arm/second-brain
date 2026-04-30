# Restructure Vault for Real-World Poker Use

**Date:** 2026-04-30
**Status:** Todo
**Build command:** `/EA-build specs/todo/restructure-vault-for-real-poker-use.md`

---

## Problem Statement

The vault currently has eight notes all living under `wiki/concepts/`, but they represent four very different content types. They were treated as concepts during the initial setup; in practice they are not all the same kind of artifact, and mixing them makes the vault hard to use at the table.

**Concrete pain points:**

1. The villain profile note (`villain-profile-fish-utg`) embeds a specific hand history inside it. Hand reviews need to accumulate over time without bloating the villain note.
2. There is no separation between **population reads** (patterns true of the pool generally) and **individual reads** (a specific villain's tendencies). At the table I need to look up either independently.
3. Spot-strategy notes (`3bp-oop-pfr-strategy`) are mixed in with framework notes (`poker-strategy-framework`). At the table I'm asking different questions of each — one is "how do I play this spot?" the other is "what is the philosophy?"
4. There is no place for session reviews, leak logs, or study queue items, all of which are needed for "real-life" poker support.

**User's stated goal:** *"restructure of obsidian … get data from hand review and make folder for population read … structure my vault to support about poker in real life."*

---

## Objectives

1. Re-organize `wiki/` into folders that match the **questions a player asks at the table or while studying**.
2. Extract hand-history content from villain profiles into a dedicated hand-review folder, so each hand becomes its own atomic note.
3. Create a `population/` folder for general pool reads (separate from individual villains).
4. Update `CLAUDE.md` (the One Invariant + folder rules) and any affected commands so future drafts route to the right folder.
5. Preserve all existing IDs (`id` field is a stable identifier per the frontmatter contract).

---

## Current State

```
vault/wiki/concepts/
├── poker-strategy-framework.md          [framework]
├── three-layers-poker-strategy.md       [framework]
├── poker-study-methodology.md           [framework]
├── mtt-vs-cash-poker-is-poker.md        [framework]
├── 3bp-oop-pfr-strategy.md              [spot strategy — Tony]
├── 3bp-bu-vs-sb-t-high-exploit.md       [spot strategy — exploit]
├── fish-exploit-data-srp-ip-pfr.md      [population read]
└── villain-profile-fish-utg.md          [individual villain + 1 embedded hand history]
```

`raw/` contains: `Hand Review vs fish.md`, `Fish Data.md`, plus 5 unprocessed strategy notes.

`inbox/` is empty (after the recent approval batch).

---

## Proposed New Structure

```
vault/wiki/
├── frameworks/        # Coaching frameworks & general theory (Wakko, Tony philosophy)
│   ├── poker-strategy-framework.md
│   ├── three-layers-poker-strategy.md
│   ├── poker-study-methodology.md
│   └── mtt-vs-cash-poker-is-poker.md
│
├── spots/             # Spot-specific strategy (board × position × pot type)
│   ├── 3bp-oop-pfr-strategy.md
│   └── 3bp-bu-vs-sb-t-high-exploit.md
│
├── population/        # Pool-wide reads (true of "the average opponent")
│   └── fish-exploit-data-srp-ip-pfr.md
│
├── villains/          # Individual villain profiles (one note per known opponent)
│   └── villain-profile-fish-utg.md  # cleaned: hand-history removed
│
├── hands/             # Atomic hand-review notes (one note per hand)
│   └── 20260430-fish-utg-3bp-65s-vs-t9o.md   # extracted from villain profile
│
└── concepts/          # Reserved for future general-poker concepts not in the above
```

> **Note on `concepts/`:** kept as a fallback bucket. The frontmatter `type` field already supports `concept | person | project | reference | qa | moc`. We are mapping `type=concept` → folder by *role*, not by literal `type` value, until a future schema update.

### Folder → Question Mapping

| Folder | The question it answers |
|---|---|
| `frameworks/` | *"What is the philosophy I'm playing under?"* |
| `spots/` | *"What's the baseline plan for THIS spot?"* |
| `population/` | *"What does the pool generally do here?"* |
| `villains/` | *"What does THIS specific player do?"* |
| `hands/` | *"How did this exact hand play out and what did I learn?"* |

---

## Technical Approach

### Phase 1 — Create Folders & Move Existing Files

Create the new folders inside `wiki/` and `git mv` (or move + git add) each existing note to its new home. The `id` field stays unchanged (CLAUDE.md says `id` is stable), but the **physical path** changes.

| Current path | New path |
|---|---|
| `wiki/concepts/poker-strategy-framework.md` | `wiki/frameworks/poker-strategy-framework.md` |
| `wiki/concepts/three-layers-poker-strategy.md` | `wiki/frameworks/three-layers-poker-strategy.md` |
| `wiki/concepts/poker-study-methodology.md` | `wiki/frameworks/poker-study-methodology.md` |
| `wiki/concepts/mtt-vs-cash-poker-is-poker.md` | `wiki/frameworks/mtt-vs-cash-poker-is-poker.md` |
| `wiki/concepts/3bp-oop-pfr-strategy.md` | `wiki/spots/3bp-oop-pfr-strategy.md` |
| `wiki/concepts/3bp-bu-vs-sb-t-high-exploit.md` | `wiki/spots/3bp-bu-vs-sb-t-high-exploit.md` |
| `wiki/concepts/fish-exploit-data-srp-ip-pfr.md` | `wiki/population/fish-exploit-data-srp-ip-pfr.md` |
| `wiki/concepts/villain-profile-fish-utg.md` | `wiki/villains/villain-profile-fish-utg.md` (then edited — see Phase 2) |

> Obsidian links of the form `[[concept/three-layers-poker-strategy]]` reference the **id**, not the path, so existing links continue to resolve regardless of which folder the file lives in. No link rewrites are needed.

### Phase 2 — Extract Hand History from Villain Profile

`villain-profile-fish-utg.md` currently contains a `## Hand History` section with one specific hand. Extract this into a new atomic note:

**New file:** `wiki/hands/20260430-fish-utg-3bp-65s-vs-t9o.md`

```yaml
---
id: hand/20260430-fish-utg-3bp-65s-vs-t9o
title: 3BP BU 65s vs Fish UTG T9o (Board 8s6s8c-9s-Js)
type: concept       # use 'concept' until 'hand' type is added to schema
tags: [poker, hand-review, 3bp, bu, fish, leak-flush-blocker, leak-river-jam]
sources:
  - raw/Hand Review vs fish.md
aliases: [fish utg jam hand 20260430, 65s vs t9o flush board]
created: 2026-04-30
updated: 2026-04-30
links_out:
  - concept/villain-profile-fish-utg
  - concept/3bp-oop-pfr-strategy
  - concept/three-layers-poker-strategy
---
```

Body: full hand walkthrough + the 6 leaks identified in the review session + the corrective line.

**Then edit `villain-profile-fish-utg.md`:**
- Remove the `## Hand History` section in full
- Replace with a `## Linked Hand Reviews` section that lists `[[hand/20260430-fish-utg-3bp-65s-vs-t9o]]` and any future hands

This keeps the villain profile a stable summary of tendencies (cheap to scan at the table) while hand details accumulate independently in `hands/`.

### Phase 3 — Update `CLAUDE.md`

Edit the "Folder Purpose" table and add the new folders. Update the "What Claude May Do" + "What Requires `/approve`" sections to reflect new write targets.

```markdown
| Folder | Purpose |
|--------|---------|
| `raw/` | User-dropped unstructured Markdown — never modified by Claude |
| `inbox/` | Claude drafts awaiting user review — filenames start with `_draft-` |
| `wiki/frameworks/` | Coaching philosophy / general poker theory |
| `wiki/spots/` | Spot-specific strategy (e.g. 3BP OOP PFR) |
| `wiki/population/` | Pool-wide reads (population tendencies) |
| `wiki/villains/` | Individual villain profiles |
| `wiki/hands/` | Atomic hand-review notes |
| `wiki/concepts/` | Reserved for future general-poker concepts |
| `qa/` | Approved Q&A pairs |
| `meta/` | Auto-generated indexes, logs, hashes |
| `conversations/` | Optional chat transcripts |
| `templates/` | Obsidian note templates |
```

Add a new section "Folder Routing for Drafts" to guide future `/ingest` and similar commands on where to place draft frontmatter `type:` values.

### Phase 4 — Update `meta/index.md`

Re-section the index to match the new folders:

```markdown
## Frameworks
- [[concept/poker-strategy-framework]] — ...
- [[concept/three-layers-poker-strategy]] — ...
- [[concept/poker-study-methodology]] — ...
- [[concept/mtt-vs-cash-poker-is-poker]] — ...

## Spots
- [[concept/3bp-oop-pfr-strategy]] — ...
- [[concept/3bp-bu-vs-sb-t-high-exploit]] — ...

## Population Reads
- [[concept/fish-exploit-data-srp-ip-pfr]] — ...

## Villains
- [[concept/villain-profile-fish-utg]] — ...

## Hands
- [[hand/20260430-fish-utg-3bp-65s-vs-t9o]] — ...
```

### Phase 5 — Update Affected Commands

Commands that hardcode `wiki/concepts/` paths must be updated:

| Command | What to change |
|---|---|
| `.claude/commands/hand-review.md` | Update `TONY_WIKI`, `WAKKO_STRATEGY_WIKI`, `WAKKO_LAYERS_WIKI` paths from `wiki/concepts/` → `wiki/frameworks/` (Wakko) and `wiki/spots/` (Tony). Add output instruction: drafts go to `inbox/` with `type` reflecting target folder. |
| `.claude/commands/approve.md` | Update destination logic: route by `type` field OR by tag patterns. Simple v1: branch on tags — `villain` tag → `wiki/villains/`, `population` tag → `wiki/population/`, `hand-review` tag → `wiki/hands/`, etc. Default to `wiki/concepts/`. |
| `.claude/commands/ask.md` | Update glob patterns to search across all new wiki subfolders (e.g. `wiki/**/*.md`). |
| `.claude/commands/link.md` | Same — search all of `wiki/**/*.md` for link targets. |
| `.claude/commands/organize.md` | Same. |
| `.claude/commands/graph.md` | Same. |

Search-pattern fix is one-liner per command (`wiki/concepts/` → `wiki/`).

### Phase 6 — Add Templates for the New Note Types

Create three templates under `templates/` for use in Obsidian:

1. `templates/villain-profile.md` — frontmatter + sections (Identity, Preflop Tendencies, Postflop Tendencies, Linked Hands, Exploit Framework)
2. `templates/hand-review.md` — frontmatter + sections (Situation, Street-by-Street, Leaks, Correct Line, Coach Reads, Linked Concepts)
3. `templates/population-read.md` — frontmatter + sections (Context, Reads by Street, Exploit Adjustments)

These let `/ingest` and the user produce consistent notes going forward.

---

## Implementation Steps (Detailed)

### Step 1 — Create new folder structure
```bash
cd vault
mkdir -p wiki/frameworks wiki/spots wiki/population wiki/villains wiki/hands
```

### Step 2 — Move existing files
Use `git mv` so history is preserved:
```bash
git mv wiki/concepts/poker-strategy-framework.md wiki/frameworks/
git mv wiki/concepts/three-layers-poker-strategy.md wiki/frameworks/
git mv wiki/concepts/poker-study-methodology.md wiki/frameworks/
git mv wiki/concepts/mtt-vs-cash-poker-is-poker.md wiki/frameworks/
git mv wiki/concepts/3bp-oop-pfr-strategy.md wiki/spots/
git mv wiki/concepts/3bp-bu-vs-sb-t-high-exploit.md wiki/spots/
git mv wiki/concepts/fish-exploit-data-srp-ip-pfr.md wiki/population/
git mv wiki/concepts/villain-profile-fish-utg.md wiki/villains/
```

### Step 3 — Extract hand to its own note
- Read `wiki/villains/villain-profile-fish-utg.md`
- Copy the `## Hand History` section content to a new file `wiki/hands/20260430-fish-utg-3bp-65s-vs-t9o.md` with proper frontmatter
- Add the leak analysis from this session's `/hand-review` output to the new note (so the hand note is self-contained and useful for future study)
- Edit the villain profile: delete the `## Hand History` section and add `## Linked Hand Reviews` with a wiki-link to the new hand note

### Step 4 — Update CLAUDE.md
- Edit the "Folder Purpose" table
- Add a new "Folder Routing for Drafts" section explaining how `type` and tags map to folders

### Step 5 — Update meta/index.md
Regenerate manually with the new section headings (Frameworks / Spots / Population / Villains / Hands)

### Step 6 — Update commands
Edit each affected command file to swap `wiki/concepts/` → the appropriate new path. For `/approve`, add tag-based routing.

### Step 7 — Add templates
Create three new template files under `templates/` with proper frontmatter and section scaffolds.

### Step 8 — Sanity verification
```bash
# Confirm no broken paths
grep -r "wiki/concepts/" .claude/ CLAUDE.md meta/

# Confirm all wiki notes still parse
ls wiki/frameworks wiki/spots wiki/population wiki/villains wiki/hands

# Confirm Obsidian links resolve (open vault and check graph view)
```

---

## Edge Cases & Considerations

1. **Obsidian links by `id`, not path** — links like `[[concept/three-layers-poker-strategy]]` continue to resolve because Obsidian indexes by note name / id. Verified by reading CLAUDE.md "Link Format" rule.

2. **`id` field stays the same** — CLAUDE.md explicitly says `id` is stable. We are NOT changing any `id` values, only the folder location. This means a note with `id: concept/poker-strategy-framework` in `wiki/frameworks/` is still valid.

3. **Future:** consider extending the `type` enum (currently `concept | person | project | reference | qa | moc`) to include `villain`, `hand`, `population`, etc. That is a CLAUDE.md schema change, not done in this restructure — keeping this plan low-risk by using `type: concept` for now and folder-routing by tag/role.

4. **Template files in `templates/`** — CLAUDE.md says templates are off-limits to modify. But it does not forbid *adding* new templates. Confirm with user that adding new templates is acceptable.

5. **`processed.json` does not need updates** — it stores `wiki_id`, not paths.

6. **Existing `inbox/` drafts** — none currently. Future drafts will be routed by Phase 5 command updates.

---

## Testing Strategy

After implementation:

1. **Static checks**
   - All 8 existing wiki notes have moved to new folders (no orphans in `wiki/concepts/`)
   - `meta/index.md` lists all notes under correct headings
   - Grep for `wiki/concepts/` in `.claude/`, `CLAUDE.md`, and `meta/` returns zero hits (or only the explicitly retained `concepts/` for future use)

2. **Obsidian visual check**
   - Open the vault in Obsidian
   - Confirm graph view still shows all links between notes
   - Confirm clicking `[[concept/poker-strategy-framework]]` still navigates correctly

3. **Command flow**
   - Run `/ask "what is L2 strategy?"` — should still find `three-layers-poker-strategy` regardless of folder
   - Run `/hand-review` — confirm it reads the Tony/Wakko notes from their new paths
   - Drop a fake `raw/` note tagged as a villain profile, run `/ingest`, confirm draft appears, run `/approve`, confirm it lands in `wiki/villains/`

4. **Hand-extraction integrity**
   - Open the new `hands/20260430-fish-utg-3bp-65s-vs-t9o.md` note — every detail from the original embedded hand history is present, plus the 6 leaks from the review session
   - Open the cleaned `villains/villain-profile-fish-utg.md` — no hand history embedded, only a `[[link]]` to the hand note

---

## Success Criteria

- [ ] Five new folders exist under `wiki/`: `frameworks/`, `spots/`, `population/`, `villains/`, `hands/`
- [ ] All 8 existing wiki notes moved to the correct new folder
- [ ] One new hand-review note created in `wiki/hands/` containing the Fish UTG hand
- [ ] `villain-profile-fish-utg.md` no longer contains an embedded hand history; instead it links to the hand note
- [ ] `CLAUDE.md` updated with new folder table and routing rules
- [ ] `meta/index.md` regenerated with new section structure
- [ ] All affected commands (`hand-review`, `approve`, `ask`, `link`, `organize`, `graph`) updated to use new paths
- [ ] Three new templates added under `templates/` (villain, hand, population)
- [ ] Obsidian links continue to resolve (manual visual check passes)
- [ ] No `wiki/concepts/` references remain in commands or CLAUDE.md (except as the explicitly retained fallback bucket)

---

## Estimated Effort

- **Phase 1 (folders + moves):** ~5 min — mechanical
- **Phase 2 (extract hand):** ~15 min — careful copy/edit
- **Phase 3 (CLAUDE.md):** ~10 min
- **Phase 4 (index.md):** ~5 min
- **Phase 5 (command updates):** ~20 min — touches 6 command files
- **Phase 6 (templates):** ~15 min — three new templates

**Total:** ~70 min of focused work. No external blockers.

---

## Out of Scope (future plans)

- Adding `type: villain | hand | population` to the frontmatter schema
- A `/session-review` command for end-of-session leak logging
- A `/study-queue` command to track what to review next
- A `/villain-update` command to append new reads to an existing villain profile
- Moving `qa/` to be sub-organized by topic

These are good follow-ups but should be separate plans.

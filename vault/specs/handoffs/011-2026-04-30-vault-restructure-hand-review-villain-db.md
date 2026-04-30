# Session Handoff - 2026-04-30

## Context

Full session focused on three things: (1) creating a `/hand-review` command and running it on the first real hand with the fish villain, (2) approving villain/fish data into the wiki, and (3) restructuring the vault into role-based subfolders to support poker study in real life.

---

## Completed

- **Created `/hand-review` command** (`.claude/commands/hand-review.md`) — scans `raw/` for notes with "review" keyword, loads Tony + Wakko wiki knowledge, produces dual coaching analysis per hand
- **Ran `/hand-review` on `raw/Hand Review vs fish.md`** — produced full Tony + Wakko breakdown with 6 documented leaks (false blocker claim, T9o misclassification, turn range underestimate, river jam error, notation error, L3-vs-fish mismatch)
- **User provided actual hand cards** (Hero 6h5h, Fish Ts9h, Board 8s6s8c→9s→Js) — updated analysis with precise street-by-street and confirmed fish wins with J-high flush
- **Approved two inbox drafts** into wiki:
  - `wiki/population/fish-exploit-data-srp-ip-pfr.md`
  - `wiki/villains/villain-profile-fish-utg.md`
- **Vault restructure** (`specs/done/restructure-vault-for-real-poker-use.md`):
  - `wiki/` reorganized into `frameworks/`, `spots/`, `population/`, `villains/`, `hands/`, `concepts/`
  - All 8 existing wiki notes moved to correct folders
  - Hand history extracted from villain profile → new atomic note `wiki/hands/20260430-fish-utg-3bp-65s-vs-t9o.md`
  - `CLAUDE.md` updated: new folder table + tag-based draft routing rules
  - `/approve` command updated with tag-based folder routing
  - `/hand-review` command paths updated to new wiki locations
  - Three new templates: `templates/villain-profile.md`, `templates/hand-review.md`, `templates/population-read.md`
  - `meta/index.md` regenerated with 5 new sections
- **EA-review passed** (APPROVED_WITH_NOTES — two skippable tech-debt items)
- **Committed and pushed** — commit `cd222f7` on `master` at `github.com/perasakphi-arm/second-brain`

---

## In Progress

Nothing actively in-progress. Session ended cleanly after push.

---

## Next Steps

1. **Extend the frontmatter type enum** — CLAUDE.md currently only lists `concept | person | project | reference | qa | moc`. Add `hand | villain | population` so hand notes can use `id: hand/...` correctly. Then update existing notes' ids. (Tracked as tech-debt in EA-review.)
2. **Add more hand reviews** — drop new raw hand notes into `raw/`, run `/hand-review`. The command now auto-loads the villain profile if it matches, giving richer reads.
3. **Ingest remaining raw notes** — `raw/Poker Strategy.md`, `raw/Poker Study.md`, `raw/MTT vs Cash are The Same.md`, etc. are committed but not yet processed. Run `/ingest` or `/organize` to draft wiki notes.
4. **Build out population reads** — `wiki/population/fish-exploit-data-srp-ip-pfr.md` exists; consider creating population read notes for other spots (3BP IP, SRP OOP, etc.) using the new `templates/population-read.md`.
5. **Study queue commands** — the EA-review noted `/session-review` and `/study-queue` as out-of-scope future items. Good next `/EA-plan` target if needed.
6. **Add more villain profiles** — as new opponents are identified, use `templates/villain-profile.md` to create `inbox/` drafts, then `/approve` into `wiki/villains/`.

---

## Key Files

- `wiki/hands/20260430-fish-utg-3bp-65s-vs-t9o.md` — atomic hand note, 6 leaks documented, fish UTG hand
- `wiki/villains/villain-profile-fish-utg.md` — fish UTG villain profile with full 3-bet calling range table; links to hand note
- `wiki/population/fish-exploit-data-srp-ip-pfr.md` — population reads for fish in SRP IP PFR
- `wiki/frameworks/` — 4 Wakko/Tony coaching theory notes
- `wiki/spots/` — 2 spot-specific strategy notes (3BP OOP PFR Tony, 3BP BU vs SB exploit)
- `.claude/commands/hand-review.md` — the new hand review command
- `.claude/commands/approve.md` — updated with tag-based routing to new folders
- `CLAUDE.md` — updated folder table + draft routing rules
- `meta/index.md` — regenerated with Frameworks / Spots / Population / Villains / Hands sections
- `templates/villain-profile.md`, `templates/hand-review.md`, `templates/population-read.md` — new templates
- `specs/done/restructure-vault-for-real-poker-use.md` — completed restructure spec

---

## Blockers / Notes

- `.claude/settings.local.json` was intentionally NOT committed — contains local MCP (playwright) config, machine-specific
- `../specs/handoffs/004-2026-04-17-session.md` (outside the vault directory) was also not committed — outside repo scope
- Two tech-debt items from EA-review:
  1. `hand/` id prefix not in CLAUDE.md type enum — skippable, fix when adding villain/population types
  2. Tag-based routing in `/approve` means id prefix and physical folder path are now decoupled — skippable until type enum extended
- The fish villain's 3-bet calling range is now in the wiki with full combo-frequency data — reference it whenever playing vs this player

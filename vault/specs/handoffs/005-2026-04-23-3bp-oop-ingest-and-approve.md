# Session Handoff - 2026-04-23

## Context
Ingested new raw poker coaching notes, approved the 3BP OOP PFR note into wiki/, ran a link pass and graph refresh. The vault's active wiki now has 4 concept notes from Wakko and Tony sessions.

## Completed
- `/ingest` — processed `raw/3BP OOP PFR.md` (Tony, coach) and `raw/MTT vs Cash are The Same.md` (Wakko, coach); created 2 drafts in inbox/
- `/approve _draft-3bp-oop-pfr-strategy-20260423-1201.md` — promoted to `wiki/concept/3bp-oop-pfr-strategy.md`; updated `meta/processed.json` and `meta/index.md`
- `/link` — added `[[concept/3bp-oop-pfr-strategy|3BP OOP PFR]]` in `wiki/concepts/poker-study-methodology.md` (line 68 of the Priority 1 table); corrected `links_out` on both files
- `/graph` — rebuilt `meta/link-graph.json` from scratch (prior graph was stale from session 1); 4 notes, 2 edges, 2 orphans
- Deleted MTT vs Cash draft (`inbox/_draft-mtt-vs-cash-unified-theory-20260423-1200.md`) — user confirmed raw file is not finished yet

## In Progress
- `raw/MTT vs Cash are The Same.md` — raw notes incomplete; draft was deleted; will re-ingest when Wakko session is complete

## Next Steps
1. When `raw/MTT vs Cash are The Same.md` is updated/completed, run `/ingest` to create a new draft
2. Consider creating standalone wiki notes for concepts referenced but not yet defined:
   - `concept/blocker-and-anti-blocker` — heavily referenced across multiple notes; had a wiki_id in processed.json from session 1 but file doesn't exist in wiki/
   - `concept/spr` (Stack-to-Pot Ratio) — central to 3BP and MTT/Cash decisions
   - `concept/making-outlive` — specific concept from Tony coaching
   - `concept/bdfd` (backdoor flush draw) — used throughout 3BP note without definition
3. Run `/link` again after any new notes are approved, to cross-link new concepts
4. Run `/approve _draft-mtt-vs-cash-unified-theory-*` once raw/MTT vs Cash is finished and re-ingested

## Key Files
- `wiki/concept/3bp-oop-pfr-strategy.md` — new note approved this session; Tony's 3BP OOP PFR coaching with 29 hand examples and 5 board types
- `wiki/concepts/poker-study-methodology.md` — updated with link to 3bp-oop-pfr-strategy
- `meta/processed.json` — now has 9 entries; `raw/3BP OOP PFR.md` hash: `9aa332b1142771d5762b306b2f1f3f8bc1e68fb541bdf87dcc93f938cafff7a5`
- `meta/link-graph.json` — rebuilt 2026-04-23; 4 nodes, 2 edges
- `meta/index.md` — has 3 concepts from wiki/concepts/ and 1 from wiki/concept/

## Blockers / Notes
- The vault has two concept subdirectories: `wiki/concepts/` (older Wakko notes) and `wiki/concept/` (new Tony note). These should probably be unified to `wiki/concepts/` at some point — but no action taken yet to avoid disrupting existing links.
- `concept/blocker-and-anti-blocker` appears in `meta/processed.json` (from session 1, wiki_id set) but the actual file was never written to wiki/ in the current vault state. Raw files `4.4 Donking.md`, `4.5 Merge.md`, `4.6 Blocker and Equity.md`, `4.7 Auto fold and Air.md`, `BB Defend Part 1..md` are all marked processed but their wiki notes don't exist — these may have been lost in the vault reset (session 4 handoff).
- Orphan notes to connect: `concept/poker-study-methodology` and `concept/three-layers-poker-strategy` have 0 inbound links.

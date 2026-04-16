# Session Handoff - 2026-04-16

## Context
Building a detailed implementation plan for an Obsidian + Claude "second brain" (LLM Wiki) system. The plan covers dual ingestion paths, wiki organization, knowledge linking, and wiki-grounded Q&A where Claude uses stored notes to answer questions before falling back to training knowledge.

## Completed
- Created `specs/todo/obsidian-claude-second-brain.md` — full 7-phase implementation plan
- Defined vault folder layout: `raw/`, `inbox/`, `wiki/`, `meta/`, `conversations/`, `qa/`
- Defined YAML frontmatter contract (id, type, tags, sources, aliases, links_out)
- Designed three ingestion paths:
  - Path A: manual drop to `raw/` → `/ingest` → `inbox/` → `/approve` → `wiki/`
  - Path B: conversational via `/discuss` → `/approve` → `wiki/`
  - Path C: wiki-grounded Q&A via `/ask` → optional `/approve` → `qa/`
- Designed seven slash commands: `/ingest`, `/ask`, `/discuss`, `/approve`, `/organize`, `/link`, `/graph`
- Wrote full `/ask` prompt template with RETRIEVE → REASON → CITE → LOG → GAP CHECK flow
- Defined alias-table retrieval strategy (no vector DB, tag + alias keyword matching)
- Added `meta/qa-log.md` and `meta/alias-table.json` to vault layout
- Added 3 new edge cases for the Q&A path to the risk table

## In Progress
- Edge case table update was interrupted mid-edit (user stopped the tool call)
- The risk table in `## 4. Edge Cases & Risks` may be missing the three new Q&A-related rows:
  - `/ask` citing non-existent note IDs
  - `/ask` sounding confident but wrong
  - Wiki knowledge being stale

## Next Steps
1. **Verify/complete the risk table** — open `specs/todo/obsidian-claude-second-brain.md`, check section 4, add the three Q&A risk rows if missing
2. **Update Success Criteria (§6)** — add criteria for the `/ask` command:
   - `/ask` returns a cited answer using wiki notes when relevant notes exist
   - `/ask` shows "Gaps" section when no wiki notes match
   - Approved Q&A appears in `qa/` and is indexed in `meta/index.md`
3. **Resolve Open Questions (§7)** — add one new open question: "Should `/ask` answers be auto-logged to `meta/qa-log.md` without user action, or require explicit opt-in?"
4. **Run `/build specs/todo/obsidian-claude-second-brain.md`** to begin implementation when ready

## Key Files
- `specs/todo/obsidian-claude-second-brain.md` — the main plan (7 phases, ~300 lines)
- No implementation files created yet — this session was planning only

## Blockers / Notes
- The edge case table edit was rejected by the user mid-session; reason unknown — check before re-attempting
- Open question to resolve before Phase 3: should `/approve` be gated by a frontmatter linter?
- Open question to resolve before Phase 6: privacy of `conversations/` in Git remotes
- The plan intentionally defers vector embeddings/RAG to v2 — v1 uses alias+tag keyword retrieval only
- Vault is intended to be local-first; Claude Code CLI runs on user's machine against a local Obsidian vault

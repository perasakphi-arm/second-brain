---
title: Obsidian + Claude Second Brain (LLM Wiki)
status: todo
created: 2026-04-16
owner: perasak.phi@gmail.com
---

# Obsidian + Claude Second Brain (LLM Wiki)

## 1. Problem Statement

Build a personal "second brain" that stores knowledge in an Obsidian vault and uses Claude as the reasoning/organization layer. Two ingestion paths must be supported:

1. **Manual path** – User drops raw Markdown (notes, clippings, transcripts, PDFs converted to MD) into the vault.
2. **Conversational path** – User chats with Claude (via Claude Code CLI). When the user *approves* Claude's analysis, the approved output is persisted back into the vault as a new/updated note.

Claude must periodically (or on demand) read every Markdown file, cluster the content into topical groups, place cleaned notes in a `wiki/` folder, and weave them together with Obsidian `[[wiki-links]]` and a generated index so the vault becomes a navigable knowledge graph rather than a flat pile of notes.

A third core capability is **wiki-grounded Q&A**: when the user asks Claude any question, Claude retrieves the most relevant wiki notes first, synthesizes an answer grounded in stored knowledge, and cites which notes informed the answer. The answer can then be approved and saved back to the wiki — closing the feedback loop.

### Objectives

- **Low-friction capture** – raw notes never require formatting discipline from the user.
- **Structured output** – `wiki/` folder is opinionated: one concept per note, consistent frontmatter, bidirectional links.
- **Idempotent organization** – re-running the "organize" command must not create duplicates or break existing links.
- **Provenance** – every wiki note records which raw file(s) / chat(s) / Q&A session it was derived from.
- **Wiki-grounded answers** – Claude answers questions using stored knowledge first, then its training knowledge, always citing which wiki notes were used.
- **Local-first** – everything lives in a Git-tracked Obsidian vault; Claude runs via Claude Code on the user's machine.

### Non-goals (v1)

- Real-time sync / mobile editing integration.
- Vector embeddings / RAG (v1 relies on Claude reading files directly via tag + alias index lookup).
- Web UI beyond Obsidian itself.

---

## 2. Technical Approach

### 2.1 Vault layout

```
vault/
├── .claude/                 # Claude Code config, slash commands, hooks
│   ├── commands/
│   │   ├── ingest.md
│   │   ├── organize.md
│   │   ├── link.md
│   │   ├── discuss.md
│   │   ├── ask.md           # NEW: wiki-grounded Q&A
│   │   └── approve.md
│   └── settings.json
├── raw/                     # Path A: user-dropped unstructured MD
│   └── 2026-04-16-meeting-notes.md
├── inbox/                   # Claude-drafted notes awaiting approval
│   └── _draft-<topic>-<ts>.md
├── wiki/                    # Canonical, linked knowledge base
│   ├── concepts/
│   ├── people/
│   ├── projects/
│   └── references/
├── meta/
│   ├── index.md             # Auto-generated MOC (map of content)
│   ├── processed.json       # Hash log of raw files already organized
│   ├── link-graph.json      # Cached edges for diagnostics
│   └── qa-log.md            # Append-only log of questions + wiki citations
├── conversations/           # Optional transcripts from the discuss flow
└── qa/                      # Approved Q&A pairs saved as wiki-referenceable notes
```

### 2.2 Frontmatter contract

Every wiki note carries YAML frontmatter so Claude can reason structurally:

```yaml
---
id: concept/prompt-caching
title: Prompt Caching
type: concept            # concept | person | project | reference | moc
tags: [claude, api, performance]
sources:
  - raw/2026-04-10-anthropic-docs.md
  - conversations/2026-04-12-caching-chat.md
aliases: [prompt cache, cache breakpoints]
created: 2026-04-10
updated: 2026-04-16
links_out: [[ephemeral-cache-ttl]], [[tool-use]]
---
```

Why frontmatter matters: Claude uses `id`, `sources`, and `updated` to decide whether a new raw note should extend an existing wiki note or create a new one.

### 2.3 Ingestion paths

**Path A – Manual drop**
1. User saves any MD file into `raw/`.
2. User runs `/ingest` (or a file hook — see 2.6).
3. Claude reads the file, extracts atomic concepts, and writes drafts to `inbox/` — never directly to `wiki/`.
4. User reviews the draft in Obsidian, runs `/approve <draft>` (or moves the file manually). `/approve` moves to `wiki/<type>/` and updates `meta/processed.json`.

**Path B – Conversational**
1. User runs `/discuss <topic>` which loads relevant wiki notes (via `[[link]]` expansion) into Claude's context.
2. Normal chat ensues. When the user says something like "yes, save that" or runs `/approve`, Claude writes the approved section to `inbox/` (same approval gate as Path A).
3. Transcript is optionally archived to `conversations/YYYY-MM-DD-<slug>.md` with the same frontmatter.

**Never write straight to `wiki/` from Claude.** The `inbox/` → approval gate is the single invariant that keeps the wiki trustworthy.

### 2.4 Wiki-grounded Q&A (`/ask`)

This is the **third core capability**: the wiki acts as Claude's primary knowledge source when answering the user's questions. Claude reasons from stored knowledge before falling back on training data.

**Flow**

```
User: /ask <question>

1. RETRIEVE
   - Tokenize question into candidate keywords / aliases.
   - Scan meta/index.md for matching tags and titles (fast, no full read).
   - Load full body of the top-N matching wiki notes (default N=8).
   - If zero matches, fall back to general Claude knowledge and flag:
     "No wiki notes found on this topic — answering from general knowledge."

2. REASON
   - Claude synthesizes an answer using retrieved notes as primary context.
   - Rules enforced in the /ask prompt:
     a. Quote or paraphrase from wiki notes before adding external knowledge.
     b. Never contradict a wiki note without explicitly flagging the conflict.
     c. If the user's question reveals a gap (topic not in wiki), note it.

3. CITE
   - Every answer ends with a ## Sources block listing:
     [[note-id]] — one sentence on why it was relevant
   - Example:
     ## Sources
     [[concept/prompt-caching]] — explains the TTL and cost model cited above
     [[project/my-llm-app]]    — contains the benchmark numbers referenced

4. LOG
   - Append to meta/qa-log.md:
     - Date, question, note IDs retrieved, whether user approved the answer.

5. OPTIONAL SAVE
   - If user says "save this answer" or runs /approve after the answer,
     Claude writes a draft to inbox/ typed as:
       type: qa
       sources: [wiki notes used] + [conversation/<timestamp>.md]
     Goes through the standard approval gate → qa/<slug>.md
```

**Retrieval strategy (no vector DB)**

Since the vault is local and file-based, v1 retrieval is tag + alias keyword matching:

```
Retrieval priority order:
1. Exact tag match (question term == a wiki tag)
2. Alias match (question term appears in aliases list of any note)
3. Title substring match
4. Full-text grep of wiki/ for question noun phrases (last resort, slow on large vaults)
```

This is fast and transparent. The alias table is kept in memory during a session from a single pass over frontmatter. On large vaults (500+ notes), retrieval scope can be narrowed with `/ask --tag <tag> <question>`.

**Conflict handling**

If the user's question contradicts information in a wiki note:
- Claude surfaces the contradiction explicitly: "Your question assumes X, but `[[note-id]]` says Y. Which is correct?"
- User can correct the wiki note via `/ingest` / `/approve` flow, keeping the wiki accurate over time.

**Gap detection**

After answering from general knowledge (no wiki hit), Claude appends:
```
> Gap detected: no wiki note covers "<topic>". Consider running /ingest
> with a source file on this topic to build it into your second brain.
```

This creates a natural "pull" for the user to add missing knowledge.

**Prompt template for `.claude/commands/ask.md`**

```
You are a wiki-grounded assistant for a personal second brain.

The user's question: $ARGUMENTS

Step 1 — RETRIEVE
Read meta/index.md. Find wiki notes whose tags or aliases match keywords in
the question. Load the top 8 most relevant note bodies from wiki/.

Step 2 — REASON
Answer the question. Use retrieved notes as your primary source.
Prefer quoting or paraphrasing notes over relying on training knowledge.
If no notes are relevant, answer from general knowledge and say so clearly.

Step 3 — CITE
End your answer with a "## Sources" section listing every wiki note you used,
each on its own line: [[note-id]] — one sentence on its relevance.

Step 4 — LOG
Append one line to meta/qa-log.md:
  - YYYY-MM-DD | "<question (truncated to 80 chars)>" | notes: [id1, id2...] | saved: no

Step 5 — GAP CHECK
If you answered from general knowledge on any part, add a "## Gaps" section
listing topics the user should consider adding to the wiki.

Do NOT write to wiki/ or inbox/ unless the user explicitly asks to save.
```

### 2.5 Organize / link pass

`/organize` is the periodic batch pass:
1. Enumerate every MD file under `raw/`, `inbox/`, `wiki/`.
2. Skip files whose SHA-256 matches `meta/processed.json`.
3. For new content, cluster by topic using Claude (prompted with existing wiki titles + aliases so new material attaches to existing concepts when possible).
4. For each concept, produce/update a wiki note with the frontmatter contract.
5. Run `/link`: for each wiki note, scan the body and replace bare mentions of known aliases with `[[wiki-link]]` form; backfill `links_out`.
6. Regenerate `meta/index.md` (MOC grouped by `type` and top-tag).

Idempotency keys:
- File hash in `processed.json` prevents re-ingest.
- `id` field in frontmatter prevents duplicate concepts even if titles drift.
- Link rewriting is a pure function of aliases → always safe to re-run.

### 2.5 Claude Code surface

Implement operations as **slash commands** under `.claude/commands/`:

| Command | Purpose | Inputs |
|---|---|---|
| `/ingest [path]` | Draft wiki notes from a raw file into `inbox/` | optional file path; default = all unprocessed `raw/` |
| `/ask <question>` | Wiki-grounded Q&A with citations and gap detection | question string; optional `--tag <tag>` to narrow scope |
| `/discuss <topic>` | Load relevant wiki context and open a freeform chat | topic string |
| `/approve <draft>` | Promote `inbox/` draft to `wiki/` or `qa/` | draft filename |
| `/organize` | Full clustering pass across the vault | none |
| `/link` | Rewrite bare mentions to `[[wiki-links]]` | optional scope glob |
| `/graph` | Emit `meta/link-graph.json` + orphan report | none |

Each command is a Markdown file whose body is the prompt/instructions Claude follows — version-controlled alongside the vault.

### 2.6 Optional automation (post-v1)

- **Hook** (`.claude/settings.json`): on save of a file in `raw/`, auto-run `/ingest <file>` in the background.
- **MCP server**: expose `obsidian.searchByTag`, `obsidian.openNote`, `obsidian.listBacklinks` so Claude can query the vault structurally instead of grepping.
- **Git**: vault is a Git repo; every `/approve` produces a commit so history is auditable and reversible.

---

## 3. Step-by-Step Implementation

### Phase 1 — Vault & scaffolding (foundational)

1. Create vault directory; `git init`; add `.gitignore` (`.obsidian/workspace*`, `meta/*.json` optional).
2. Install Obsidian; "Open folder as vault".
3. Create folders: `raw/`, `inbox/`, `wiki/{concepts,people,projects,references}/`, `meta/`, `conversations/`.
4. Seed `meta/index.md` and `meta/processed.json` (`{}`).
5. Add a `templates/` folder with an Obsidian template that matches the frontmatter contract (for manual note creation).

**Exit criteria**: vault opens in Obsidian; Git repo clean; folders present.

### Phase 2 — Claude Code integration

1. In the vault root, `claude` → creates `.claude/`.
2. Write a `CLAUDE.md` at the vault root that documents: the frontmatter contract, the inbox → wiki invariant, the naming rules, and "never write directly to `wiki/`".
3. Create slash command files under `.claude/commands/` for the six commands in §2.5. Each file's body is a tightly-scoped prompt that references `CLAUDE.md`.

Pseudo-code for `.claude/commands/ingest.md` prompt:

```
You are processing a raw markdown file for the second-brain vault.

Input: $ARGUMENTS (path). If empty, list raw/*.md whose SHA-256 is not in
meta/processed.json.

For each input file:
1. Read it.
2. Read meta/index.md to know existing wiki titles + aliases.
3. Extract atomic concepts. Prefer extending an existing wiki note (by id)
   over creating a new one.
4. For each concept, emit a draft to inbox/_draft-<slug>-<YYYYMMDD-HHMM>.md
   with full frontmatter (type, sources, tags).
5. Do NOT modify wiki/. Do NOT update processed.json (that is /approve's job).
6. Report the drafts created.
```

**Exit criteria**: `/ingest` on a sample raw note produces a draft in `inbox/` and nothing else changes.

### Phase 3 — Approval gate

1. Implement `.claude/commands/approve.md`: validate draft frontmatter → move to `wiki/<type>/<slug>.md` → append source hashes to `meta/processed.json` → `git add` + commit with message `wiki: add <title>`.
2. Handle the "extend existing" case: if the draft's `id` matches an existing wiki note, merge sections (Claude generates a diff, user confirms).

**Exit criteria**: promoted drafts appear in `wiki/`, Git log shows one commit per approval, `processed.json` updated.

### Phase 4 — Organize + link passes

1. Implement `/organize` as described in §2.4.
2. Implement `/link`: build alias table from every wiki note's `title + aliases`; for each note body, replace first occurrence of each alias on each line with `[[id|alias]]` (respecting code blocks).
3. Implement `/graph`: walk frontmatter `links_out` to emit `meta/link-graph.json`; list any note with zero inbound links as "orphan" in the report.

**Exit criteria**: after `/organize`, `meta/index.md` lists every wiki note grouped by type; orphan count trends toward zero over runs.

### Phase 5 — Conversational path

1. Implement `/discuss <topic>`: Claude searches wiki frontmatter for notes whose `tags` or `aliases` contain the topic; loads their bodies; starts a chat.
2. Implement approval inside a chat: when the user says approve / runs `/approve`, Claude writes the agreed answer to `inbox/` using the same draft format as Path A — **reusing the same approval gate**. This is the invariant that prevents Path B from bypassing review.
3. Archive the transcript to `conversations/`.

**Exit criteria**: a conversation can produce a new wiki note only via the same `inbox/` → `/approve` path.

### Phase 6 — Wiki-grounded Q&A (`/ask`)

1. Implement `.claude/commands/ask.md` using the prompt template in §2.4.
2. Build the **alias table loader**: a small script (or Claude task at session start) that reads all wiki frontmatter in one pass and builds:
   ```json
   { "prompt caching": "concept/prompt-caching", "cache breakpoints": "concept/prompt-caching" }
   ```
   Cached in `meta/alias-table.json`; regenerated by `/organize`.
3. Implement the **retrieve step**: keyword tokenization → alias table lookup → ranked note list → load top-N bodies.
4. Implement the **cite step**: enforce `## Sources` block in the answer prompt; parse it back to validate note IDs exist.
5. Implement the **log step**: append to `meta/qa-log.md` — question, notes used, date, saved-flag.
6. Implement the **gap step**: if any part of the answer came from general knowledge, append `## Gaps` suggestions.
7. Wire `/approve` to handle `type: qa` drafts → `qa/<slug>.md` with `sources` pointing back to the retrieved notes + the question itself.
8. Add a `test_ask_cites_only_known_notes.sh` — assert every `[[id]]` in the Sources block resolves to a real file.

**Exit criteria**:
- `/ask "what is prompt caching?"` returns an answer citing at least one relevant wiki note (given seeded fixture vault).
- Answer with no wiki hits shows the "Gaps" section and "answered from general knowledge" flag.
- Approved Q&A appears in `qa/` and is referenced from `meta/index.md`.

### Phase 7 — Hardening (optional)

- File-save hook to auto-draft on raw drop.
- MCP server for structured vault queries (`obsidian.searchByTag`, `obsidian.semanticSearch`).
- Scheduled `/organize` via the `schedule` skill (e.g., nightly).
- Link-graph visualization using Obsidian's built-in graph view (already free once `[[links]]` are correct).
- `/ask --deep` mode: if alias lookup returns <3 notes, fall back to full-text grep of `wiki/` bodies.
- Periodic "knowledge health report": `/ask` gap log analyzed to surface the top 5 missing topics.

---

## 4. Edge Cases & Risks

| Risk | Mitigation |
|---|---|
| Claude writes straight to `wiki/` and corrupts canonical notes | Invariant enforced in `CLAUDE.md` + command prompts; `wiki/` protected by "never modify without `/approve`" rule; Git commit per approval gives instant rollback. |
| Duplicate concepts (same idea, two wiki notes) | `id` in frontmatter + alias table checked on every `/ingest`; `/organize` reports title-similarity clusters for manual merge. |
| Huge vault exceeds context window | `/organize` chunks by folder / tag prefix; uses `meta/index.md` as the authoritative high-level summary rather than loading every file. |
| Raw files edited after ingest (hash changes) | `processed.json` stores hash + last-ingest timestamp; re-ingest creates a draft diff, not a silent overwrite. |
| Link rewriting breaks code blocks / quoted prose | `/link` skips fenced code blocks and inline-code spans; respects existing `[[...]]` links. |
| Private info in `conversations/` | `.gitignore` option for `conversations/` if vault is pushed to a remote. |

---

## 5. Testing Strategy

- **Fixture vault** under `test-vault/` with 5–10 raw notes covering overlap, duplicates, and bad formatting.
- **Unit-ish tests** (shell scripts):
  - `test_ingest_creates_only_inbox.sh` — assert no `wiki/` changes after `/ingest`.
  - `test_approve_moves_and_commits.sh` — assert file moved, `processed.json` updated, Git has one new commit.
  - `test_organize_idempotent.sh` — run twice; second run produces no diff.
  - `test_link_skips_code_blocks.sh` — alias inside a fenced block must not be rewritten.
- **Manual acceptance**: open `test-vault/` in Obsidian, verify graph view shows connected clusters and no orphans for seeded topics.

---

## 6. Success Criteria

1. Dropping a new file in `raw/` and running `/ingest` produces a reviewable draft in `inbox/` within one command.
2. `/approve` cleanly moves the draft to `wiki/`, commits to Git, and the note is immediately reachable from `meta/index.md`.
3. Running `/organize` twice in a row yields a clean Git diff (idempotent).
4. A conversation that ends in approval results in a wiki note whose `sources` frontmatter includes the conversation transcript.
5. Obsidian's graph view shows at least 80% of wiki notes connected (no isolated nodes) after two `/organize` runs on the fixture vault.
6. `CLAUDE.md` fully describes the invariants; a new contributor can add a raw note and get a reviewed wiki note without reading this spec.

---

## 7. Open Questions

- Should `conversations/` be committed to Git or ignored by default? (Privacy vs. provenance.)
- Do we want embeddings/RAG in v2, or is "Claude reads index + on-demand notes" sufficient at the user's expected vault size?
- Should `/approve` be gated by a lint (frontmatter validator) before the Git commit?

Resolve before starting Phase 3.

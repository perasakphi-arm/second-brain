# Socratic Session — Poker Strategy
**Date:** 2026-04-25 (resumed 2026-05-04)
**Status:** Paused — Phase 2 complete, Phase 3 not started

---

## Session Arc

### Opening Question (Phase 1 — Ground)
> "If you had to explain to a beginner what poker strategy actually is — not which hands to play, but what makes something count as a 'strategy' — how would you put it?"

**User answer:** A strategy is a system designed to achieve a specific objective. In poker: designing a system that generates maximum (or at least high) EV, sustainably over time, and adaptable to different situations.

---

### Probe 1
> "What would you lose if you made your poker strategy perfectly adaptable — adjusting every decision to whatever you read about your opponent in that moment?"

**User answer:** It requires a lot of energy and brainpower to analyze the opponent and read the situation correctly all the time.

---

### Probe 2
> "What happens to your strategy in a hand where you have no reliable read on your opponent at all — if your whole approach depends on adapting to them?"

**User answer:** Adapting based on inaccurate reads can lead to situations where an incorrect exploit results in a greater EV loss than the EV gain.

*(Note: user answered the "wrong read" case rather than the "no read" case — both were addressed in follow-up.)*

---

### Probe 3
> "So if both zero reads and wrong reads can hurt you — what property would a strategy need to have so it still works when you have absolutely no information about your opponent?"

**User answer:** Start with a GTO baseline — actions that are "not bad" — and as we collect more information and can make reads, adjust from the baseline.

---

### Probe 4 (resumed 2026-05-04)
> "Can a human actually execute true GTO at the table — and if not, does that change what the baseline needs to be?"

**User answer:** Humans can't execute full GTO, which creates exploit opportunities. We need a very simple baseline strategy for defensive play.

---

### Probe 5
> "If your baseline is intentionally simple — not true GTO — doesn't that mean a skilled opponent could exploit you? What's the actual job of the baseline: be unexploitable, or something else?"

**User answer:** The baseline should be both unexploitable and effective to execute.

---

### Probe 6
> "True GTO is unexploitable. A simple strategy is executable. Can something be both at the same time — and if not, which one do you actually sacrifice, and how much?"

**User answer:** Both are possible depending on how you set up the tree. Simplified solver trees (fewer bet sizes, cleaner nodes) can be close to unexploitable while remaining executable.

---

### Probe 7
> "If you simplify the tree and your strategy becomes slightly exploitable — how do you know whether that's acceptable? What's the actual threshold for 'good enough'?"

**User answer:** Two methods: (1) EV loss measurement, (2) whether the pool can actually detect and execute the counter-exploit. Example: range betting flop creates a B-X-B river over-fold leak, but if the pool can't construct the exploit, the strategy's EV gain outweighs the theoretical leak.

---

### Probe 8
> "How do you actually know whether the pool can detect and execute a specific counter-exploit?"

**User answer:** Need to understand villain's calling and bluffing tendencies. At 200NL, regs use MDA tools to detect leaks like B-X-B river over-fold. Detection is easy (run the filter) but execution is hard — requires identifying correct textures, sizing bluffs, choosing bluff candidates. Most regs stop at detection.

---

### Probe 9
> "If detection is easy but execution is hard, what makes a leak 'safe to keep' vs 'must fix'?"

**User answer:** Safe to keep if execution of the counter is complex. But noted that X-C-X-B (BB donk river after check-call flop, check turn) is easy to exploit because IP's B-X range is capped and junk-heavy — BB can call wide and bluff aggressively on that line.

---

### Probe 10
> "Does this exploit work equally on all board textures?"

**User answer:** No — board-range interaction is the key variable. Two examples:
- **J56-2-9:** BU's B-X range is weaker than solver because population under-bluffs anti-blocker hands. BB's aggression works well.
- **QT3-2-7:** BU has many Tx medium-strength hands (KT, JT, AT offsuit) that legitimately check turn for pot control. Population also over-bets draws on flop, so B-X still contains equity hands. BB's river aggression backfires.

**Key variable identified:** Whether IP has a large "medium-strength zone" that connects with the board and wants to check turn. If yes → B-X is not weak. If no → B-X is junk-heavy.

---

## Current State

**Phase:** 2 — Examine (complete)

**Last question asked (unanswered — session ended):**
> "At the table in real-time, what's the quick mental check you'd use to decide whether a board gives IP a large medium-strength zone or not — before committing to the river aggression line?"

**Key insights established:**
- Strategy = systematic, not just a collection of plays
- Full adaptability is costly and risky (wrong reads cause net EV loss)
- Need a GTO-like baseline as fallback → simplified trees can be both executable and near-unexploitable
- Leak acceptability = EV leak vs pool's ability to execute the counter (not just detect)
- Detection is cheap; execution requires multi-step construction → most regs stop at detection
- B-X line exploit (BB calls wide + attacks river) works on junk-heavy boards (J56) but not medium-strength-heavy boards (QT3)
- Key board read: does IP have a large medium-strength zone connecting with this board?

**Next arc (Phase 3 — Stress test):**
- Answer the unanswered question: quick mental heuristic for medium-strength zone at the table
- Stress test: when does even the baseline fail?
- Connect back to Layer 1 build process

---

## Relevant Wiki Notes
- `wiki/concepts/poker-strategy-framework.md` — GTO vs exploit, defensive vs offensive
- `wiki/concepts/three-layers-poker-strategy.md` — Layer 1 (C-game baseline), Layer 2/3
- `wiki/concepts/poker-study-methodology.md` — study priority and spot selection

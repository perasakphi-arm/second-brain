---
id: concept/ingredient-cause-effect-analysis
title: Ingredient Cause-Effect Analysis — SPR, Range, and Board (Wakko)
type: concept
tags: [wakko, study, ingredients, cause-effect, spr, range, board-texture, bet-frequency, hand-groups, frameworks]
sources:
  - raw/Focus on Why.md
aliases: [ingredient analysis, cause effect poker, SPR effect strategy, range effect betting, air in range, ingredient framework, hand groups spr]
created: 2026-05-02
updated: 2026-05-02
links_out: [concept/why-mindset-reverse-engineering, concept/mtt-vs-cash-poker-is-poker, concept/3bp-oop-pfr-strategy, concept/3bp-bu-vs-sb-t-high-exploit, spot/srp-oop-pfc-bb-defend-flop]
---

## Spot Trigger

When a strategy differs between two spots (3BP vs SRP, deep vs short stack, T-high vs J-high board) and you want to know *what ingredient is causing the difference* — not just that it's different.

## Thought Process (Wakko's Three-Ingredient Tests)

Wakko isolates one ingredient at a time to isolate its causal effect. The methodology: keep two ingredients constant, change the third, observe the outcome. Summary of findings:

---

### Ingredient 1: SPR → Affects Hand Groups

![[Pasted image 20260501152221.png]]

**Test:** Same range, same board. Change only SPR.

| SPR Level | Top Pair | Draws (IP) |
|-----------|----------|------------|
| Deep (high SPR) | Check — too vulnerable, hard to stack off, protect over multiple streets | Bet — can build pot over many streets |
| Medium SPR | Bet — balance protection and value | Mixed |
| Short (low SPR) | Slow play IP — stack off is easy regardless | **Check back IP** — opponent check-raises aggressively, can't realize equity if raised |

**Conclusion:** SPR affects *which hands* you should bet (hand groups), not primarily frequency.

**Why draws check back IP at short SPR:**
![[Pasted image 20260502203843.png]]
At low SPR, BB's best response is to check-raise aggressively — even top pair becomes a check-raise hand. IP draw facing a check-raise loses equity and cannot continue profitably. Better to check back and realize equity cheaply.

![[Pasted image 20260501152907.png]]

**Applied to [[concept/3bp-oop-pfr-strategy|3BP]]:** SPR in a 3-bet pot is lower than SRP. Therefore top pair bets more aggressively in 3BP. Same ingredient logic — same cause, different magnitude.

![[Pasted image 20260501153208.png]]
At 15bb, SPR is very low: bet sizes reduce, IP plays more passively (wants equity realization), strong hands are slow-played IP because getting stacks in is easy.

---

### Ingredient 2: Range Composition → Affects Bet Frequency

![[Pasted image 20260501152421.png]]

**Test:** Same SPR, same board. Change only range (tight vs wide/loose).

| Range Type | Air Content | Effect |
|------------|-------------|--------|
| Tight range | Less air | Lower cbet frequency |
| Wide/Loose range | More air | Higher cbet frequency |

**Conclusion:** Air (bluffing combos) in range affects *how often* you bet, not which hands you bet with. Hand groups remain the same.

![[Pasted image 20260501152627.png]]
Tight vs wide is fundamentally a difference in air content in BB's range (calling range), not a different strategic framework.

![[Pasted image 20260501152801.png]]
SPR does not "not affect strategy" — the key is that the SPR must change enough to cross a threshold before hand groups shift. In the range-only test, SPR was held constant, so hand groups stayed the same.

---

### Ingredient 3: Board Texture → Affects Both Frequency and Sizing

![[Pasted image 20260501153936.png]]

**Test:** Same range, same SPR. Change board (e.g., J86 → J87).

**Finding:** Board changes affect both bet frequency and bet sizing simultaneously. Board interacts with range in a compound way — needs its own separate analysis per board type.

---

### Combined Ingredients

![[Pasted image 20260501151808.png]]

When multiple ingredients change at once (e.g., tight range + deep SPR vs wide range + medium SPR), isolating cause becomes harder. The methodology: **test one at a time first**, then combine findings.

![[Pasted image 20260501153659.png]]

Example: wide range (more air → higher frequency) combined with very short SPR (low frequency). At very short SPR, SPR dominates — bet frequency is governed by SPR more than range. Hand groups also shift due to SPR.

---

### Ingredient 4: Opponent Response → Feeds Back to Your EV

![[Pasted image 20260502204038.png]]

**Critical insight:** The EV of your action is not calculated in isolation — it depends on opponent's response.

![[Pasted image 20260502204122.png]]

| BB Check-Raise Frequency | Effect on IP CBet |
|--------------------------|-------------------|
| Low (BB over-folds or calls) | IP can cbet more freely |
| High ([[spot/srp-oop-pfc-bb-defend-flop|BB check-raises aggressively]]) | IP must reduce cbet frequency |

**Applied to 4BP low SPR:** Expect aggressive BB check-raises (because low SPR makes check-raise with strong hands correct for BB). If IP has a draw, **check back to realize equity** rather than cbet and face a check-raise.

**Applied to exploit reads:**
![[Pasted image 20260502204658.png]]
Population tendency "over-folds / under-check-raises" is often cited to justify [[concept/3bp-bu-vs-sb-t-high-exploit|cbet small high frequency]]. Wakko's point: this exploit is real, but you still need to understand the GTO baseline first. The exploit makes sense *because* you understand the normal cause-effect chain — low check-raise rate means IP EV goes up when cbetting.

## Action Rule

For any strategic difference between spots:
1. Name the ingredient that changed.
2. Verify which dimension it affects (hand groups → SPR; frequency → range composition; both → board texture).
3. Write a one-sentence cause-effect conclusion before applying the adjustment.

## Summary Table

| Ingredient Changed | What It Affects | Dimension |
|--------------------|-----------------|-----------|
| SPR | Which hands to bet (hand groups) | Structural |
| Range composition (air) | How often to bet (frequency) | Frequency |
| Board texture | Both frequency and sizing | Compound |
| Opponent response | Your EV and optimal frequency | Feedback |

![[Pasted image 20260501154311.png]]

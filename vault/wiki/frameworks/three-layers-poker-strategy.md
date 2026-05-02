---
id: concept/three-layers-poker-strategy
title: Three Layers of Poker Strategy
type: concept
tags: [poker, strategy, gto, exploit, layers, c-game, a-game, b-game, wakko]
sources:
  - raw/Poker Strategy.md
aliases: [3 layers poker, poker layers, defensive baseline, offensive adjustment, in-game adjustment, A-game B-game C-game poker]
created: 2026-04-19
updated: 2026-04-19
links_out: [concept/poker-strategy-framework, concept/poker-study-methodology, concept/villain-profile-fish-utg]
---

# Three Layers of Poker Strategy

Coaching by Wakko. Builds on [[concept/poker-strategy-framework]].

![[Pasted image 20260418145642.png]]

Wakko divides [[concept/poker-strategy-framework|poker strategy]] into three layers. Development should follow this order:

![[Pasted image 20260418145759.png]]

![[Pasted image 20260418150017.png]]

---

## Layer 1 — Defensive Baseline (Simple GTO)

**Goal: Improve C-Game**

- Provides a fallback strategy for situations with no reads, low energy (end of session), or time pressure
- The key of C-Game: play **not bad** rather than perfect
- Follows most poker theory principles: range bet, range check, etc. per board texture
- You do not need to play *actual* GTO — just a strategy that is not exploitably bad
- Build one spot at a time (e.g., BUvBB SRP IP PFR), then move to the next spot, then return to add nuance later

---

## Layer 2 — Offensive Adjustment (Baseline+)

**Goal: Improve B-Game**

Deviations from Layer 1 based on **population tendencies** or accumulated data:

- Identify [[concept/poker-study-methodology|population leaks]] via MDA (e.g., pool under-check-raise, pool over-folds certain spots)
- Adjust frequencies accordingly: increase bet frequency where pool over-folds, decrease where pool over-calls
- Ripple effect adjustments: modify Flop or Preflop lines based on known River/Turn population leaks looking ahead
- Build **aggression protocols** — "hotspots" where the pool consistently over-folds (e.g., pool over-folds River in X line → bluff River at high frequency)
- **Avoid strong, strike weak** — do not attack when equity/board heavily favors opponent's range
- Key failure mode: making fancy adjustments based on unreliable or insufficient data

---

## Layer 3 — Offensive In-Game Adjustment

**Goal: Improve A-Game, enter Flow State**

- Attacks or adjusts at the **individual player level** using small nuances (texture reads, blocker effects)
- Can deviate entirely from the baseline game plan (Layers 1 and 2) when individual reads justify it
- Requires: hand reading, individual reads, processing actual situation in real time
- Mindset: "Can I…?" — actively looking for whether specific reads permit a creative play
- Most costly in mental energy; cannot be sustained all session

![[Pasted image 20260418154047.png]]

> Solid baseline (Layers 1–2): think in **ranges**.  
> Offensive in-game (Layer 3): play by **hand**.

---

## Practical Guidance

![[Pasted image 20260418152500.png]]

- Wakko does not try to play A-Game all the time
- Against a strong player: default to Layer 1 (defensive baseline)
- Against a weak player with identified leak: escalate to Layer 3 (in-game exploit)
- Even with excellent reads, if equity or board texture heavily improves the opponent's range, offensive play is not viable

Most players over-focus on A-Game (Layer 3) and neglect building a C-Game (Layer 1), creating a development gap. The fix: start with a simple GTO game plan for one spot, complete it, move to the next — add complexity only after the baseline is solid.

Relying only on Layer 3 consumes energy and reduces overall yearly EV because fewer hands can be played optimally.

![[Pasted image 20260418152955.png]]

Football analogy: Layer 1 = defensive line (must be solid, no creativity), Layer 2 = midfield (connects defense to attack), Layer 3 = attackers (creative, high upside, high risk if your defense has holes).

![[Pasted image 20260418154119.png]]

![[Pasted image 20260418154234.png]]

## See Also
- [[concept/villain-profile-fish-utg|Villain Profile — Fish (UTG)]] — example of L3 individual-player adjustment in practice

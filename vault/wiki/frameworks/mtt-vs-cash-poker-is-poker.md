---
id: concept/mtt-vs-cash-poker-is-poker
title: MTT vs Cash — Poker Is Poker (Wakko)
type: concept
tags: [poker, mtt, cash-game, strategy, ingredients, rake, antes, spr, gto, wakko]
sources:
  - raw/MTT vs Cash are The Same.md
aliases: [poker is poker, mtt vs cash same, mtt cash same strategy, ingredient-based strategy, poker ingredients, wakko mtt vs cash]
created: 2026-04-26
updated: 2026-04-26
links_out: []
---

# MTT vs Cash — Poker Is Poker (Wakko)

**Coach:** Wakko

---

## Core Thesis

MTT and Cash Game strategy are **not fundamentally different**. Both aim to maximize EV. The apparent differences between the two formats arise entirely from **ingredient inputs** — variables that differ between formats. Once you understand how each ingredient affects strategy, you can derive the correct strategy for any format or scenario.

![[Pasted image 20260419154524.png]]

---

## Why Traditional Poker Education Gets This Wrong

The poker education industry is structured around releasing MTT courses OR Cash Game courses, each focused on **what to do** (prescriptive strategy). This creates several problems:

![[Pasted image 20260419155106.png]]
![[Pasted image 20260419155143.png]]
![[Pasted image 20260419155243.png]]

1. A course focused on "what to do" in MTT cannot cover Cash Game in the same material.
2. Poker has infinite scenarios — no course can cover all of them with prescriptions.
3. Strategies become outdated as the player pool evolves, requiring new "what to do" courses.

**Wakko's approach:** Use MTT and Cash as *examples* to illustrate which concepts apply in which contexts. Focus on **WHY** rather than WHAT.

> Why mindset = long-term growth. Short-term = focus what. But long-term, understanding WHY allows you to apply the framework to any game (not just NLHE).

---

## Solver Has No MTT/Cash Button

![[Pasted image 20260419160006.png]]
![[Pasted image 20260419160123.png]]
![[Pasted image 20260419160153.png]]
![[Pasted image 20260419160236.png]]

From the solver's perspective, there is no "MTT" or "Cash" mode. The solver only takes ingredient inputs and computes the highest-EV line for each hand. Solver output is a **guideline**, not something to follow blindly — it represents the "solver world environment."

The solver's goal (and therefore our goal) is always: put each hand on its **highest-EV line**.

- This does NOT mean "strong hand = bet big"
- It means finding the line that maximizes expected value given all inputs

![[Pasted image 20260419160554.png]]

---

## The Ingredient Framework

Strategy = f(ingredients). Change the ingredients, change the output strategy.

![[Pasted image 20260419160814.png]]
![[Pasted image 20260419160931.png]]

### Ingredient 1: Rake

![[Pasted image 20260419161215.png]]

- Tournaments have **less rake** than Cash Game.
- Rake is paid when we see a flop (pot contribution). Live hourly games = no rake per hand.
- **Impact on strategy:**
  - Rake increases fold frequency ~**13%** (borderline hands become clear folds)
  - Rake makes **3-bet more aggressive**: folding pre avoids rake, so it's better to put in money pre with strong hands than to see a flop and pay rake
  - Example: 97o is a pure fold in a rake environment but could call in no-rake conditions

### Ingredient 2: Antes

![[Pasted image 20260419161547.png]]

- Antes improve **pot odds** in tournaments → incentivizes playing wider
- With antes, the BU opens a **wider range** than in cash

![[Pasted image 20260419161636.png]]

- Observation: vs a tight opening range → reduce 3-bet frequency (equity disadvantage — investing money against a strong range is -EV)

### Ingredient 3: Opening Sizing

![[Pasted image 20260419161832.png]]
![[Pasted image 20260419161921.png]]

- vs **small open size** → better pot odds → defend wider
- vs **upsized open** → over-fold + increase 3-bet frequency

Combined effect:

![[Pasted image 20260419162017.png]]

- Tight range + small size: still defend wide (pot odds dominate range tightness)
- Wide range + big size: defend tight
- **Pot odds have more impact than opponent range width**

### Ingredient 4: SPR / Average Stack Size

![[Pasted image 20260419162158.png]]
![[Pasted image 20260424142229.png]]

- Lower SPR (common in tournaments) → defend with **raw equity** (offsuit hands ok)
- Higher SPR (cash game, deep stacks) → prefer **suited** hands (realize equity over multiple streets)
- As SPR decreases, IP cannot apply as much pressure → IP cbets less at low SPR

![[Pasted image 20260424142407.png]]
![[Pasted image 20260424142437.png]]

Example: KJs at 30bb vs 100bb
- At 30bb: more worst-case scenarios, higher 4-bet frequency from opponent
- At 100bb: fewer 4-bets, more ability to realize equity post-flop

**Key:** equity realization drives SPR-based decisions.

![[Pasted image 20260424142816.png]]

It is NOT "because it's a tournament, therefore defend/open wider." It's because the SPR is lower, therefore the strategy adjusts.

### Ingredient 5: Opponent Range Width (Opening Range)

Covered partially above — tight vs wide opening affects defend range. The widening of BU range in tournaments is itself a consequence of antes improving pot odds, not tournament format per se.

---

## Postflop Ingredients

![[Pasted image 20260424161354.png]]

Stake size comparisons differ between MTT and Cash, but the framework is identical.

![[Pasted image 20260424161520.png]]

Key postflop inputs:
1. **Preflop range** → determines range interaction on board textures
2. **SPR** → at low SPR, IP cannot apply as much pressure (cbets less vs deep stack)
3. **ICM** (tournament specific) → affects both preflop and postflop decisions

---

## What the Solver Knows (Full Input List)

![[Pasted image 20260424161911.png]]
![[Pasted image 20260424162021.png]]

1. **Range** — for both players
2. **Position** — IP vs OOP (position matters significantly)
3. **Heads-up vs multiway**
4. **Board texture** — range interaction, equity, equity distribution
5. **Pot size + stack size (SPR)**
6. **Betting options** — especially on later streets; river strategy feeds back to flop (e.g., no overbet option = solver finds another way to get stacks in)
7. **ICM** — tournament equity considerations

> When studying unusual spots, use solver principles to reason through the spot rather than relying on memorized strategy.

---

## Example: Check-Raise Frequency MTT vs Cash

![[Pasted image 20260419155700.png]]

We check-raise more aggressively in tournaments vs cash — especially in **low SPR** scenarios.

**Why?** Low SPR makes us more willing to stack off OOP. At deep SPR (cash), we check-raise more passively. Conversely, in a cash game with a short-stacked opponent, we can check-raise more aggressively.

The reason is SPR, not "it's a tournament."

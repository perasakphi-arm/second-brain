---
id: concept/why-mindset-reverse-engineering
title: Why Mindset — Reverse Engineering Poker Strategy (Wakko)
type: concept
tags: [wakko, study, methodology, reverse-engineering, ingredients, cause-effect, why-mindset, frameworks]
sources:
  - raw/Focus on Why.md
aliases: [why mindset, reverse engineering poker, why vs what, what mindset, focus on why, wakko why mindset]
created: 2026-05-02
updated: 2026-05-02
links_out: [concept/mtt-vs-cash-poker-is-poker, concept/poker-study-methodology, concept/ingredient-cause-effect-analysis, concept/poker-strategy-framework]
---

## Spot Trigger

Whenever you study a solver output — reading bet frequencies, sizing, hand groups — and you memorise *what* to do without asking *why* the strategy is that shape.

## Thought Process (Wakko's Framework)

![[Pasted image 20260501150638.png]]

**What Mindset (dark side of solver age):**
Copy the output. "Bet top pair 67% on this board." Memorise the frequency without understanding the cause. Common because solvers give direct answers — it feels like learning.

**Why Mindset (bright side):**
Use the solver output as data, then reverse-engineer it. Wakko's metaphor: *disassemble a car engine piece by piece, then try to reassemble it yourself*. You're not studying to memorise — you're studying to understand how each part causes the outcome.

![[Pasted image 20260501151451.png]]

**Why this matters:**
Poker is not a static game. Every spot has exceptions — villain-specific, population-specific, ingredient-specific. A What-mindset player cannot find exceptions because they never understood the cause of the base strategy.

![[Pasted image 20260502203330.png]]

**Why mindset enables adjustments:** When an ingredient changes (villain's range, SPR, board texture), a Why-mindset player can trace the causal chain and adjust correctly. A What-mindset player is stuck — they learned a strategy that no longer applies.

![[Pasted image 20260502203427.png]]

## Action Rule

When you open a solver: **do not stop at the output**. For every strategy you observe, ask:

> "What ingredient is causing this? How do I verify it?"

Then change one ingredient at a time and observe what shifts. Write the conclusion as a cause-effect rule, not a frequency to memorise.

## Study Method (Reverse Engineering Steps)

1. Pick a spot and study its solver strategy.
2. Isolate one ingredient — change only that, keep others constant.
3. Observe what changes in the strategy output.
4. Write a one-sentence conclusion: *"[Ingredient X] affects [strategy dimension Y]."*
5. Repeat for each ingredient.

See [[concept/ingredient-cause-effect-analysis]] for the concrete results of applying this method to SPR, range, and board.

## Examples

**[[concept/mtt-vs-cash-poker-is-poker|MTT vs Cash]]:**
![[Pasted image 20260501150807.png]]
Same concept, same ingredients (SPR, option, range) → strategies are very similar. Differences exist because one ingredient differs (antes, slightly wider MTT ranges), not because the games are fundamentally different. This came directly from a Why-mindset analysis.

![[Pasted image 20260501150951.png]]

**BUvBB SRP IP PFR:**
![[Pasted image 20260501151201.png]]
MTT and cash strategies are close because most ingredients match. Range in MTT is slightly wider → sizing shifts slightly smaller. Understanding the ingredient (wider range) explains the strategic difference.

**Cause-Effect Teaching:**
![[Pasted image 20260501151338.png]]
Wakko's goal: build understanding of cause-effect relationships between ingredients so we can study independently. Post-flop examples are provided to practise this skill.

## Real-Game Application

![[Pasted image 20260502204458.png]]

In real game, ingredients deviate from GTO assumptions (villain's actual range is not balanced; villain's actions are not solver-optimal). Playing [[concept/poker-strategy-framework|pure GTO]] does not generate maximum EV. Understanding cause-effect allows us to identify *which* ingredient has changed and adjust strategy accordingly — rather than guessing or copying an exploit we don't understand.

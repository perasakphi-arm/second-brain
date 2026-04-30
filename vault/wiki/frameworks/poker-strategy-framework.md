---
id: concept/poker-strategy-framework
title: Poker Strategy Framework
type: concept
tags: [poker, strategy, gto, exploit, theory, wakko]
sources:
  - raw/Poker Strategy.md
aliases: [poker strategy, GTO vs exploit, defensive poker, offensive poker, poker strategy definition]
created: 2026-04-19
updated: 2026-04-19
links_out: []
---

# Poker Strategy Framework

Coaching by Wakko.

## What Is Strategy

![[Pasted image 20260417231815.png]]

![[Pasted image 20260417232010.png]]

A strategy is a plan designed to achieve a goal or objective. In poker, the objective is to make high-EV plays and boost win rate by deploying a superior strategy relative to opponents.

Strategy must be **systematic** — executable consistently — and designed to:
- Win against the pool on average
- Navigate challenges (equity disadvantage, wet boards, aggressive opponents)
- Capitalize on opportunities (equity advantage, opponent tendency exploits)
- Achieve high EV efficiently and effectively

![[Pasted image 20260417232951.png]]

![[Pasted image 20260417233957.png]]

Effectiveness links to execution: an overly complex strategy (like a solver's exact output) cannot be executed well at the table. The goal is a **simple strategy that still achieves high-EV play**.

## Sun Tzu Applied to Poker

Two pillars from Sun Tzu's *Art of War* map onto poker:

**1. Planning and Preparation (off-table work)**
- Understanding the terrain → poker theory, equity distribution, restrictions
- Understanding the enemy → population tendencies we can exploit
- Knowing one's own capabilities → execution ability and leaks in one's own strategy (e.g., being too aggressive, being a calling station)

**2. Adaptability**
- A prepared baseline strategy is essential for common scenarios — you cannot think everything through on the fly mid-hand
- However, rigid adherence to a plan is a weakness: poker is a game of information. Actions generate information (bet sizing, lines, timing tells) that should update decisions
- GTO is a very rigid, statistics-based strategy that focuses on making oneself unexploitable; it does not adapt to individual opponents

> Sun Tzu was not a fan of pure GTO — it is too statistical.

## GTO Strategy vs Poker Theory

![[Pasted image 20260418081849.png]]

GTO strategy places hands across all lines to prevent opponents from having a correct choice (to create **indifference**). In practice, true indifference is nearly impossible to achieve against real players.

![[Pasted image 20260418082626.png]]

**Poker theory** (concepts like equity distribution, nut advantage, Stack-to-Pot ratio) applies to **both** GTO and exploit players. Ignoring poker theory will lose money regardless of approach — for example, betting into a strong range with equity disadvantage is a losing play under any strategy.

Memorizing GTO strategy is less durable than understanding the underlying theory.

## Defensive vs Offensive Approach

![[Pasted image 20260418083409.png]]

![[Pasted image 20260418084713.png]]

| | Defensive (GTO) | Offensive (Exploit) |
|---|---|---|
| Decision basis | Own range and frequencies | Opponent's strategy and leaks |
| Goal | Avoid being exploited; not to lose | Win maximum; highest EV |
| Mindset | "Thinking in threats" — what could they do back? | "Thinking in opportunities" — they do A, we do B |
| EV gain from | Opponent mistakes | Directly exploiting identified leaks |
| Requires | Balance and frequency discipline | Reliable reads and information |

**When to use each:**
- Use defensive approach vs strong players, unknown opponents, or when no exploitable information exists
- Use offensive approach when reliable population or individual data is available

![[Pasted image 20260418145607.png]]

Both approaches are worth studying. GTO teaches what "correct" looks like; exploit layers on top by deviating when information justifies it.

---
id: concept/poker-study-methodology
title: Poker Study Methodology
type: concept
tags: [poker, study, methodology, spots, streets, gto, wakko]
sources:
  - raw/Poker Study.md
aliases: [poker study, how to study poker, study spots, study priority, poker improvement, what to study poker]
created: 2026-04-19
updated: 2026-04-19
links_out: [concept/3bp-oop-pfr-strategy]
---

# Poker Study Methodology

Coaching by Wakko. Covers: what to study, how to determine priority, mindset shift, data gathering, and the improvement feedback loop.

![[Pasted image 20260418215147.png]]

---

## Which Street to Study

![[Pasted image 20260418215534.png]]

Each street has a different study profile:

| Street | Frequency | Pot Size | Key Characteristic | Study Approach |
|---|---|---|---|---|
| River | Low | Big | Biggest cost when wrong; ranges deviate most from GTO by river | Holistic — protocols, bluff/call systems |
| Flop | Medium | Medium | Sets up Turn/River lines; manipulates future range | Baseline strategy + concept application |
| Turn | Medium | Medium | Last street to manipulate equity (deny equity, etc.) | Poker theory concepts |
| Preflop | High | Small | Closest to solver output; high frequency | Memorization viable; ripple-effect adjustments |

![[Pasted image 20260418220041.png]]

**Ripple Effect**: River leaks propagate backwards. Example — if BB over-folds the line XC→X→XF on K65r, the IP player gains by using line Bet-small→Check→Bet with air, which is not justified by pure GTO but is by the population leak.

![[Pasted image 20260418220517.png]]

![[Pasted image 20260418220940.png]]

River analysis: identify over-bluff, under-bluff, over-call, under-call — there is no next street, so pure range reasoning applies.

![[Pasted image 20260418221316.png]]

![[Pasted image 20260418221516.png]]

---

## What Spots Are Worth Studying

![[Pasted image 20260418221851.png]]

Priority criteria (in order):
1. **High-frequency spots** — start with Initial Raise (IR) since knowing the correct action here enables all subsequent exploitation
2. **Big average pot size** — larger pots = larger EV impact per mistake
3. **Your current leaks** — address spots where you personally deviate most
4. **Population leaks** — spots where the pool deviates from GTO most = highest exploit potential

### Priority 1 (Master First) — 6-Max Cash

![[Pasted image 20260419101621.png]]

| Spot | Rationale |
|---|---|
| SRP IP PFR (esp. BUvBB, COvBB) | Highest win-rate contributor; frequent; pool has leaks in defense |
| [[concept/3bp-oop-pfr-strategy\|3BP OOP PFR]] | Less frequent but large pot |
| SRP OOP PFC | Mirror of SRP IP PFR; study together |
| 3BP IP PFC | Mirror of 3BP OOP PFR; study together |

Mastering these four spots teaches the underlying poker theory that scales to all other spots. Concepts from PFR IP/OOP and PFC IP/OOP recur everywhere.

**Key**: study with **Zoom In** (deep on the spot) AND **Zoom Out** (understand why, to scale to other spots). Focus on *why* so the knowledge transfers.

### Priority 2

![[Pasted image 20260419112226.png]]

- SRP Multiway (especially if fish are in the game)
- 3BP IP (if 3-betting preflop heavily)
- 4BP (pool makes many mistakes here)

### Priority 3

- SRP OOP IR (key: SBvBB)
- SRP IP PFC (depends on preflop strategy)
- 3BP OOP PFC

---

## Complexity Scales with Frequency

![[Pasted image 20260419112640.png]]

- **High-frequency spots**: add nuance and complexity (e.g., SRP IP PFR → separate bet sizing per texture type)
- **Low-frequency spots**: simplify strategy (e.g., 4BP → one gameplan for all Axx boards, no per-texture splits)

![[Pasted image 20260419112917.png]]

Study formation order:
1. Study the **wide formation** first (most frequent scenarios)
2. Simplify the tree — merge similar spots and skip rare spots
3. Focus on **most common lines** (e.g., Cbet IP)
4. When studying a new spot, **compare it to what you already know** — identify what shifts, not what is entirely new

![[Pasted image 20260419113531.png]]

Example: EPvBB vs BUvBB in SRP IP PFR — same framework, compare what changes.

---

## Which Boards to Study

![[Pasted image 20260419113701.png]]

Follow frequency and pot size (same criteria as spot selection).

### Flop Frequency

![[Pasted image 20260419113944.png]]

- Unpaired + no straight → most common
- Two-tone > rainbow; mono is rare → prioritize two-tone
- HLL, HML, HMM textures are more common than low-card boards
  - Study K73 before KQJ
  - Connected boards like K56 are also common
- Less common: LLL (pairs, straights), HHM/HHL (includes wheel boards)

### Turn Frequency

- Blank (non-completing) ~43% → study K65 blanks: T-A, blank low cards
- Straight completing ~27%
- Flush completing ~12%

![[Pasted image 20260419114653.png]]

Turn is studied holistically in two categories: **Blank Turn** vs **Complete Turn** — they create very different dynamics.

### Range Setup for Study

![[Pasted image 20260419114829.png]]

- Low-combo spots (e.g., 4BP, 3BP OOP PFC) → use **weighted ranges** — range composition has a large strategic impact
- Low-frequency spots → **merge ranges** to simplify the study tree

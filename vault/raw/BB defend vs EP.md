# Hand Review — YYYY-MM-DD [brief spot description]

> **How to use:** Copy this file to `raw/`, rename it, fill in every field.
> The heading contains "Review" so `/hand-review` picks it up automatically.
> Fields marked `(optional)` can be left blank — fill what you know.

---

## Overview

| Field                | Value      |
| -------------------- | ---------- |
| Date                 | 3-May-2026 |
| Stakes               | 100 NL     |
| Table type           | Cash       |
| Pot type             | SRP        |
| Hero position        | BB         |
| Villain position     | EP         |
| Hero stack           | e.g. 100bb |
| Villain stack        | e.g. 87bb  |
| SPR (approx)         | deep stack |
| Villain profile link | -          |

---

## Hero's Hand

- **Cards:** 86 bdfd
- **Suit:** spade
- **Hand class:** mid pair and bdfd
- **Preflop role:** Caller (PFC) 

---

## Villain Info

- **Type:** -
- **Key tendency this session:**-
- **Preflop: calling range / 4-bet frequency:**
- **Postflop tell observed today (optional):** 

---

## Preflop Action

```
e.g. UTG opens 2x → BB call 2x and pot 5.5bb
```

---

## Flop

- **Board:** QsQh6h
- **Board texture:** Paired and flush draw
- **Suits on board:** 2 hearth
- **Villain action:** b33%
- **Hero action:** check raise
- **Hero's hand strength:** second pair + bdfd
- **Hero's range read of villain:**
	- using population read cbet small should be very high frequency
- **Why did villain bet / check?** (my read at the time)

---

## Turn

- **Card:** 4c
- **Board now:** QsQh6h 4c
- **New suits on board:** brick
- **Does this card improve hero's hand?** No
- **Does this card improve villain's range?** No
- **Villain action:** b50
- **Hero action:** fold
- **Hero's updated range read of villain:**
	- block after call check raise should be some think look like pocket region and some flush draw
- **Hero's hand strength now:** e.g. Still pair of 6s — bdfd unimproved

---

## River 


- **Card:** [rank][suit] — -
- **Board now:** e.g. 8s 6s 8c 9s Js
- **Flush complete?** Yes / No — suit: ___
- **Does hero have a flush?** Yes / No — hero's suit vs board suit: ___
- **Does hero have any blocker to villain's likely value hands?** Yes (which cards) / No
  - Hero's cards: ___ — blocks: ___
  - Confirm: are these blockers relevant to the flush / straight / top pair?
- **Villain action:** e.g. B50%
- **Hero's range read now:** (what hands can villain be betting for value / bluffing with?)
  - Value bets villain has:
  - Bluffs villain has:
  - Which is more likely given the full street history?
- **Hero action:** e.g. RAISED / CALLED / FOLDED
- **Hero's reasoning:** (write the full thought process — this is what gets reviewed for leaks)

---

## Result (optional — fill if known)

- **Villain's hand:**-
- **Villain's hand strength:** e.g. J-high flush (Js-Ts-9s-8s-6s)
- **Hero's best hand:** -
- **Winner:** -
- **Hero's reaction:** -
---

## My Thought Process (self-assessment)

Answer each question honestly — these are the inputs for the leak analysis:

1. **What was I thinking on the flop?**
	Ans: On the flop quite good for EP but assume cannot range bet so I assume we can check raise for protection from high card but I think over apply aggressive check raise when play vs EP position because EP range abit stronger than BU.

2. **What was I thinking on the turn? Did I update my range read?**
	Ans: I assume EP range should be stronger than GTO (over fold when compare with GTO) and Turn did not improve my range and my hand so we will play passive and take some exploit with line XR-X-Over bet instead.

3. **What was the key decision point? What did I think at that moment?**

4. **Did I verify my blockers before acting on the river? (yes/no + how)**

5. **What strategy layer was I using — L1 / L2 / L3? Was it appropriate for this villain?**

6. **If I could replay the hand, what would I do differently?**
	Ans: yes I think we have other combo to check raise with i.e. hearth combo, Ax suited with bdfd

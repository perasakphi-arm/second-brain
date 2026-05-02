---
id: spot/srp-oop-pfc-bb-defend-flop
title: SRP OOP PFC — BB Defend vs BU Flop Strategy (Tony)
type: concept
tags: [srp, oop, pfc, bb-defend, flop-strategy, board-texture, tony, check-raise, protection, donk, spot]
sources:
  - raw/SRP OOP PFR (BB defend).md
aliases: [srp oop pfc bb defend, BB defend vs BU flop, SRP BB defend strategy, Tony BB defend, BB defend check raise strategy, srp oop bb defend]
created: 2026-05-01
updated: 2026-05-01
links_out: [spot/srp-oop-pfc-bb-defend-mistakes, tasks/srp-oop-pfc-bb-defend-study-tasks, concept/three-layers-poker-strategy]
---

# SRP OOP PFC — BB Defend vs BU Flop Strategy (Tony)

**Coach:** Tony  
**Spot:** BB defend vs BU (wide range), SRP  
**Position:** BB = OOP, PFC (caller)

Tony applies the same concepts from SRP IP (BUvBB) and mirrors them to the BB defend side. Although BB is in the response/action role, the framework is the same.

---

## Pool Tendencies Tony Reads

- **A-high dry / K-high:** Pool follows XC33→X→F (over-fold because: high flop bet frequency + pool's turn cbet strategy)
- **Overcards barrel more frequently** than GTO (pool over-aggressive with equity hands)
  - J62 Turn 8 → pool over-cbets with gutshot (Q9/QT/T9 at ~100% vs solver's 60-70%)
- **Over-fold line XC33→X→B33**
- **Over-fold line XR→X→Overbet** (because IP is capped after check-raise)
- **Slight over-bluff B→B→B**
  - Cannot go crazy calling wide formation
  - Texture read matters: J62-T-3 = IP river range is bloated with bluffs (expected overbet turn); J62-5-7 = IP will check back line B-X → play aggressively

---

## Key Planning Questions (Pre-Flop Decision Framework)

Before choosing check-raise vs check-call, ask these 4 questions:

**1. Is this hand easy to call turn?** (e.g., JT, QJ on J62 texture)  
→ Can we pick up equity easily on turn? If yes → check-call is viable.

**2. Are our 2-pair outs good in check-call?** (e.g., 56 on J53)  
→ If we hit 2-pair and do NOT expect an over-cbet → tend to check-raise; if we expect over-aggressive IP action after hitting → check-call and let them spew.

**3. Do we need protection?**  
→ Follow-up: does IP cbet too much?  
- Yes → play protection; ask "are 2-pair outs good?"  
  - No → check-raise  
- Example: QJ5 with JT → no protection needed

**4. Do we have bluff ability on later streets?**  
→ K56 with 54 → turn 7, river 2 = over-bluff viable (theory: bluff generates EV; if IP can't bluff-catch correctly, worst case = 0 EV, best case = EV gain)

---

## Gameplan: AML / KLL Boards (e.g., A72r)

![[Pasted image 20260430152046.png]]

**Check-raise range:**

| Category | Hands | Rationale |
|---|---|---|
| Value (fast play) | 2-pair+ (except A2) | Need to extract before draws complete |
| Bluff | 53, 54, 34 | Pure bluff with straight equity |
| Merge / Protection | 75, 74 (high frequency XR) | Need protection; fold out overcards |

**Tony's entry range:** Float flop (check-call 33%), then take line XC→X→B

### AML Sample Hands

![[Pasted image 20260430162552.png]]
Flop float → turn checks back = green light to bluff.

![[Pasted image 20260430162648.png]]
**Flop A95 rainbow — Hero 96 with bdfd**  
- IP over-cbets 33% or 50% → Hand needs protection → when hit 2-pair not expecting over-aggressive = check-raise. Clear check-raise.

Supplementary — fold equity: BU cannot cbet JTo/QTo at full frequency on this texture → we unblock their fold range.

![[Pasted image 20260430162819.png]]

![[Pasted image 20260430163036.png]]
**Flop A74 flush draw — Hero 76o with block flush**  
- IP over-cbets → protection needed → bluff ability later → clear check-raise.

![[Pasted image 20260430163518.png]]
**Flop A72 flush draw — Hero 75o**  
- Flop overbet? Yes. Protection needed? Yes. Bluff ability? Yes. → Check-raise.

![[Pasted image 20260430163643.png]]
**Flop J42 flush draw — Hero 54 (no bdfd, no flush draw)**  
- Overbet? Yes. Protection? Yes. Bluff ability? Yes. → Clear check-raise.

---

## Gameplan: BML (e.g., K72) — Similar to AML

Strategy is same as A72 with one addition:  
- **Check-raise Axs with bdfd** — e.g., on K72, add A5o because we unblock cbet-fold range (QTo/JTo)

**Example: K72 — Hero A7o**  
Compare check-call vs check-raise:
- Turn 9–A → facing overbet from gutshot hands → hand becomes indifferent; best turn play is check-fold
- But IP over-cbets these hands → facing check-raise on flop → they fold → check-raise prevents the problem
- Tony: check-raise better than check-call here

### KML Sample Hands

![[Pasted image 20260501094419.png]]
**Flop K84 flush draw — Hero 87s (no bdfd, no flush draw)**  
- IP over-cbets small → protection needed → bluff ability → clear check-raise flop.  
- Turn J, River 9: can convert to bluff because IP's strong hands (2-pair, set) already bet turn.

![[Pasted image 20260501094648.png]]
**Flop Kc8s3s flush draw — Hero Ts8h (spade bdfd)**  
- IP over-cbets yes → Hand needs protection? **No** — we hit 2-pair and expect over-aggressive from draws.  
- Action: clear check-call (let draws put money in).

![[Pasted image 20260501094916.png]]
**Flop K64 rainbow — Hero T6s with bdfd**  
- Protection needed? **No** — if we hit 2-pair we expect draw aggression. → Clear check-call.

![[Pasted image 20260501095106.png]]
**Flop K45 rainbow — Hero 95 with bdfd**  
- Protection? **No** — same logic (hit 2-pair + face aggressive line). → Clear check-call.

---

## Gameplan: Low Pair Boards (44x–88x)

Pair boards 44x–88x are not good for BU → we play aggressively.

Check-raise frequency ~20%.

![[Pasted image 20260501130649.png]]

**Hand selection:**
- Overcards with bdfd → check-raise
- Connected hands with backdoor equity (2-way) e.g., 883: check 75, 76, T9
- Sizing: 2× protection sizing

![[Pasted image 20260501130937.png]]

**Concept:**
- Strong Ax/Kx mostly call (KJ, AT)
- Check-raise K2–K7

When flop has flush draw → check-raise more aggressively.

### Low Pair Sample Hands

![[Pasted image 20260501131246.png]]
**Flop 766 — Hero T9 (bdfd + gutshot)**  
- Over-cbet yes → protection yes → bluff ability yes → check-raise.

![[Pasted image 20260501131347.png]]
**Flop 522 rainbow — Hero QJ with bdfd**  
- Over-cbet yes → Protection needed? **No** — check-raising won't fold better hands (KQ/AJ/AQ won't fold → risk running into cooler).  
- Plan: XC→X→bluff almost every river (unblock Ax). → Clear check-call.

![[Pasted image 20260501131617.png]]
**Flop Q55 rainbow — Hero A3o**  
- Protection yes → bluff ability mediocre (only gutshot runouts) → check-raise, but not a clear one.

![[Pasted image 20260501131917.png]]
**Flop 442 flush draw — Hero A2o with bdfd**  
- Protection yes → bluff ability mediocre (protection hand more than bluff) → check-raise for protection if pool over-cbets.

---

## Gameplan: Connected Boards (e.g., Q84 Rainbow)

Focus: aggressive check-raise vs small size.

![[Pasted image 20260501132350.png]]

Same concept as A72:
- No slow-playing value (2-pair+). **Exception:** check-call mid 2-pair (Q4 on Q84).
- Check-raise candidates: gutshot + backdoor equity; 46/74/76 (protection + bluff ability); A8 for protection.

### Connected Board Samples

![[Pasted image 20260501132722.png]]
**Flop Q75 flush draw — Hero 89 (gutshot + bdfd)**  
- Over-cbet small yes → protection yes → bluff ability yes → pure check-raise.

![[Pasted image 20260501132849.png]]
**Flop 752 flush draw — Hero 84 (gutshot + bdfd)**  
- Same framework → pure check-raise.

![[Pasted image 20260501133100.png]]
**Flop Q95 flush draw — Hero A3 with bdfd**  
- Make-outlive concept (fold out worse Ax) → bluff ability via XR-X-Overbet or turn improve → clear check-raise.

**Flop J63 rainbow — Hero K5 with bdfd**  
- Make-outlive with K (fold K7–KT) → bluff ability on hearts (2, 4, 7h) → check-raise.

**Flop J63 rainbow — Hero A5 with bdfd**  
- Make-outlive fold out A7–AT → bluff ability on diamonds → clear check-raise.

---

## Donking (Leading vs IP)

**Why we donk:** Low-card flops need to deny equity AND IP's check strategy >50% on these flops → we need a donk range.

![[Pasted image 20260501133832.png]]

Tony's concept: use the same learned concepts and apply them to leading.

**Leading concepts:**
- **Make outlive** — fold out better hands  
  Example: lead A5 but NOT Q5, because A5 wants to make Qx/Jx indifferent; Q5 wants to keep Qx in their range.
- **Protection**
- **Bluff ability**

### Donk Samples

**Flop 765 flush draw — Hero A8o (bdfd)**  
- Make-outlive Ax → bluff ability via heart complete, 8x; A3/A4 of hearts can also lead.

![[Pasted image 20260501134320.png]]

**Flop 765 flush draw — Hero Q4s (OESD)**  
- Make-outlive Qx → strong blockers → bluff ability.

![[Pasted image 20260501134518.png]]

---

## Summary: Check-Raise Decision Tree

```
IP bets small/medium flop
       ↓
Ask: Does hand need protection?
       ├── No → Is 2-pair dangerous (over-aggressive IP after hitting)?
       │           ├── Yes → Check-call
       │           └── No  → Check-raise (value or merge)
       └── Yes → Do we have bluff ability later?
                   ├── Yes → Clear check-raise (protection + bluff)
                   └── Mediocre → Check-raise (protection only), not as pure
```

## See Also
- [[spot/srp-oop-pfc-bb-defend-mistakes|BB Defend Key Mistakes]] — common errors on this spot
- [[tasks/srp-oop-pfc-bb-defend-study-tasks|BB Defend Study Tasks]] — structured drills for this strategy
- [[concept/three-layers-poker-strategy|Three Layers of Poker Strategy]] — L2 and L3 framework underlying the exploit reads

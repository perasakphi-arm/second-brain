---
id: concept/3bp-oop-pfr-strategy
title: 3-Bet Pot OOP as Preflop Raiser (Tony)
type: concept
tags: [poker, 3bet-pot, oop, pfr, flop-strategy, board-texture, tony, cbet, bluff, value, range-bet, polarize]
sources:
  - raw/3BP OOP PFR.md
  - raw/3BP OOP PFR remain flop.md
aliases: [3BP OOP PFR, three bet pot oop pfr, 3bp oop strategy, Tony 3bet pot, 3bp oop pfr remain flop, 3bp oop pfr flop textures, tony 3bet pot remain flop, 3bp oop remain flop]
created: 2026-04-23
updated: 2026-04-26
links_out: [spots/3bp-oop-pfr-flop-key-mistakes, tasks/3bp-oop-pfr-study-tasks, concept/poker-study-methodology]
---

# 3-Bet Pot OOP as Preflop Raiser (Tony)

**Coach:** Tony

**Context/Ingredients:**
- Tight range (as 3-bettor/PFR)
- Out of Position (OOP)
- SPR medium

---

## Key Concepts (Tony's Framework)

- **Range advantage** → estimate cbet frequency; recognize board texture → different plan per flop type (723, T84, 567)
- **Making outlive** (bet to deny equity and survive to later streets)
- **Population read** → low raise frequency / over fold flop / over stab flop 567
- **Suit awareness** → block flop call และ turn fold เรื่อง blocker สำคัญกว่า SRP
- **Turn and River** → identify what we need to accomplish and where value comes from
- **Where is my value come from?** → บางครั้งเรา value hand ไปอยู่ที่ bluff catcher

---

## Board 1: 742 Rainbow

![[Pasted image 20260422222400.png]]

Tony setup 2 sizes เพื่อเห็น plan ที่ต้องการเล่น

**2 Sizings:**
- 87% pot (polarized/protection)
- 33% pot (blended/thin value)

### B87% — Value
- 88+ (overpairs need protection)

### B87% — Bluff
Direct overcards:
- QT, Q9, J9, JT, KT, KJ
  - Suit block bdfd = nutted bluff (block call)
  - Suit unblock bdfd = less fold equity แต่ barrel ได้บาง turn cards (pool over fold ช่วย)
- ATo, AT
- **AKo**: Tony แนะนำ B50 เพราะ turn สามารถ value bet ได้อีกรอบ; check → 0 EV scenario; OOP ต้องป้องกัน hand กลาย bluff catcher

### Checking Range
- AQ, AJ → dominate bluffing range (A high), ไม่สามารถ value bet และถูก call ด้วย worst ไม่ได้
- KQs
- AA → ไม่ต้องการ protection
- Top set 77

### General Concept
เมื่อ pool leak = over fold → EV การ bet เพิ่มขึ้น → Max exploit = cbet full frequency  
แต่ Tony แนะนำว่าควรมี check range ด้วย

### Turn หลัง Cbet 87%

Turn strategy = ค่อนข้าง passive เพราะ pool over fold ไปแล้ว

**742 Turn 6:**

![[Pasted image 20260422224103.png]]

Range check เพราะ IP range connect กับ turn 6

Concept:
- Upsize flop → Turn plan คือ check jam หรือ check fold
- Pool over fold flop → Turn bluff = overcard + unblock bdfd (ถ้าไม่ได้ improve draw)

**742 Turn flush:**

![[Pasted image 20260422224543.png]]

- Bluff = flush draw
- Check shove ด้วย K,A flush draw

For value: 88+  
Bluff: flush draw + overcard

**742 Turn brick (ไม่ improve flush draw):** betting 50% เพราะได้ fold equity จาก bdfd

### 76s ใน 742

76s ติด pair 7 → bet small แล้ว check call turn ได้  
Bluffing runout คือ overcard เช่น KT, KJ (IP standard bluff flop 742)  
→ 76 เป็น good bluff catch เพราะ unblock bluff turn & river โดยเฉพาะ river non-overcard

---

## Board 2: T52

![[Pasted image 20260423082450.png]]

Bet frequency เพิ่มขึ้นเพราะ T เริ่ม connect กับ range และ turn improve ได้ง่าย

KJ, KQ เริ่ม connect → โอกาส barrel ต่อได้ง่าย

### B87% Value (need protection)
- Top pair: KT, AT, JJ → deny offsuit overcard

### B87% Bluff
- Direct overcard: J9, Q9s
- KJo, KQo

### B33% Value
- AA, Top set, medium top pair (ไม่ต้องการ protection)

### B33% Bluff
- QJ, KJ → สามารถ bet หลาย turn scenario (turn 9-K improve เป็น draw)

### Check
- AQ, AJ (both offsuit & suited) → dominate bluffing range → สามารถ call IP bet ได้
- KQs → เหตุผลเดียวกัน

**Key:** T53 เราจะ bet เยอะ และ turn 9-K = aggressive ต่อ

### Turn หลัง Upsize Flop

![[Pasted image 20260423083204.png]]

**SB Strategy (shove turn):**
- Value: KT+ (fold J, Q)
- Bluff: KQo, KQs, Q9s

**BU Defend vs Shove:**

![[Pasted image 20260423083306.png]]

**Turn connect 7 (flop bet small):**

![[Pasted image 20260423083509.png]]

เล่น passive ไม่สามารถ bet ทุก direct overcard ได้  
Bluff: QJ with diamond = unblock fold

Turn improve 7h → เพิ่ม flush draw โดยใช้ concept unblock fold turn

T9, JT หลัง bet flop small → เล่นเป็น bluff catch  
Flush draw ที่ dominate bluffing range → check call (เช่น AQhh)

---

## Board 3: T85 Rainbow และ T85 with Flush Draw

![[Pasted image 20260423095213.png]]

เทียบกับ T52: bet frequency ลดลง, sizing ส่วนใหญ่เป็น big size

**Strategy change vs T53:** AA เริ่ม bet big เพราะ IP range มี hand call ได้มากขึ้น

### B87% Value (need protection)
- AT, KT, JJ, QQ, KK

### B87% Bluff
- Suited: J9, Q9, K9
- Offsuit: KJ, KQo → block flop float

### Check Call Concept
- Very strong hand ไม่ต้องการ protection
- Hand not strong enough สำหรับ 3-street value (Xc-Xc-Xc หรือ b-Xc-Xc)
- Line check ครอบคลุม turn runout ที่ expect pool aggressive
- Hand less equity

### Check Range
- Top set
- Weak top pair

### Flop Flush Draw Version
เล่น combo ที่ block flush draw หรือ bdfd เป็นหลัก:
- KJo with block flush
- KJs with bdfd หรือ flush draw

---

## Board 4: 235 Wheel Board

![[Pasted image 20260423100151.png]]

Trend:
- KQ: check high frequency
- KJo offsuit → ต้อง select hand ที่ block bdfd

vs B50 → IP range call คือ Ax

### Turn: Shove

![[Pasted image 20260423100356.png]]

- AT pure shove → ทำให้ KQ/KJ (bdfd) fold, put AQ/AJ ใน tough spot, get call จาก 77-88
- AK: สามารถ value bet ได้อีกรอบ (solver มี 2 sizes เพราะ get call จาก worst)

**Key Idea:** ต้องการทำอะไรกับ range ที่ IP interact

---

## Board 5: 567

![[Pasted image 20260423103210.png]]

GTO environment: check high frequency  
แต่ถ้า population over fold → JTs สามารถ bet ได้ (make outlive + 2 overcard + bdfd)

General strategy: check raise small (คล้าย SBvBB board type นี้)
- Deny high card
- ทำให้ pair call ด้วย check raise small
- ไม่ต้องการ build range เป็น pair + draw

Bluff generation: focus ที่ block straight

---

## Hand Samples (Q&A Format)

### Hand 1

![[Pasted image 20260423103825.png]]

Approach คล้าย T52: bet high frequency เพราะ 9xx ไม่ได้ improve range BU  
KQ with block bdfd → สามารถ cbet ได้  
Tony: โดยปกติ check high frequency; vs exploit sim สามารถ bet แต่ Tony คิดว่า check ดีกว่า

### Hand 2

![[Pasted image 20260423104044.png]]

Flop 853 flush draw:
- Pure bluff combo: J9, Q9 diamond & spade
- Hearth combo: สามารถ add เพิ่มเพราะ pool over fold + plan barrel ถ้า turn ไม่ improve double flush draw
- Tony: สามารถ bet big ได้

### Hand 3

![[Pasted image 20260423104248.png]]

KK ใน flop 663 (dry):
- Arm: KK น่าจะ bet small เพราะ check แล้ว A high ส่วนใหญ่ check back + block stabbing hand Kx → raising range = overpair → Jam
- Tony: KK ใน 663 คล้ายกับ AA → เมื่อเจอ raise → **call ดีกว่า jam** เพราะไม่มี bad turn และ most scenario คือ call down จนถึง river

### Hand 4

![[Pasted image 20260423104655.png]]

Flop 664 rainbow (dry):
- Arm: value need protection → clear bet big
- Tony: สามารถ range bet ได้; **key question: where is my value come from?** → check ให้ check back A/K high; bet เพื่อ fold out high card; ถ้าไม่มี read pool over stab → bet ดีกว่า

### Hand 5

![[Pasted image 20260423104903.png]]

Flop 832 flush draw:
- QQ → clear bet big for value and protection (Tony & Arm agree)

### Hand 6

![[Pasted image 20260423110818.png]]

Flop 886 flush draw:
- Arm: polarize strategy; KJo with block flush → clear bet
- Tony: bet มากกว่า check fold แต่ต้อง selective เพราะ flop connect กับ BB range; B50; turn aggressive
- Tony rationale for bet KJo with block flush:
  1. Blocker ดี (block call)
  2. มี equity เมื่อถูก call (2 overpocket)
  3. ไม่ strong พอสำหรับ check call
  4. Fold some better Kx (เช่น KQo)

![[Pasted image 20260423111013.png]]

![[Pasted image 20260423111112.png]]

### Hand 7

![[Pasted image 20260423111341.png]]

Flop 942:
- Arm: คล้าย T52 → bet big/small/check; check AQ,AJ,KQs; KQo ที่ block all bdfd → bet small
- Tony: KQ block 2 backdoors → สามารถ bet ได้; ถ้า check → check call vs 33%

### Hand 8

![[Pasted image 20260423111705.png]]

Flop 855 rainbow (dry):
- BU range ส่วนใหญ่เป็น pocket
- AQo → check call (Arm & Tony agree) vs 50%

### Hand 9

![[Pasted image 20260423111818.png]]

T94 flush draw (คล้าย T85):
- Arm: ลด frequency ลง; solver อาจ check fold แต่ pool over fold → สามารถ bet big ได้
- Tony: **clear check fold**; ถ้าต้องการ bet → ใช้ A5 with heart/spade

### Hand 10

![[Pasted image 20260423112001.png]]

Flop 972 Rainbow:
- Arm: 2-street value line → XC-XC-XC bluff catch หรือ bet small-xc-xc
- Tony: ถ้า upsize flop → **check shove turn** เพราะ expect stab จาก overcard

![[Pasted image 20260423112217.png]]

### Hand 11

![[Pasted image 20260423112353.png]]

Flop T52:
- Arm: check call ได้ เพราะเจอ stabbing by worst
- Tony: flop check call; ถ้าเล่น B-B → River check fold

### Hand 12

![[Pasted image 20260423112614.png]]

743 flush draw:
- A5dd with back flush → clear bet big (Arm)

![[Pasted image 20260423112734.png]]

Tony turn probe:
- 9h → B33 ทำให้ A high fold
- 9c → bet big เพราะ check back ไม่ strong และ 9x ไม่ improve his range
- Flop: ถ้าต้องการให้ fold AJo/AQo/ATs → bet ที่ flop

### Hand 13

![[Pasted image 20260423113012.png]]

Flop 665 flush draw:
- IP range ส่วนใหญ่ 77-TT + suited high card
- QT with bdfd → clear cbet B50 (Arm & Tony agree)

### Hand 14

![[Pasted image 20260423113141.png]]

Flop 643 flush draw:
- Arm: check high frequency แต่ pool over stab → small check raise ได้
- Tony: small check raise หรือ big bet

![[Pasted image 20260423113306.png]]

Turn: check SDV ดีกว่า

### Hand 15

![[Pasted image 20260423113348.png]]

Flop 997 flush draw:
- ต้อง selective เพราะ connect กับ BB range
- TT → clear bet for protection B50 (Arm & Tony agree)

### Hand 16

![[Pasted image 20260423113454.png]]

T93 flush draw:
- Gutshot + overcard + block flush → clear bet (Arm & Tony agree)

### Hand 17

![[Pasted image 20260423113624.png]]

863 flush draw:
- Arm: polarize strategy; ATo ที่ไม่ block heart → bet low frequency
- Turn J → attack AQ ด้วย overbet

### Hand 18

![[Pasted image 20260423113911.png]]

742 flush draw:
- TT → clear bet for protection

### Hand 19

![[Pasted image 20260423113948.png]]

753r:
- Arm: bet small หรือ check call
- Tony: flop check call; turn 7h → block เพื่อให้ Ax call + ป้องกัน 0 EV

### Hand 20

![[Pasted image 20260423114043.png]]

744r (dry):
- Arm: AJo → check; vs 33% check call; vs 50% check fold
- Tony: flop check; turn vs 33% → call

### Hand 21

![[Pasted image 20260423114251.png]]

843 flush draw:
- KQo ที่ไม่ block อะไร → clear check fold (Arm & Tony agree)

### Hand 22

![[Pasted image 20260423114343.png]]

T84 flush draw:
- QJhh = gutshot + overcard → clear bet (Arm & Tony agree)

### Hand 23

![[Pasted image 20260423114509.png]]

843 flush draw:
- KQo ที่ block flush draw + bdfd → สามารถ cbet ได้ (Tony)

### Hand 24

![[Pasted image 20260423114602.png]]

Flop 963 flush draw (คล้าย T53):
- Arm: bet small; 66 → bet small หรือ check call; turn 4c → check call ให้ IP put money กับ KJ/KT
- Tony: turn มี 2 options → bet big หรือ shove river

### Hand 25

![[Pasted image 20260423114907.png]]

873 flush draw:
- Arm: check call ที่ flop ดีกว่า

### Hand 26

![[Pasted image 20260423115033.png]]

872 flush draw:
- QQ → clear bet big

### Hand 27

![[Pasted image 20260423115114.png]]

Flop T56 rainbow:
- QJ → bet small หรือ big ได้ทั้ง 2 options

![[Pasted image 20260423115209.png]]

Turn: สามารถ barrel ได้ (unblock fold + 2 overcard + flush draw)  
เนื่องจาก bet small flop → T ไม่ได้ super improve IP

### Hand 28

![[Pasted image 20260423115349.png]]

T63 flush draw:
- Clear bet big flop (Tony)

### Hand 29

![[Pasted image 20260423125645.png]]

- สามารถ block turn ได้ด้วย 66 เพราะ get call จาก low pair + fold out high card (Tony)

---

## Remaining Flop Textures (Session 2026-04-26)

### Summary Table

| Flop Type | Flop Strategy |
|-----------|---------------|
| BLL | Range bet |
| BML | Range bet |
| BBx | Split strategy — fast play top pair + valuable bluffs with big size; unblock draws |
| BBB | Range bet small; turn play polarize using low pockets as bluff |
| ABx | Split strategy (same concept as BBx) |
| AMx | Range bet; split on turn |

> **Equity Distribution Framework** (from Uri):
> - **Range advantage** — who has the higher average equity?
> - **Nut right now** — who has the stronger current holdings?
> - **Nut in future** — who has more nut potential on future streets?
> Use these three to determine whether to approach a street aggressively, evenly, or passively.

---

### Flop BLL (e.g., Q42r)

Range bet strategy; exceptions = hands with no backdoor draw AND no overcard.

Turn strategy: polarize (similar to T52 playbook).

![[Pasted image 20260424163443.png]]

**Standard bet (Q42r):**
- Equity hands: A5, A3
- Strong blocker + overcard: KJ (unblocks bdfd, blocks top pair)

**AQo vs KQ:**
- AQo checks more — blocks the checking-back range; KQ bets because we don't want Ax to realize equity
- AA follows the same trend as AQo (check high frequency)

**Medium strength hands (77–JJ):**
- Block these pocket pairs to prevent 0-EV scenarios
- River bluff with Kx/Ax → good hero-call becomes pocket 8-type hands (unblock bluffs)

**Turn: Boardway card (e.g., T with heart)**
Good for SB range → bet high frequency because equity improves.

![[Pasted image 20260424164456.png]]

- TT, 99 → block bet + call bluff catch (unblock draws; GTO bluffs check → these are good catchers)
- Tony: design to put yourself in +EV spots

**Check-back strong hands on flop:**
- Top set, mid set → keep low equity in opponent's range (protect value)
- Adjustment: if pool bets are equity-driven → strong hands can check-raise

**Special turn cards (A or K):**
- Bet low pockets / low region hands as un-natural bluffs
- Reason: IP folds better pockets, bluffs when flop hit draws; low pockets deny high card & have equity when called

---

### Flop BML (e.g., Q72r)

Range bet strategy.

Turn: Q72 generates many turn cards that improve equity draws.

**Turn 8 (no flush draw improvement):**

![[Pasted image 20260425082141.png]]

- Standard bluff: gutshot, OESD
- Un-natural bluff: KJ, KT — unblock bdfd AND block top pair

---

### Flop BMM (e.g., K76, K56)

Two-card connected board. The connectivity between the two middle/medium cards makes turn play **more passive** compared to BLL/BML.

**Turn improvement (T–K):** aggressive betting is supported.

**Key for BMM:**
1. Range interaction matters most — determine which approach to take: Aggressive / Even / Passive
2. Use equity distribution (range advantage, nut now, nut future) to determine approach

**Bluff catch thinking (BMM):**
- When considering check-call as bluff catch, ask: what are the turn bluffs?
- Usually boardway cards → **unblock** those to be a good bluff catcher
- On connected turn cards: standard bluff catch = top pair (IP will bluff with boardway card)
- Low-EV bluff catch = one that unblocks boardway cards

**Turn T-K (improves for SB):**

![[Pasted image 20260426075152.png]]

Bet high frequency; block with Tx or low pockets.

---

### Flop BBL (e.g., KQx type)

Frequency: high. Sizing: split between big and small.

![[Pasted image 20260426075648.png]]

**B87% pot:**

Value:
- Top pair needing fast play before board changes (KQ, AA)

Bluff:
- Unblock QT, T9, JT (straight draws)
- Low pockets: 76, 55, 66, 77
- Axs with flush draw + bdfd

**Turn after big bet:**
Tony recommends setting turn at ~50% pot size because BU must defend with un-natural hands.

![[Pasted image 20260426080349.png]]

BU defending vs 50% pot after big flop bet:

![[Pasted image 20260426080556.png]]

Must build a ~35% jamming range (under-jam situation).

**Key:**
- Bet big for value: top pair + valuable hands (AK, KQ)
- Un-natural bluff: low pockets, low suited
- Standard bluff: Axs with backdoor equity / flush draw equity
- Slow play: sets

---

### Flop BBB (e.g., KQT, KT9)

![[Pasted image 20260426081802.png]]

SB bets **small 20%** — attacking only low pockets.

![[Pasted image 20260426081850.png]]

**Turn:**
Bet un-natural with low pockets — attack Ax and mid pairs.

**Key:** On turn, find un-natural bluffs (low pockets, low suited).

---

### Flop AMx (e.g., AJx type)

Flop: range bet.

Turn: play polarize strategy.

**Turn non-flush draw:**

BB response vs B75%:

![[Pasted image 20260426105507.png]]

Folds come from pockets and high cards.

Standard SB behavior: bluff with draws. If range lacks draws, use pair + 5 outs as bluff — folds pockets, denies high card, has equity when called.

![[Pasted image 20260426105758.png]]

SB un-natural bluffs:
- 56, 87
- QJ with heart — unblocks folds AND blocks top pair

---

### Flop ABx (e.g., AJ4, AJ8 type)

Frequency: high. Sizing: 33% and 87%.

Concept: put stack in with strong top pair.

![[Pasted image 20260426110353.png]]

**B87% Value:** fast play AK, AJ — bet big + jam turn.

**Bluff:** low pockets, 65/76 with bdfd.

---

### Hand Samples — Remaining Flop Textures

#### Hand R1

![[Pasted image 20260426110911.png]]

Tony: can build range bet on flop.

#### Hand R2

![[Pasted image 20260426110953.png]]

Tony: flop suitable for big bet — many cards we don't want to reach river. For AK: bet and jam turn.

#### Hand R3

![[Pasted image 20260426111137.png]]

Flop K96 flush draw.
JT: bet small is fine; if holding value hands (KQ, AK, AA) → bet big and plan to jam turn.

#### Hand R4

![[Pasted image 20260426111321.png]]

Flop KT9 (similar to BBB).
Tony: bet 20% flop; turn → check more.

![[Pasted image 20260426111450.png]]

Turn options: check or block — either way we get stacks from Kx; want opponents to put in money with 0-equity hands.

#### Hand R5

![[Pasted image 20260426111557.png]]

Flop Q44 — range bet strategy.

Turn 5s (non-flush):
AQo can check — blocks checking range, unblocks stabbing hands (KT, KJ, etc.).

#### Hand R6

![[Pasted image 20260426111801.png]]

Flop AJ4 flush draw — standard: upsized flop bet + jam turn.

#### Hand R7

![[Pasted image 20260426111902.png]]

Flop Q72 flush draw — range bet flop.
Turn: slow play set to let IP put money in with 0 equity.

#### Hand R8

![[Pasted image 20260426112016.png]]

Flop: range bet. Turn: clear check with top set.

Tony note on 99 (mid set on flop): better to bet yourself for value since IP doesn't bet Ax top pair much and under-bluffs. Differs from Q72 because Q72 has natural bluffs (overcards) — allows checking mid set without losing value.

#### Hand R9

![[Pasted image 20260426112434.png]]

Flop AJ6 flush draw — standard: bet big flop + jam turn for value.

#### Hand R10

![[Pasted image 20260426112656.png]]

Flop: range bet. Turn: polarize strategy.
Clear check with this hand — blocks calls, wants set cooler.

#### Hand R11

![[Pasted image 20260426112750.png]]

Flop QT7 flush — holding gutshot flush draw: plan to realize equity; if can find a line that also denies equity, even better.

Strategy: bet small flop → check-jam turn.

#### Hand R12

![[Pasted image 20260426112934.png]]

Flop A53 rainbow — range bet. Turn: need to slow play.

#### Hand R13

![[Pasted image 20260426113101.png]]

Flop Q23 flush draw — range bet or check hands with no backdoor equity.

#### Hand R14

![[Pasted image 20260426113151.png]]

Flop QQ7 — range bet strategy.

Turn 7: can block bet again to get A-high calls.
Solver plays 88 as good bluff catch, but mistake would be blocking for value AND preventing 0-EV scenario simultaneously.

#### Hand R15

![[Pasted image 20260426113411.png]]

Flop A73 — range bet strategy.

Turn T (no flush): with J9 gutshot → B50 pot puts pressure on pocket region.

#### Hand R16

![[Pasted image 20260426113625.png]]

Flop AA3 flush draw — range bet flop.

Turn 8:
Tony: check-call — unblocks flush draw bluffs; with small sizing, IP may bet low pockets (44, 55) for value + protection.

#### Hand R17

![[Pasted image 20260426113836.png]]

Flop AJ8 flush draw — split strategy: big bet + check.

Turn: close decision with AQo because it blocks his bluffs.

#### Hand R18

![[Pasted image 20260426113947.png]]

Flop J73 (similar to T72) — split: big bet + check.

Turn Ah: consider block to get value again from weak pocket pairs; prevents 0-EV scenario.

#### Hand R19

![[Pasted image 20260426114211.png]]

Flop A92 — range bet strategy.

Turn 6h: two options — check-call (blocks value hand) or block bet (gets call from weaker pockets).

## See Also
- [[spots/3bp-oop-pfr-flop-key-mistakes|Key Mistakes on the Flop & Turn]] — common errors to avoid on this spot
- [[tasks/3bp-oop-pfr-study-tasks|3BP OOP PFR Study Tasks]] — structured drills for this spot
- [[concept/poker-study-methodology|Poker Study Methodology]] — how to prioritize and study this spot type

#### Hand R20

![[Pasted image 20260426114352.png]]

Flop JJ6 flush draw — range bet strategy.

Turn 7h: consider B50 to get flush draw calls + some pocket pairs.

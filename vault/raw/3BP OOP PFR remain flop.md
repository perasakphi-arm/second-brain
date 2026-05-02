Coach: Tony

Summary Table

| Flop | Flop strategy                                                                                                   |
| ---- | --------------------------------------------------------------------------------------------------------------- |
| BLL  | Range bet                                                                                                       |
| BML  | Range bet                                                                                                       |
| BBx  | Split strategy and focus to put stack with top pair and valuable <br>bluff with big size with hand unblock draw |
| BBB  | Range bet small and turn play polarize using low pocket to bluff                                                |
| ABx  | Split strategy using same concept with BBx                                                                      |
| AMx  | Range bet strategy and split turn                                                                               |


## Flop BLL
Tony คิดว่า strategy จะคล้าย T52 แต่เป็น range bet why ?

Exception ที่เราจะ check คือ
- Hand ที่ไม่มี back door และ no over card 

Turn Strategy จะคล้ายกับ T52 เมื่อเราเล่น range bet แล้ว Turn strategy เราจะเล่น polarize

![[Pasted image 20260424163443.png]]
Flop Q42 6 rainbow
Standard bet คือ
- equity hand เช่น A5,A3
- Strong blocker + over card
	- KJ ที่ไม่ block bdfd + block top pair

AQo เทียบกับ KQ
- AQo จะ check เยอะกว่าเพราะ เรา block check back และสำหรับ KQ เราไม่ได้ต้องการให้ Ax realize equity และเราจะเห็น AA เป็น trend เดียวกัน

เรามี medium strength 
- 77-JJ  เราสามารถ block hand พวกนี้ เพื่อ prevent 0EV scenario ซึ่งในตัวอย่าง solver 
- River bluff ด้วย Kx,Ax เพราะฉะนั้น good hero call เลยเป็นพวก pocket 8

Turn Boardway
ตัวอย่างคือ T with hearth เนื่องจาก good for us ทำให้เราสามารถ betting high frequency ได้เพราะว่า equity เรา improve 

![[Pasted image 20260424164456.png]]
Tony คิดว่ามี hand ที่เราสามารถเล่น ได้คือ
- TT,99 เราสามารถเล่น block และ call bluff catch ได้ เพราะว่าเรา unblock draw ที่ call turn แล้วถ้าเรา check ใน GTO จะ bluff
Tony คิดว่าเราสามารถพาตัวเองไปอยู่ใน + EV spot ได้ด้วยการ design พวกนี้

Check back strong hand
- Top set และ Mid set เพราะการ check keep low equity หรือ 0 Equity และ Tony คิดว่า adjustment ถ้า pool bet เป็น equity driven strong hand ของเราสามารถเล่น check raise ได้

Special Hand ถ้า Turn เป็น A,K เราสามารถ cbet พวก low pocket หรือ low region hand เพราะ 
1. IP fold better pocket และ bluff เมื่อ flop hit draw

## Flop BML
ตัวอย่างที่ใช้ Study Q72 rainbow
Flop strategy Range bet

และ Turn เนื่องจาก 7x มันจะค่อนข้างมี Turn ที่จะ improve equity hand ของเราได้ดีเป็นพวก draw
เช่น Turn 8-K เราจะมี group hand ที่ pick up equity

Turn 8 not improve flush draw
![[Pasted image 20260425082141.png]]

Standard bluff
- Gutshot, OESD
Un natural bluff
- KJ,KT unblock bdfd and block top pair

## Flop BMM
เป็น Flop 2 card connect แต่ที่แตกต่างกับ Flop BLL หรือ BML คือ เรื่อง ความเชื่อมต่อกันของ 2 card ทำให้ strategy ที่ Turn เราจะเล่น passive approach 

ตัวอย่าง flop K76 หรือ K56 และ Turn ที่เราสามารถเล่น aggressive ได้คือ T-K 
Key สำคัญคือ
1. เรื่อง range interact ที่ Uri สอน เราต้องรู้ว่าตอนนี้เราต้องการเล่น approach ไหน
	1. Aggressive
	2. Even
	3. Passive
โดยทั้งหมดใช้ equity distribution เป็นตัวแบ่งจะดู 3 เรื่อง
- Range advantage คือ เป็นเหมือนดูค่าเฉลี่ยว่า ใครมี equity มากกว่ากัน
- Nut right now ใครมี strong hand มากกว่ากัน
- Nut in future แล้วใครมีโอกาสที่จะมี Nut ในอนาคตมากกว่ากัน

เมื่อเราจะคิดเรื่อง check call bluff catch ให้คิดว่า Bluff turn มีคืออะไรส่วน
ส่วนใหญ่คือ Board way card เพราะฉะนั้นเราต้อง unblock พวกนั้น
 เมื่อเป็น connect turn card Standard call bluff catch คือ Top pair (why is that ?)
 low EV bluff catch unblock board way card

Turn improve T-K
![[Pasted image 20260426075152.png]]
เรา bet high frequency และมี block สำหรับ Tx หรือ low pocket

## Flop BBL

Frequency และ sizing เปลี่ยนไปไหมจาก BLL, BMM 
คิดว่าเรา bet high frequency และ คิดว่า split 2 size คือ bet big และ small

![[Pasted image 20260426075648.png]]
Bet 87% pot size
Value
- Top pair need to fast play before board change
	- KQ,AA
- bluff เราต้องการที่จะ unblock QT,T9,JT พวกนี้
	- 76,55,66,77
	- Axs with flush draw and bdfd


Turn after bet big
Tony คิดว่าเรา set Turn ให้เป็น 50% pot size ดีกว่าเพราะว่า BU ต้อง defend ด้วย hand เป็น un nutural 

![[Pasted image 20260426080349.png]]

BU defend vs 50% pot size after big bet
![[Pasted image 20260426080556.png]]
ต้องสร้าง Jamming range 35% ซึ่ง under Jam

Key:
- Bet big for value สำหรับ Top pair + valuable
	- AK,KQ
- bluff un natural
	- low pocket, low suited
- Standard bluff
	- Axs with back door equity, flush draw equity
- Slow play
	- Set


## Flop BBB

![[Pasted image 20260426081802.png]]
Sizing for SB bet small 20% เพราะเรา attack low pocket อย่างเดียว

![[Pasted image 20260426081850.png]]
Turn 
เรา bet un natural ด้วย low pocket เพราะต้องการ attack Ax, mid pair

Key:
- Turn เราต้องหา un natural bluff เช่น low pocket, low suited


## Flop AMx

Flop range bet

Turn play polarize strategy 

Turn non flush draw
BB response vs B75%
![[Pasted image 20260426105507.png]]
เราได้ fold จาก pocket และ high card เพราะฉะนั้น 



เนื่องจาก Turn non improve โดยปกติเราจะเล่น passive และ strong hand ก็เล่น check เป็นส่วนใหญ่
SB โดยปกติจะ bluff ด้วย draw แต่ถ้า range ไม่ได้มี draw จะเอา pair 5 out มา bluff เพราะได้ fold pocket และ deny high card สุดท้ายมี equity when call

![[Pasted image 20260426105758.png]]
SB need to create un natural bluff 
- 56,87
- QJ with hearth unblock fold และ block top pair


## Flop ABx

Frequency high
Sizing
- 33
- 87
Concept เดิมคือเราต้องการ put money กับ Strong top pair
![[Pasted image 20260426110353.png]]

B87
Value fast play
- AK,AJ เราต้องการ bet big และ Jam turn
Bluff
- low pocket,65 หรือ 76 with bdfd

## Hand Sample

1.
![[Pasted image 20260426110911.png]]
Tony: สร้าง range bet flop ได้ 

2.
![[Pasted image 20260426110953.png]]
Flop K93 flush draw
Hero: AK
Action Bet small flop and B75 turn
Tony: comment เนื่องจาก flop ค่อนข้าง drawy เพราะฉะนั้นเราควรเล่น Value hand bet big และ Jam Turn สำหรับ Stack size 100 bb

Mistake: value hand bet small flop ใน board drawy

3.
![[Pasted image 20260426111137.png]]
Flop K96 flush draw
Hero JT with bdfd
Action bet small แล้วเจอ min raise
Tony: comment clear call สำหรับ Gutshot with bdfd และ ถ้า Turn hit flush draw เราสามารถเล่น aggressive ได้โดย check raise all-in


4.
![[Pasted image 20260426111321.png]]
Flop KT9 flush draw
Hero: 99
Action bet small flop
Turn Kd
เรา bet b75 
Tony: comment คิดว่าเราควรเล่น check มากกว่าเพราะว่าต้องการให้ 0 Equity hand put money และ Kx ยังไงก็ bet ถ้าเรา check เพราะฉะนั้นการ check ไม่เสีย EV
Mistake: Fast play value no need protection


![[Pasted image 20260426111450.png]]
Turn Option
- จริงๆ play ที่ควรเล่นคือ check หรือ block เพราะว่า ยังไงเราก็ get stack จาก Kx อยู่แล้ว เราต้องการให้ผู้เล่นคนอื่น put money with 0 Equity hand

5.
![[Pasted image 20260426111557.png]]
Flop Q44
Hero: AQo
Flop Range bet strategy ok

Turn 5s non flush draw
คิดว่าเราควร check back AQo เพราะว่า เรา check back range คือ Ax combo และ unblock bluff เช่น KT,KJ และ Value hand ที่ pure bet IP คือ KQ,QJ

Mistake: fast play value hand almost no need protection

6.
![[Pasted image 20260426111801.png]]
Flop AJ4 flush draw
Hero: AQo
Flop bet small 
Tony Comment: ควรเป็น Bet และ shove turn มากกว่าเพราะว่า board ค่อนข้าง connect และมี worst hand call

Mistake: bet small strong value hand flop draw

7.
![[Pasted image 20260426111902.png]]
Flop Q72 flush draw
Hero: 77
Flop range bet ok
Turn: hero bet b75

Tony comment: ที่ Turn เราควร check มากกว่า เพราะว่า keep low pocket และ bluffing region ของ IP คือ KT,KJ ที่เรา unblock

Mistake: fast play value (no need protection)

8.
![[Pasted image 20260426112016.png]]
Flop A94
Hero: AA
Flop Range bet
Turn clear check with top set

Tony Comment เพิ่มเติมสำหรับ 99 ที่เป็น mid set ใน flop Tony คิดว่าเรา bet เอง for value ดีกว่า เพราะว่า IP strategy ไม่ได้ bet Ax top pair เยอะ และ under bluff แต่ต่างกับ Q72 6 เพราะมี natural bluff คือพวก over card ทำให้เราสามารถ check mid set ได้มากขึ้นโดยไม่ loss value 

Mistake: fast play value (no need protection)

9.
![[Pasted image 20260426112434.png]]
Flop AJ6 flush draw
Hero: AJ
Flop เราเลือก bet small
Tony Comment: เนื่องจาก flop drawy และมี hand call ได้เยอะเพราะฉะนั้นควรเล่น bet big และ shove turn

Mistake: Bet small with strong hand OTF drawy


10.
![[Pasted image 20260426112656.png]]
Flop A78
Hero AA
Flop bet small ok
Turn : Hero value B75

Tony Comment เราควร check เพราะว่า block call และ keep cooler in

Mistake: fast play value (no need protection)

11.
![[Pasted image 20260426112750.png]]
Flop QT7 flush
Hero: J9 gutshot flush draw
Flop bet small ok
Turn เรา B75 

Tony comment: turn เราควรคิดถึง Equity realization สำหรับ Big draw Key คือถ้าเราไม่สามารถ bet call Jam ได้เราควรเล่น check raise เอง

Mistake: big draw equity realization

12.
![[Pasted image 20260426112934.png]]
Flop A53 rainbow
Hero AA
Flop range bet
Turn need to slow play

Mistake: fast play value (no need protection)
13.
![[Pasted image 20260426113101.png]]
Flop Q23 flush draw
อาจจะเล่น range bet strategy หรือ check hand ที่ no backdoor equity

14.
![[Pasted image 20260426113151.png]]
Flop QQ7
Hero: 88
Range bet strategy

Turn 7
question เราสามารถ block อีกรอบ โดยทำให้ A high call 
ใน solver เล่น 88 เป็น good bluff catch แต่ ซึ่งที่ผิดพลาดคือเราไม่ได้ block for value และ prevent 0 EV

Mistake: Prevent 0 EV scenario

15.
![[Pasted image 20260426113411.png]]
Flop A73
Range bet strategy

Turn T no flush
with J9 gutshot น่าจะ สามารถเล่น B50 pot ได้ และ put pressure ไปยังพวก pocket region

Mistake: ไม่ได้ Cbet turn with equity hand

16.
![[Pasted image 20260426113625.png]]
Flop AA3 flush draw
Hero 66
Range bet flop

Turn: 8
เรา check , Tony คิดว่าเราน่าจะ check call เพราะ เรา unblock flush draw bluff และ size small เค้าอาจจะ bet low pocket 44,55 for value + protection

Mistake: 0 EV Prevent
17.
![[Pasted image 20260426113836.png]]
Flop AJ8 flush draw
Split strategy เป็น bet big และ check

Turn
คิดว่าค่อนข้าง close สำหรับ AQo เพราะว่า block his bluff

18
![[Pasted image 20260426113947.png]]
Flop J73
Hero: TT
จะมีความคล้าย flop T72
strategy น่าจะเป็น Bet big, check

Turn Ah
Consider block เพื่อ get value อีกรอบจาก pocket weak pair

เพื่อ prevent 0 EV scenario
Mistake: Prevent 0 EV scenario

19
![[Pasted image 20260426114211.png]]
Flop A92
Hero QQ
Range bet strategy

Turn 6h
Consider 2 Option คือ check call เพราะ block value hand หรือ block เพื่อ get call by worst pocket

Mistake: Prevent 0 EV scenario

20
![[Pasted image 20260426114352.png]]
Flop JJ6 flush draw
Range bet strategy

Turn 7h
consider bet 50% pot size เพื่อ get call flush draw และ บาง pocket pair

Mistake: Prevent 0 EV scenario






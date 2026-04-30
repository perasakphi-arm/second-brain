Coach: Tony

Ingredient
- Tight range
- Out of position
- SPR medium

Key Concept of Tony
- Range advantage (estimate cbet frequency) Recognize texture because plan for each type of flop is different
	- 723
	- T84
	- 567
- Making outlive
- Population read
	- low raise frequency
	- over fold flop
	- over stab flop 567
- Suit awareness การ block flop call และ Turn fold เรื่อง blocker และจะสำคัญกว่า SRP
- Turn and river Tony จะ hand ว่าเราต้องการเล่นยังไง และอะไรที่เราต้องการ accomplish
- Important where is my value come from เพราะบางครั้งเรา เรา value hand ไปอยู่ที่ bluff catcher

## 742 rainbow

สำหรับ PIO solver Tony setup 2 size Flop ทำให้เห็น plan ที่ต้องการเล่น
![[Pasted image 20260422222400.png]]
ถ้าเราเปรียบเทียบ strategy ระหว่าง
- KK vs TT
- KJo vs KQs
ซึ่งจะแตกต่างกันทำให้เราเห็น Concept ที่สำคัญในการเล่น

โดยเราแบ่ง sizing เป็น 2 แบบคือ
- 87%
- 33%
โดย hand ที่เราต้องการเล่น 87% คือ
Value
- 88+
bluff
direct over card
- QT,Q9,J9,JT,KT,KJ 
	- suit block bdfd เป็น nutted bluff ที่ flop เพราะเรา block call
	- suited ที่ไม่ block bdfd ที่ flop เราได้ fold equity น้อยลงแต่ว่า บาง Turn card ที่เราจะสามารถ bet ต่อได้เมื่อ Turn card ไม่ได้ improve flush draw Tony คิดว่าใน Solver เรา bet ด้วย suit unblock bdfd น้อย แต่กับ real game คิดว่าพอจะ bet ได้เพราะ pool over fold
- ATo,AT
Specific Question
- AKo Tony คิดว่าเราสามารถ B50 เพราะที่ Turn เราสามารถ value bet ได้อีกรอบ แต่ถ้าเรา check เราจะเจอ scenario ที่เป็น 0 EV ได้ เพราะฉะนั้น OOP เราต้องพยายาม prevent 0 EV ไม่ Turn hand เป็น bluff catcher 

Checking range
- AQ,AJ เพราะเราเจอ stabbing by worst hand เพราะ dominate bluffing range คือพวก A high และไม่สามารถ value bet และถูก call ด้วย worst ได้
- KQs
- AA เพราะเราไม่ได้ต้องการ protection
- top set 77

General Concept เมื่อ leak ของ pool เป็น over fold เพราะฉะนั้น EV การ bet จะเพิ่มขึ้นเพราะฉะนั้น Max exploit คือเรา cbet full frequency แต่ Tony คิดว่าเรา ควรมี check

After cbet 87% pot size
Turn เราจะเล่นค่อนข้าง passive เพราะว่า pool over fold ไปแล้ว

ตัวอย่างเมื่อ Turn connect
742 Turn 6

![[Pasted image 20260422224103.png]]
เราเล่น range check เพราะว่า range ของ IP connect กับ Turn 

สำหรับ T+ จริงเป็น good turn แต่เนื่องจาก pool over fold flop เพราะฉะนั้น strategy ที่เราควร check ค่อนข้างเยอะ โดย concecpt คือ
- เมื่อ upsize flop ทำให้ Turn plan คือ check jam หรือ check fold
- เนื่องจาก pool over fold flop เพราะฉะนั้น Turn ถ้าไม่ได้ improver draw เรา จะ bluff
	- Over card + unblock bdfd
- Turn flush
	- straight forward คือเราจะ bluff ด้วย flush draw 
	- off suit block flush

![[Pasted image 20260422224543.png]]
Mostly check shove ด้วย flush draw K,A พวกนี้ และ 
for value
- 88+
bluff
- flush draw + over card

แต่ strategy ถ้า Turn brick ไม่ได้ improve flush draw เราจะ betting 50% เพราะเราได้ fold equity จาก bdfd

Summary
![[Pasted image 20260422224913.png]]

สำหรับ Hand 76s ที่เราติด pair 7 Tony คิดว่าเราสามารถเล่น bet small แล้ว check call turn ได้เพราะว่า bluffing runout ที่ natural bluff คือ over card เช่น
Flop
742 9 
IP: Standard bluffing คือ KT,KJพวกนี้

เพราะฉะนั้น 76 จะสามารถเล่นเป็น good bluff catch ได้ เพราะว่า unblock bluff turn และ River โดยเฉพาะ River ไม่ได้ improve bluffing range non over card

## T52

เราจะ bet frequency เพิ่มขึ้นเพราะว่า T จะเริ่ม connect กับ Range รวมถึง Turn มันจะ Improve range เราได้ง่ายขึ้น

![[Pasted image 20260423082450.png]]

เรา bet เยอะขึ้นเพราะว่า range ที่เป็น KJ,KQ เริ่ม connect และมีโอกาส barrel ต่อได้ง่าย
Tony คิดว่า concept จะคล้ายๆ กับ 752 คือ

B87%
Value hand ที่ต้องการ protection จะเป็น 
- Top pair KT,AT,JJ เพราะได้ deny offsuit over card

Bluff
- Direct Over card พวก J9,Q9s
- KJo, KQo


B33%
Value hand ไม่ได้ต้องการ protection อาจจะเล่น bet small หรือ check
- AA, Top set , medium top pair
Bluff
- QJ,KJ เพราะว่าเราสามารถ betting ได้หลาย scenario Turn 9-K เพราะเรา Improve เป็น draw


Check
- AQ,AJ ทั้ง offsuit และ suit เพราะ เมื่อ IP bet เราสามารถเล่น call ได้ เพราะ dominate bluffing range
- KQs เหตุผลเดียวกัน

ซึ่งสำคัญคือ T53 เราจะ bet ค่อนข้างเยอะ และ Turn 9-K เป็น Turn ที่เราจะเล่น aggressive ต่อ

ตัวอย่าง Turn
หลังจาก upsize flop เราจะ shove turn

![[Pasted image 20260423083204.png]]

SB strategy
Value
- KT+ เพราะเรา fold J,Q
bluff
- KQo,KQs,Q9s 


BU defend vs shove
![[Pasted image 20260423083306.png]]


ตัวอย่าง Turn ที่ connect 7 
flop bet small

![[Pasted image 20260423083509.png]]
เราจะเล่น passive และไม่ได้สามารถ bet ทุก direct over card ได้
โดยเราจะเล่น bluff ด้วย QJ with diamond ที่เป็น unblock fold

ถ้า Turn improve 7h
เราจะเพิ่มจากด้านบนคือ flush draw ใช้ concept เดิมคือ unblock fold turn 

สำหรับ T9,JT เมื่อเรา bet flop small เราจะเล่น hand นี้เป็น bluff catch
- flush draw ที่ dominate bluffing range จะเล่น check call เช่น AQhh

## T85 rainbow และ T85 with flush draw
เมื่อเทียกับ T52 คือ bet frequency ลดลง และ sizing ส่วนใหญ่เป็น big size

![[Pasted image 20260423095213.png]]

Strategy change เมื่อเทียบกับ T53 คือ AA จะเริ่ม bet big เพราะใน range ของ IP มี hand call ได้มากขึ้น
แต่สำหรับ hand class อื่นๆ จะเล่นด้วย concept เดิม

B87%
Value need protection
- AT,KT,JJ,QQ,KK
bluff
- suit
	- J9,Q9,K9
- offsuit
	- KJ,KQo เราต้องการ block flop float 

สำหรับ check call concept
- very strong hand และไม่ต้องการ protection
- hand not strong enough สำหรับ 3 street value
	- Xc-Xc-xc
	- b-xc-xc
- และใน line check เรา cover turn run out ที่เราจะ expect pool aggressive
- hand less equity

Check
- top set
- weak top pair

ถ้าเป็น flop flush draw
เราจะเล่น combo ที่ block flush draw หรือ bdfd เป็นหลักเช่น
KJo with block flush , KJs with bdfd หรือ flush draw

## 235 Wheel board

![[Pasted image 20260423100151.png]]
Trend:
KQ check high frequency ?
Offsuit เช่น KJo เราต้อง select hand ที่ block bdfd

เนื่องจาก Texture นี้ vs B50 
Range ที่ Call IP คือ Ax

On turn we play shove
![[Pasted image 20260423100356.png]]
And selection

AT pure shove เพราะว่าเรา ทำให้ KQ,KJ ที่เป็น bdfd fold และ put tough spot ให้ AQ,AJ tough spot และ get call ด้วย 77-88

และที่ใน solver มี 2 size เพราะ AK สามารถ value bet ได้อีกรอบ เพราะ get call จาก worst 
Key Idea คือเราต้องการทำอะไรกับ Range interact ของ IP


## 567

![[Pasted image 20260423103210.png]]
โดยปกติใน GTO environment เราจะเล่น check high frequency แต่ว่า ถ้าเรา lock ให้ population over fold hand พวก JTs สามารถ bet ได้เพราะ เรา make outlive และ เรามี 2 over card with bdfd

General strategy เราจะเล่น check raise small คล้ายๆ กับ SBvBB ที่เป็น board type นี้
เพราะ เรา deny some high card และ ทำให้ pair call ด้วย check raise small size เราไม่ได้ต้องการ build range เป็น pair + draw

การ generate Bluff เรา focus ที่ block straight


## Hand sample

1.
![[Pasted image 20260423103825.png]]
Arm: คล้ายๆ กับ T52 ซึ่งจะเป็นการ bet high frequency เพราะว่า 9xx ไม่ได้ improve range BU มากนัก
และ KQ with block bdfd คิดว่าสามารถ cbet ได้ 

Tony: คิดว่า ปกติจะ check high frequency แต่เมื่อเทียบกับ T64 ใน exploit sim สามารถ bet ได้แต่ Tony คิดว่า check ดีกว่า

2.
![[Pasted image 20260423104044.png]]
Arm think
Flop 853 flush draw
เราจะเล่น bet big และ check ซึ่ง
Pure bluff combo คือ
- J9,Q9 diamond และ spade
- แต่สำหรับ Hearth combo คิดว่าสามารถ add เพิ่มมาได้เพราะ pool over fold และ plan คือ barrel ถ้า turn ไม่ได้ improve เป็น double flush draw

Tony: คิดว่าสามารถ bet big ได้เหมือนกัน


3.
![[Pasted image 20260423104248.png]]
Arm
เนื่องจาก flop dry คิดว่า KK สามารถเล่นได้หลายแบบ
คิดว่า K น่าจะเล่น bet small มากกว่าเพราะว่า check แล้ว A high ส่วนใหญ่จะ check back และเรา block stabing hand Kx, แต่เราคิดว่า raising range มันคือ Over pair เป็นส่วนใหญ่เราเลย Jam

Tony: คิดว่า hand KK ใน flop 663 จะมีค่าคล้ายกับ AA เมื่อเราเจอ raise คิดว่า call ดีกว่า jam เพราะว่า ไม่ได้มี bad turn และ ถ้า hit A คิดว่า ซึ่ง most of scenario คือ call down จนถึง river 

4.
![[Pasted image 20260423104655.png]]
Flop 664 rainbow
Arm
Dry flop และ hand เราเป็น value ที่ต้องการ protection เพราะฉะนั้น clear bet big

Tony: flop นี้คิดว่า flop นี้สามารถเล่น range bet ได้ คำถามที่สำคัญคือ where is my value come from คือ check แล้วให้เค้า check back A,K high แต่การ bet เพื่อ fold out high card และ ถ้าเราไม่ได้มี read ว่า pool over stab คิดว่าการ bet จะดีกว่า

5.
![[Pasted image 20260423104903.png]]
Flop 832 flush draw
Arm thought
- คิดว่าเราควร bet big กับ QQ เพราะต้องการ deny over card และ get value

Tony
- clear bet big for value และ protection

6.
![[Pasted image 20260423110818.png]]
Flop 886 flush draw
Arm
คิดว่า เป็น flop ที่เริ่ม connect น่าจะเล่น polarize strategy แต่สำหรับ combo KJo with block flush clear bet

Tony: คิดว่าควรเอาไปเล่น bet มากกว่า การ check fold แต่เราจำเป็นต้อง selective เพราะ flop ค่อนข้าง connect กับ BB range sizing b50 และ Turn น่าจะเล่น aggressive
ที่ Tony คิดว่า bet KJo with block flush 
1. เพราะ blocker เราดี คือ block call
2. มี equity เมื่อถูก call และเป็น 2 over pocket
3. ไม่ได้ strong ที่จะเล่น check call
4. fold some better Kx เช่น KQo

![[Pasted image 20260423111013.png]]

ตัวอย่าง strategy ที Turn
![[Pasted image 20260423111112.png]]

7.

![[Pasted image 20260423111341.png]]
Flop 942
Arm:
Flop นี้ approach น่าจะคล้ายๆ กับ T52 ซึ่งจะเป็น bet big , bet small และ check
โดยปกติจะ check AQ,AJ เป็นหลัก และ KQs
แต่สำหรับ KQo ที่ block all bdfd คิดว่าสามารถเอามาเล่น bet small ได้

Tony: คิดว่าถ้าเรา KQ เรา block 2 back door สามารถ bet ได้ หรือถ้าเราเล่น check คิดว่าน่าจะเป็น xc vs 33%

8.
![[Pasted image 20260423111705.png]]
Flop 855rainbow
Arm: คิดว่า flop นี้ค่อนข้าง dry เพราะ range ของ BU จะเป็น pocket เป็นส่วนใหญ่ สำหรับ AQo คิดว่าสามารถเล่น check call ได้

Tony: check call vs 50% 

9.
![[Pasted image 20260423111818.png]]
T94 flush draw
Arm
จะคล้ายกับ T85 ซึ่งเราจะลด frequency ลง คิดว่า hand เราใน solver อาจจะเล่น check fold แต่ถ้า pool over fold คิดว่าสามารถ bet big hand นี้ได้

Tony: คิดว่า hand นี้ clear check fold และถ้าต้องการ bet ให้เรา A5 with hearth และ spade

10.
![[Pasted image 20260423112001.png]]
Flop 972 Rainbow
Arm:
คิดว่า  เนื่องจากเป็น 2 street value line ที่เราเล่นได้คือ
- XC-XC-XC bluff catch หรือ bet small - xc-xc

Tony: คิดว่า ถ้าเรา upsize flop เราต้องการ check shove turn เพราะว่า tony คิดว่าเรา เจอ stab จาก over card เพราะฉะนั้นสามารถ check shove ได้
![[Pasted image 20260423112217.png]]


11.
![[Pasted image 20260423112353.png]]
Flop T52

Arm: คิดว่า hand สามารถเอาไปเล่น check call ได้ เพราะเจอ stabing by worst

Tony: คิดว่า flop check call แต่ถ้าเราเล่น B-B และ River check fold

12.
![[Pasted image 20260423112614.png]]
743 flush draw
Arm:
A5dd with back flush คิดว่า clear bet big

Tony:
![[Pasted image 20260423112734.png]]
Turn probe สำหรับ 9h เราสามารถใช้ b33 เพื่อทำให้ A high fold ได้ แต่ว่า ถ้าเป็น 9c เราจะ bet big เพราะว่า check back ไม่ได้ strong และ 9x ไม่ได้ improve his range

ที่ Flop ถ้าเราต้องการให้เค้า fold Ajo,AQo หรือ ATs เราจะ bet ที่ flop


13.
![[Pasted image 20260423113012.png]]
Flop 665 flush draw
Arm: connect นิดหน่อย แต่ main range ของ IP คือ 77-TT และ suited high card เพราะฉะนั้นคิดว่า QT with bdfd clear bet 50% pot size

Tony: Flop คิดว่า 2 over card + bdfd clear cbet

14
![[Pasted image 20260423113141.png]]
Flop
643 flush draw
Arm
เป็น flop ที่ check high frequency แต่ pool over stab เพราะฉะนั้นคิดว่า สามารถ small check raise ได้

Tony คิดว่า flop เล่น small check raise หรือ big bet

![[Pasted image 20260423113306.png]]
Turn คิดว่า check SDV ดีกว่า

15
![[Pasted image 20260423113348.png]]
Flop 997 flush draw
Arm คิดว่าเป็น flop ที่ต้อง selective เพราะ ค่อนข้าง connect กับ BB range แต่สำหรับ TT คิดว่า clear bet for protection sizing B50

Tony: คิดว่า clear bet

16
![[Pasted image 20260423113454.png]]
T93 flush draw
Arm:
คิดว่า เนื่องจากเราเป็น gutshot คิดว่า clear bet และ มี block flush clear bet

Tony: คิดว่า flop น่าจะ bet

17
![[Pasted image 20260423113624.png]]
863 flush draw

Arm
คิดว่า เป็น Flop ที่จะเล่น polarize strategy แต่คิดว่า ATo ที่ไม่ได้ block hearth น่าจะ bet low frequency 
และ เมือ Turn J เราต้องการ attack AQ เลยต้องใช้ Over bet

18
![[Pasted image 20260423113911.png]]
742 flush draw
Arm TT clear bet for protection 

19
![[Pasted image 20260423113948.png]]
753r
Arm เล่นได้ 2 แบบคือ bet small หรือ check call

Tony คิดว่า flop check call และ Turn 7h คือเรา block เพื่อให้ Ax call และป้องกัน 0 EV

20
![[Pasted image 20260423114043.png]]
744r
Arm dry flop และคิดว่า Ajo น่าจะเล่น check แต่อาจจะเล่น check fold vs 50% แต่ vs 33% น่าจะ check call

Tony: flop check และ Turn vs 33% น่าจะ call 

21
![[Pasted image 20260423114251.png]]
843 flush draw

Arm คิดว่า clear check fold สำหรับ KQo ที่ไม่ได้ block อะไรเลย
Tony: flop clear check

22
![[Pasted image 20260423114343.png]]
T84 flush draw

Arm: flop clear bet Gutshot + over card สำหรับ QJhh 
Tony: คิดว่า clear bet

23.
![[Pasted image 20260423114509.png]]
843 flush draw
tony คิดว่า เราสามารถ cbet ได้ด้วย KQo ที่ block flush draw และ bdfd

24.
![[Pasted image 20260423114602.png]]
Flop 963 flush draw

Arm:
จะคล้ายๆ กับ flop T53 เพราะฉะนั้นคิดว่า สามารถเล่น bet small และ และ 66 คิดว่าเล่น bet small, check call ได้
แต่ในเกมส์เราเลือก check และ turn 4c คิดว่า check และ ให้ เค้า put money กับ KJ,KT และเป็น check call

Tony:
- Turn มี 2 option คือ bet big และ shove river

25
![[Pasted image 20260423114907.png]]
873 flush draw

Arm คิดว่า line คือ check call จะดีกว่าที่ flop

26
![[Pasted image 20260423115033.png]]
872 flush draw
Tony: QQ clear bet big

27
![[Pasted image 20260423115114.png]]
Flop T56 rainbow
Tony: QJ clear bet small หรือ big ได้ทั้ง 2 option

![[Pasted image 20260423115209.png]]
Turn Tony คิดว่า เราสามารถ barrel ได้เพราะเรา unblock fold และเป็น 2 Over card + flush draw
แต่เนื่องจาก เราใช้ bet small flop เพราะฉะนั้น T ไม่ได้ super improve IP 


28
![[Pasted image 20260423115349.png]]
T63 flush draw

Tony: Clear bet big flop

29
![[Pasted image 20260423125645.png]]
Tony: คิดว่า สามารถ block turn ได้ด้วย 66 เพราะ get call ด้วย low pair และ fold out พวก high card
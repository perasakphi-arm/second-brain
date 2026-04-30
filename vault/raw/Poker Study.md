Coach: Wakko

วันนี้จะมา discuss เกี่ยวกับ เรา study อะไรจาก poker , study อย่างไร
และเราจะ Improve อย่างไรอย่างต่อเนื่องสำหรับ poker player

![[Pasted image 20260418215147.png]]
1. The road that lies ahead, your starting point จะเป็นการให้คำแนะนำทั่วๆไป
2. How to determine what to study เป้นการให้ guide line ว่าเราควรลงทุน study spot ไหนก่อน
3. เปลี่ยน Mind set จาก What เป็น why เพื่อสร้าง Heuristics , concept หรือ poker theory
4. power of gathering data
5. Process of improvement (Feed back loop)

## How to determine what to study:

![[Pasted image 20260418215534.png]]

แบ่งเป็น dimension 
- which street to study ใน Cash game

1. River ลักษณะของ River คือ
	1. low frequency
	2. แต่ big pot
	3. big deviations จาก Theory
	4. Highest cost เมือ่ screwing up

Require: **holistic approach** 

Wakko พูดเพิ่มเติม ถ้า spot เกิดขึ้นบ่อย เราจะเล่นแบบ base line strategy (GTO) ต้องมี small nuance เพื่อเพิ่มความ accurate แต่ที่ River range ของทั้งสองคนที่มาถึง River เปลี่ยนไปจาก GTO เยอะ เราไม่สามารถใช้ วิธีการ study flop มา study river

![[Pasted image 20260418220041.png]]
Leak ที่ River ส่งผลไปยัง Flop EV ด้วย Ripple effect

ตัวอย่าง River leak สามารถส่งผลมาที่ flop strategy
BU v BB SRP IP PFR
K65 rainbow 
ใน GTO strategy เราสามารถเล่น Range bet strategy ได้ แต่ถ้าเรารู้ว่า BB over fold line
XC-X-XF เป็น Over fold เพราะฉะนั้น strategy ที่เป็นไปได้สำหรับ IP คือ
Bs-X-B เป็น line ที่เรา air มาอยู่


![[Pasted image 20260418220517.png]]

2. Flop Strategy
	1. lower frequency
	2. lower pot size
	3. แต่สิ่งสำคัญคือ การเลือก line ไปเข้าที Turn , River
	4. manipulate range ของ BB ด้วย action เช่น bet small, over bet หรือ check และทำความเข้าใจว่า EV ใน future generate ยังไงจาก line ที่เราเลือก
3. Preflop
	1. lowest pot size
	2. high frequency
	3. ไม่ได้ยากที่จะเล่นให้ถูกต้องตาม solver
	4. แต่เราสามารถใช้ adjust ด้วย concept ripple effect ได้
4. Turn
	1. ถ้าเรา looking head จาก flop มา Turn จะเป็นแค่ street เชื่อม เพื่อ River plan


![[Pasted image 20260418220940.png]]
ยิ่งเป็น street แรกๆ เช่น Preflop หรือ flop เราสามารถ follow GTO strategy ได้ แต่ถ้าไปถึง River แล้วจะเป็นใช้ Poker Theory ใน solve ปัญหามากกว่า เช่นเราจะ bluff หรือ จะไม่ bluff

River จะเป็นการดูว่า Over bluff,under bluff , over call , under call เพราะที่ River ไม่ได้มี next street ให้พิจารณา เพราะฉะนั้น River ต้อง เข้าใจว่า range ของคู่แข่งเป็นไง

![[Pasted image 20260418221316.png]]
แม้ว่า wakko คิดว่าควรเข้าใจ poker แบบ street ต่อเนื่องกันจะดีกว่า เพราะทุกอย่างมันเชื่อมกัน แต่แนวทางการศึกษาที่แตกต่าง ก็อาจจะเหมาะในบาง street หรือ scenario 

Other approach เพื่อศึกษาแต่ละ street
![[Pasted image 20260418221516.png]]
Preflop: เป็น memories เป็น streety สามารถทำได้

Flop: เป็นแบบ base line strategy และก็จะสามารถใช้ approach เดียวกับ Turn ได้

Turn: เป็นการ apply poker theorical concept เพราะว่าเป็น street สุดท้ายที่เราจะสามารถ manipulate Equity ได้เช่น deny equity เป็นต้น

River: เป็นการใช้ Protocol หรือ Rule bluff system หรือ bluff catch system

แต่ Wakko ยังเน้นว่าเราควรเข้าใจ Why 


## What spot are wort for study

![[Pasted image 20260418221851.png]]

1. The spot that are worth studying ตามลำดับนี้
	1. Spot ที่เกิดขึ้นบ่อย และเริ่มจาก Initial raise (IR) เพราะว่าเราต้องรู้ Action ที่ถูกต้องควรทำอะไรบ้าง และ สำหรับ Wakko IR จะเน้นเล่นตาม Theory ดังนั้น เมื่อเรามาเป็น defend เราเลยสามารถ Exploit ได้ดีเพราะว่า เรารู้ว่าอะไรถูกต้อง
	2. Big average pot size
	3. Your current leak
	4. Population leak สำหรับ population เราใช้ Framework เดียวกันกับตอนเราหา leak คือ spot ไหนที่ Population deviate ออกจาก theory เยอะสุด เพราะ population deviate จาก GTO เท่าไหร่ เรายิ่งสร้าง EV ได้เยอะเพราะสามารถ สร้าง exploit strategy ได้

สำหรับ 6-max cash
![[Pasted image 20260419101621.png]]
- Most of my winrate มาจาก SRP-IP PFR โดยเฉพาะ BUvBB หรือ CO v BB ปกติเราจะเห็นว่า spot นี้ทุกคนเล่นมี Win rate แต่เราต้องเปรียบเทียบกับ GTO winrate และ Crushing player โดยที่เราควร perform ได้ดีกว่า GTO winrate เพราะว่า Population มี Leak ใน Game defend
	- เราเลือก spot ตาม Protocol คือ SPR IP PFR และ Cbet node เพราะว่าเกิดขึ้นบ่อย และ Texture ที่เราจะ study ก็ตาม Protocol study คือ เกิดขึ้นบ่อย
- 3BP OOP PFR เป็น pot ที่ไม่ได้เกิดขึ้นบ่อย แต่ว่า pot size มีขนาดใหญ่
- SRP OOP PFC เราสามารถ study SRP IP PFR คู่กับ SRP OOP PFC เพราะเป็น spot คู่ตรงข้าม เหมือนกับ 3BP OOP PFR คู่กับ 3BP IP PFC

ทำไม Wakko ถึงเลือก study แค่ 4 spot นี้ให้ Master ในตอนเริ่มต้น เพราะว่า
1. Biggest win rate contributor และ สอน poker theorical และวิธีการทำงาน main spot ใน poker
	1. PFR IP/OOP
	2. PFC IP/OOP
		เพราะว่า Concept ต่างๆ จะย้อนกลับมาเมื่อ study spot อื่นๆ และเราดูสิ่งที่ shift

Key สำคัญคือ เราต้อง study แบบ Zoom in และ Zoom out และต้อง focus why เพื่อให้ scale ไปได้กับ spot อื่น

![[Pasted image 20260419112226.png]]
Priority 2
- SRP - Multiway ถ้าเราเล่น call IP เราจำเป็นต้องศึกษา ใน online หรือว่า Live poker เป็น Scenario ที่เกิดขึ้นบ่อยมาก โดยเฉพาะถ้าเกมส์มี Fish จะเกิด Multiway
- 3BP-IP* ถ้าเราเล่น Preflop 3BP อย่างเดียวจะค่อนข้าง สำคัญ
- 4BP เพราะว่า Pool Make A lot of mistake

Priority 3
- SRP - OOP IR
	- Key SBvBB
- SRP IP PFC ขึ้นกับ Preflop Strategy
- 3BP OOP PFC

Wakko คิดว่าการสร้าง strategy ใน spot
- SRP IP PFR ต่างกับ 4BP เพราะความบ่อยในการเกิด ถ้าเกิดบ่อยเราต้องการเพิ่ม nuance ในการเล่น

![[Pasted image 20260419112640.png]]
ถ้า Spot เกิดขึ้นบ่อยเราจะ adding nuance และ ความซับซ้อน เข้าไป แต่ถ้าไม่ได้เกิดขึ้นบ่อย เราก็ลดความซับซ้อนลงได้

ตัวอย่าง
- SRP IP PFR - เรามี flop size per texture เพิ่ม smaller nuances เป็น per texture
- 4BP Gameplan เป็น simplify strategy หรือ flop Axx คือ ใช้กับทุก Axx ไม่ได้พยายาม split เป็นเหมือน SRP IP PFR ABx,AML เป็นต้น

![[Pasted image 20260419112917.png]]
Formation และ Line ในการ study
- wide formation ก่อนเพราะว่าเกิดขึ้นบ่อย
- simplify tree ด้วยการ merge spot & Skipping spots
	- ตัวอย่างเรา 
		- study BUvBB SRP IP PFR
		- และเราดูความแตกต่างเมื่อเป็น MP v BB และความ EPvBB เพราะ Concept ที่ใช้ใกล้เคียงกัน
- Most Common line (Cbet IP)

ตัวอย่างการ simplify tree
![[Pasted image 20260419113137.png]]
เมื่อเราต้องการ Study playing OOP vs fish เราจะใช้ Average range ของเราเทียบกับ Average range ของ fish

ซึ่งที่เราต้องเข้าใจคือ เราจะเล่นยังไงเหมือนเป็น OOP กับ fish
- SRP, Range interact ค่อนข้างสำคัญ แต่สิ่งที่สำคัญเมื่อเล่นกับ fish คือ Tendencies ของ fish มากกว่า Range Interact

![[Pasted image 20260419113422.png]]
สำหรับ Spot ที่เกิดขึ้นบ่อย เราต้องการ Base line แต่ spot ที่ไม่ได้เกิดขึ้นบ่อยเราต้องเล่น Game Layer 3 คือ Solver Problem On fireeeee! 

![[Pasted image 20260419113531.png]]
แทนที่เราจะ study จาก scratch ทุกครั้ง แต่ให้เราเชื่อมโยงกับสิ่งที่เรา study ไปแล้ว แล้วเปรียบเทียบว่าอะไรเปลี่ยนไป
ตัวอย่าง
- EPvBB , BUvBB เปลี่ยน SPR IP PFR เป็นต้น

![[Pasted image 20260419113701.png]]
4. Which board to study and which subset to use
	follow ตาม Protocol คือ 
	- Frequency
	- pot size

![[Pasted image 20260419113805.png]]


## Flop ที่เกิดขึ้นบ่อย
![[Pasted image 20260419113944.png]]
เปรียบเทียบความ connect
- Un pair และ No Straight เป็น Flop ที่เกิดขึ้นบ่อย
- 2 Tone เกิดบ่อยกว่า Rainbow
- Mono ไม่ค่อยเกิดขึ้น
เพราะฉะนั้นถ้าเราจะเลือก board type ในการ study เลือก 2 Tone มากกว่า Rainbow

Flop Texture
- HLL,HML,HMM เกิดขึ้นบ่อยกว่า low card
	- เป็น flop K high มากกว่า T high เพราะฉะนั้นเราจะ study K73 มากกว่า KQJ
	- และ board มี connect x56 เป็นต้น K56
- LLL
	- Pair
	- Straight
- HHM,HHL
	- Wheel board เกิดขึ้นบ่อยใน Board group นี้

Turn 
- Non Complete (Blanc) 43%
	- ตัวอย่าง เรา study K65 เราดูที่ Blank T-A และ block low card เป็นต้น
- Straight complete 27%
- Pair
- Complete flush 12%

![[Pasted image 20260419114653.png]]
Turn จะ study เป็น holistic approach แตกต่างกับ Flop
- Complete turn
- Blank Turn
ทั้งสอง Turn จะมีความแตกต่างกัน


![[Pasted image 20260419114829.png]]
แล้วเราจะใช้ Range ไหนในการ Study และ Setup Tree ยังไง ?
- Wakko คิดว่า spot less combo เราควร study แบบ weight range เช่น 4BP เพราะจะมี ผลกับ Strategy ค่อนข้างเยอะ
- Merge range สำหรับ Low frequency spot เช่น 4BP, หรือ 3BP OOP PFC
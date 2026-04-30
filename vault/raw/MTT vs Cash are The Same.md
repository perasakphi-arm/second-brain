Coach: Wakko

Vission ที่ Wakko ใช้ในการ approach poker strategy 

![[Pasted image 20260419154524.png]]
1. Poker is poker, why MTT's และ Cash game are the same เนื่องจาก course อื่นๆ focus ที่ what to do แต่ wakko จะแสดงให้ดูว่าการสร้าง Cash game strategy กับ MTT strategy ทำยังไง และ Ingredient คือตัวแปรที่ทำให้ Cash game กับ MTT strategy แตกต่างกัน
2. Focus ที่ Why มากกว่า What to do
3. Identify Ingredient (Input) ที่จะผสมออกมาเป็น outcome (strategy) เมื่อเราลองปรับ ingredient แล้วเห็น pattern เราจะรวมมันมาเป็น concept เพื่อใช้ในการ simplify game ที่ complex และ cover output 80%
4. Why this might seem harder ตอนเริ่มตอนจะค่อนข้างยาก แต่หลังจากนั้นจะง่าย สำหรับ Why mindset

Why mindset จะช่วยใน long term growth แต่ short term คือการ focus what

## Chapter 1 Poker Is poker
![[Pasted image 20260419155106.png]]

เพราะว่า poker education teaching wrong way 
![[Pasted image 20260419155143.png]]


เพราะว่า Industry ต้องการ release MTT(Tournament) course หรือ cash game course โดย focus ที่ What to do หรือ strategy

![[Pasted image 20260419155243.png]]
ซึ่งถ้า focus what คนที่ออก course MTT เค้าจะ explain Tournament strategy และทำให้เค้าไม่สามารถทำ Cash game course ได้ในเวลาเดียว ปัญหาของ Course แบบนี้ คือ Poker มันมีหลาย สถานการ์ณที่เกิดขึ้น แล้ว Course จะ Cover ทุกสถานการ์ณได้ยังไง ซึ่งทำให้ Course ไม่มีวันหมด หรือ บาง strategy ใช้งานได้ไป 1 ปี แต่หลังจากนั้นเราต้องซื้อ Course เพื่อให้ อธิบาย What to do ใหม่ ซึ่งอาจจะเกิดจาก Population เก่งขึ้น หรืออะไรก็ตาม แต่มันน่าจะเป็น way ที่เรา approach poker แบบนี้ 

แต่ Wakko ใช้ Scenario MTT หรือ Cash game มายกตัวอย่างว่ามี Concept อะไรที่ประยุกต์ใช้บ้าง

ตัวอย่าง
![[Pasted image 20260419155700.png]]
Wording เรา Check raise ใน Tournament scenario มากกว่า Cash game โดยเฉพาะใน Low SPR scenario
Why is that ?

Ans: Low SPR เราสามารถ check raise aggressive เมื่อเรา OOP

เมื่อเรารู้เหตุผลว่า ที่ Tournament check raise aggressive กว่า cash เป็นเพราะ SPR เพราะฉะนั้น เมื่อเรา deep stack เราเลย check raise passive ตอนเล่น Tour หรือ ตอนเล่น cash แล้วเจอ short stack เราสามารถ stack off ได้ aggressive ขึ้น

![[Pasted image 20260419160006.png]]
2. เมื่อเรา Run solver ใน Solver ไม่ได้มีให้เลือก MTT, Cash
เพราะว่า ในมุม solver มันไม่ได้มีความสำคัญว่าเราจะเล่น Cash game หรือ Tour แต่ใน solver มี Input อื่นๆ ที่ต้องใส่

![[Pasted image 20260419160123.png]]
No MTT และ Cash Button

![[Pasted image 20260419160153.png]]
poker theory ไม่ได้ approach ว่ามันเป็น cash game หรือ Tournament 

![[Pasted image 20260419160236.png]]
3. ไม่ว่าจะเป็น Cash game, MTT มันคือ Maximize our EV (High EV play) ตาม Poker study session ซึ่ง Wakko จะ Explain ใน Module 2 เกี่ยวกับ How does poker work ซึ่งทั้ง Course นี้เรา focus ที่การสร้าง High EV play ซึ่งจะไม่ได้ยินการพูดถึงเรื่อง balance ซึ่ง solver ไม่ได้ balance แต่ solver แค่เอาแต่ละ hand ไปอยู่ใน line ทีได้ EV มากสุด ซึ่งไม่ได้หมายถึงเรา made strong hand คือ bet big ซึ่งความเข้าใจผิดพลาดคือ การมี strong hand แล้ว bet big


ตัวอย่าง
![[Pasted image 20260419160554.png]]
เป็น Preflop GTO strategy ถ้าเป็น Course ทั่วๆไป จะบอกว่า วันนี้เราคุยกันเรื่อง
MTT BB defend preflop และเราจะ Show ว่า What to do และ Dont focus it's ซึ่ง Strategy ที่แสดงทั้งสองอันของ Cash game และ MTT ถูกทั้งคู่ แต่เราต้องหาวิธีการใน process เพื่อให้ได้ Outcome แบบนี้

How We can get those strategy
![[Pasted image 20260419160814.png]]
ทุกอย่างที่ Generate จาก Solver มันเป็นแค่ Guideline เราจะไม่ follow blindly เพราะทั้งหมดมันเป็น Environment Solver world

แล้วเรา Come up with those strategy เราเลยมาดู Ingridients

![[Pasted image 20260419160931.png]]
1. Rake เพราะว่า Tournament มี Rake น้อยกว่า Cash game ทำให้เรา VPIP และ 3bet less

**Compare Rake Impact**
![[Pasted image 20260419161215.png]]

เมื่อมี Rake ทำให้ Over fold และ 3bet aggressive เช่น Hand ที่ close ใน scenario No rake จะเป็น pure fold ใน rake environment เช่น 97o

เมื่อมี rake ทำให้ fold frequency เพิ่มขึ้นประมาณ 13%
และตัวเหตุผลนี้ทำให้ Cash game range ถึง tight กว่า MTT

3bet frequency เพิ่มขึ้นเมื่อมี rake เพราะ rake จ่ายเมื่อเราเห็น flop เพราะ ฉะนั้น Cash game จะ 3bet aggressive ขึ้น แต่ถ้าเราเล่น live game และจ่าย rake เป็น แบบชั่วโมง เพราะฉะนั้น มันจะเหมือนกับเราเล่น No rake scenario


![[Pasted image 20260419161547.png]]
2. Antes ซึ่งเมื่อมี Ante จะทำให้ Pot odd ดีขึ้นใน Tournament เลยเล่นกว้างขึ้น
3. เราเจอคนเปิดกว้าง โดยเฉพาะใน Tournament เมื่อมี Ante จะทำให้ BU open wide range

ตัวอย่าง
Compare tight opening vs wide opening
![[Pasted image 20260419161636.png]]
ซึ่งส่งผลกับ Defend range ค่อนข้างเยอะ

ข้อสังเกตุ เมื่อเจอ Tight range เรา ลด 3bet ลง เพราะว่าเรื่อง equity advantage ด้วยคือ put money ใส่ strong range ทำให้เราเสียเงิน อ้างอิงจาก poker strategy

![[Pasted image 20260419161832.png]]
4. vs small size Opening ทำให้เราได้ pot odd ดี ทำให้เรา defend ได้กว้างขึ้น

Compare Opening sizing
![[Pasted image 20260419161921.png]]

เมื่อเจอ Upsize
- Over fold และ เพิ่ม 3bet

แล้วเปรียบเทียบแบบ Combine ingredient


![[Pasted image 20260419162017.png]]

- Open tight range small size จะเห็นว่าเรายังสามารถ defend ได้กว้างอยู่
- wide range big size เราต้อง defend tight ขึ้น

เพราะฉะนั้นเราจะเห็นว่า Pot odd มีผลกว่า range ที่เค้า Open

![[Pasted image 20260419162158.png]]
6. Average stack size ถ้าลดลง คือ SPR ลดลงเราจะ defend hand ที่เป็น raw equity แต่ใน cash เป็น deep SPR เลยเน้น defend suited มากกว่า

![[Pasted image 20260424142229.png]]
เมื่อ SPR ลดลง เราจะ defend กว้างขึ้นในด้าน offsuit hand แต่เมื่อเราเป็น deep stack เราจะ defend suit 

เพราะฉะนั้น strategy MTT vs cash game เลยแตกต่างกันจาก ingredient ด้านบน

![[Pasted image 20260424142407.png]]


![[Pasted image 20260424142437.png]]
เนื่องจาก strategy ต้องการ achieve บางอย่างเพราะฉะนั้นการ 3bet บาง hand ที่ 60 bb อาจจะมีความต้องการไม่เหมือนกับ 30 bb ก็ได้

ซึ่งมันมีหลายเหตุผลว่าทำไม 30bb strategy ถึงแตกต่างกับ 100 bb strategy
เช่น KJs ใน 30bb อาจจะเจอ worst case scenario เยอะกว่า แต่ KJ 100bb อาจจะเจอ 4bet น้อยกว่า

Key สำคัญคือการ realize equity 

![[Pasted image 20260424142816.png]]
ไม่ใช่เป็นเพราะการเล่น tournament เราเลย defend หรือ open กว้างขึ้น

ในการสร้าง strategy หรือ come up with strategy ไม่ว่าจะ cash หรือ tournament มันเหมือนกันคือ เกิดจาก ingredient

เราต้องเข้าใจ
1. Ingredient impact กับ strategy ยังไง
2. cause effect relationship เราจะได้เรียนใน course
ซึ่ง wakko คิดว่า ถ้าเราเข้าใจเรื่องพวกนี้อย่าง ลึกซึ้ง เราจะสามารถ apply กับ ทุก poker game ได้ไม่ใช่แค่ Non limit holdem  

![[Pasted image 20260424161354.png]]
อันนี้คือตัวอย่าง stake size ที่เราควร study เมื่อเปรียบเทียบระหว่าง tournament และ cash game

ตัวอย่าง postflop impact

![[Pasted image 20260424161520.png]]
1. Preflop range เพราะมันส่งผลไปยัง range interaction
2. SPR จะเหมือนตอนที่เราเห็นใน preflop เมื่อ SPR low จะทำให้ IP ไม่สามารถ put pressure ได้เท่ากับ ตอนเป็น deep stack เพราะว่า IP จะ cbet น้อยกว่า deep stack
3. ICM เป็น factor ของ tournament ซึ่งจะส่งผล preflop และ post flop

![[Pasted image 20260424161911.png]]
เราเรียกว่า all input ว่าคือ ingredient โดย wakko คิดว่า poker เหมือนทำอาหาร จะทำให้ อร่อย เราก็ต้องผสม Ingredient ให้ดี

Solver รู้อะไรบ้าง
![[Pasted image 20260424162021.png]]
1. solver ต้องการรู้ range
2. IP หรือ OOP เพราะการเล่น In-position กับ Out position มันแตกต่างกัน
3. Head ups, หรือ multiway
4. texture เพื่อดูว่า range interact กับ board เพื่อพิจารณา equity, equity distribution
5. Pot size, stack size (SPR)
6. Betting option โดยเฉพาะ later street เพราะว่า solver ต้องการ put money in กับ strong hand เพราะฉะนั้น River strategy จะส่งผลกับ Flop
	1. ตัวอย่างเช่น เราไม่ได้มี River over bet solver จะพยายามหาทาง put money มาที่สุดจาก Tree ที่เรา setup
7. ICM

ดังนั้นเวลาเราจะ solver un natural spot เราพยายามใช้หลักการของ solver ในการ แก้ปัญหา
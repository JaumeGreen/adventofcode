   read
3 : 0
r=:1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'
   lines=:' ' splitstring each cutopen r
)
   read=: 3 : 0
monkeys=: cutpara 1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'
)
   read 'd11t1'
┌─────────┬────────────────────────┬───────────────────────────┬───────────────────────┬──────────────────────────────┬────────────────────────────────┬─────────┬────────────────────────────────┬──────────────────────────┬───────────────────────┬──────────...
│Monkey 0:│  Starting items: 79, 98│  Operation: new = old * 19│  Test: divisible by 23│    If true: throw to monkey 2│    If false: throw to monkey 3 │Monkey 1:│  Starting items: 54, 65, 75, 74│  Operation: new = old + 6│  Test: divisible by 19│    If tru...
└─────────┴────────────────────────┴───────────────────────────┴───────────────────────┴──────────────────────────────┴────────────────────────────────┴─────────┴────────────────────────────────┴──────────────────────────┴───────────────────────┴──────────...
   0[monkeys
0
   0{monkeys
┌─────────┐
│Monkey 0:│
└─────────┘
   read=: 3 : 0
r=: 1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'
)
   read 'd11t1'
Monkey 0:
  Starting items: 79, 98
  Operation: new = old * 19
  Test: divisible by 23
    If true: throw to monkey 2
    If false: throw to monkey 3

Monkey 1:
  Starting items: 54, 65, 75, 74
  Operation: new = old + 6
  Test: divisible by 19
    If true: throw to monkey 2
    If false: throw to monkey 0

Monkey 2:
  Starting items: 79, 60, 97
  Operation: new = old * old
  Test: divisible by 13
    If true: throw to monkey 1
    If false: throw to monkey 3

Monkey 3:
  Starting items: 74
  Operation: new = old + 3
  Test: divisible by 17
    If true: throw to monkey 0
    If false: throw to monkey 1

   r
Monkey 0:
  Starting items: 79, 98
  Operation: new = old * 19
  Test: divisible by 23
    If true: throw to monkey 2
    If false: throw to monkey 3

Monkey 1:
  Starting items: 54, 65, 75, 74
  Operation: new = old + 6
  Test: divisible by 19
    If true: throw to monkey 2
    If false: throw to monkey 0

Monkey 2:
  Starting items: 79, 60, 97
  Operation: new = old * old
  Test: divisible by 13
    If true: throw to monkey 1
    If false: throw to monkey 3

Monkey 3:
  Starting items: 74
  Operation: new = old + 3
  Test: divisible by 17
    If true: throw to monkey 0
    If false: throw to monkey 1

   cutpara r
┌─────────┬────────────────────────┬───────────────────────────┬───────────────────────┬──────────────────────────────┬────────────────────────────────┬─────────┬────────────────────────────────┬──────────────────────────┬───────────────────────┬──────────...
│Monkey 0:│  Starting items: 79, 98│  Operation: new = old * 19│  Test: divisible by 23│    If true: throw to monkey 2│    If false: throw to monkey 3 │Monkey 1:│  Starting items: 54, 65, 75, 74│  Operation: new = old + 6│  Test: divisible by 19│    If tru...
└─────────┴────────────────────────┴───────────────────────────┴───────────────────────┴──────────────────────────────┴────────────────────────────────┴─────────┴────────────────────────────────┴──────────────────────────┴───────────────────────┴──────────...
   LF2 splitstring r
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┬─────────────────────────────────────────────────────────────────────────────────────────────────────────...
│Monkey 0:   Starting items: 79, 98   Operation: new = old * 19   Test: divisible by 23     If true: throw to monkey 2     If false: throw to monkey 3│Monkey 1:   Starting items: 54, 65, 75, 74   Operation: new = old + 6   Test: divisible by 19     If true...
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┴─────────────────────────────────────────────────────────────────────────────────────────────────────────...
   read=: 3 : 0
r=: 1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'
monkeys=:LF2 splitstring r
)
   read 'd11t1'
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┬─────────────────────────────────────────────────────────────────────────────────────────────────────────...
│Monkey 0:   Starting items: 79, 98   Operation: new = old * 19   Test: divisible by 23     If true: throw to monkey 2     If false: throw to monkey 3│Monkey 1:   Starting items: 54, 65, 75, 74   Operation: new = old + 6   Test: divisible by 19     If true...
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┴─────────────────────────────────────────────────────────────────────────────────────────────────────────...
   1{monkeys
┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│Monkey 1:   Starting items: 54, 65, 75, 74   Operation: new = old + 6   Test: divisible by 19     If true: throw to monkey 2     If false: throw to monkey 0│
└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
   NB. 7 monkeys
   NB. I can code them by hand!
   NB. all test are divisible by N
   
   a=:b=:3
   b
3
   a
3
   initmonkeys=: 3 : 0
mk0=: 91 58 52 69 95 54
mk1=: 80 80 97 84
mk2=: 86 92 71
mk3=: 96 90 99 76 79 85 98 61
mk4=: 60 83 68 64 73
mk5=: 96 52 52 94 76 51 57
mk6=: 75
mk7=: 83 75
)
   inittest=: 3 : 0
mk0=: 79 98
mk1=:54 65 75 74
mk2=:79 60 97
mk3=:74
)
   zero=:0 i.7
   counters =: zero
   inittest
3 : 0
mk0=: 79 98
mk1=:54 65 75 74
mk2=:79 60 97
mk3=:74
)
   inittest 2
74
   op0=:{{y*19}}
   op1=:{{y+6}}
   op2=:{{y*y}}
   op3=:{{y+3}}
   worr=:{{<.y%3}}
   te=:{{1=x|y}}
   te0=:{{23 te y}}
   te1=:{{19 te y}}
   te2=:{{13 te y}}
   te3=:{{17 te y}}
   move=:4 : 0
y=:y,x
)
   o=:4 5 6
   o
4 5 6
   8 move o
|domain error: move
|   y    =:y,x
   ins=:zero
   op0 mk0
1501 1862
   te0 op0 mk0
0 0
   #mk0
2
   ins=: #mk0 0} ins
|rank error
|   ins=:#mk0     0}ins
   ins=: (#mk0) 0} ins
   ins
2
   ]ins=:zero
1
   ]ins=:zeros
] zeros
   0 i.7
1
   i.7
0 1 2 3 4 5 6
   0 *i.7
0 0 0 0 0 0 0
   zero=:0*i.7
   ins=:zero
   ins=: (#mk0) 0} ins
   ins
2 0 0 0 0 0 0
   zero=:0*i.7
   inc=:{{ins=:x y}ins}}
   mon0=: 3 : 0
)
   inc=:{{ins=:y x}ins}}
   mon0=: 3 : 0
0 inc #mk0
ck0=:te0 worr op0 mk0
)
   mon0=: 3 : 0
0 inc #mk0
ck0=:worr op0 mk0
ck0 move0 te0ck0
mk0=:''
)
   move0=: 3 : 0
if. te0 y do.
mk2=:mk2,y
else.
mk3=:mk3,y
end.
)
   mon0=: 3 : 0
0 inc #mk0
ck0=:worr op0 mk0
move0 te0ck0
mk0=:''
)
   move1=: 3 : 0
if. te1 y do.
mk2=:mk2,y
else.
mk0=:mk0,y
end.
)
   mon0=: 1 : 0
1 inc #mk1
ck1=:worr op1 mk1
move1 ck1
mk1=:''
)
   mon0=: 3 : 0
0 inc #mk0
ck0=:worr op0 mk0
move0 te0ck0
mk0=:''
)
   mon0=: 3 : 0
0 inc #mk0
ck0=:worr op0 mk0
move0 te0
mk0=:''
)
   move2=: 3 : 0
if. te2 y do.
mk1=:mk1,y
else.
mk3=:mk3,y
end.
)
   mon2=: 1 : 0
2 inc #mk2
ck1=:worr op2 mk2
move2 ck2
mk2=:''
)
   move3=: 3 : 0
if. te3 y do.
mk0=:mk0,y
else.
mk1=:mk1,y
end.
)
   mon3=: 1 : 0
3 inc #mk3
ck3=:worr op3 mk3
move3 ck3
mk3=:''
)
   mon2=: 1 : 0
2 inc #mk2
ck2=:worr op2 mk2
move2 ck2
mk2=:''
)
   mk0
79 98
   mk0;mk1;mk2;mk3
┌─────┬───────────┬────────┬──┐
│79 98│54 65 75 74│79 60 97│74│
└─────┴───────────┴────────┴──┘
   mon0 1

   mk0;mk1;mk2;mk3
┌┬───────────┬────────┬──┐
││54 65 75 74│79 60 97│74│
└┴───────────┴────────┴──┘
   ins
2 0 0 0 0 0 0
   ins=0
0 1 1 1 1 1 1
   ins=:zero
   mk0=:79 98
   mon0
3 : 0
0 inc #mk0
ck0=:worr op0 mk0
move0 te0
mk0=:''
)
   mon0=: 3 : 0
0 inc #mk0
ck0=:worr op0 mk0
move0 \ ck0
mk0=:''
)
   mon0
3 : 0
0 inc #mk0
ck0=:worr op0 mk0
move0 \ ck0
mk0=:''
)
   mon0 1

   mk0;mk1;mk2;mk3
┌┬───────────┬────────┬──────────────┐
││54 65 75 74│79 60 97│74 500 500 620│
└┴───────────┴────────┴──────────────┘
   ins=:zero
   mk0=:79 98
   mk3=:74
   mon0 1

   mk0;mk1;mk2;mk3
┌┬───────────┬────────┬──────────────┐
││54 65 75 74│79 60 97│74 500 500 620│
└┴───────────┴────────┴──────────────┘
   ck0
500 620
   move0 each ck0
┌──────────────────┬──────────────────────┐
│74 500 500 620 500│74 500 500 620 500 620│
└──────────────────┴──────────────────────┘
   mon0=: 3 : 0
0 inc #mk0
ck0=:worr op0 mk0
move0 each ck0
mk0=:''
)
   inittest 1
74
   mk0;mk1;mk2;mk3
┌─────┬───────────┬────────┬──┐
│79 98│54 65 75 74│79 60 97│74│
└─────┴───────────┴────────┴──┘
   ins=:zero
   mon0 1

   mk0;mk1;mk2;mk3
┌┬───────────┬────────┬──────────┐
││54 65 75 74│79 60 97│74 500 620│
└┴───────────┴────────┴──────────┘
   mon1
|value error: mon1
   mon2
1 : 0
2 inc #mk2
ck2=:worr op2 mk2
move2 ck2
mk2=:''
)
   mon3
1 : 0
3 inc #mk3
ck3=:worr op3 mk3
move3 ck3
mk3=:''
)
   mon1=: 3 : 0
1 inc #mk1
ck1=:worr op1 mk1
move1 ck1
mk1=:''
)
   mon1=: 3 : 0
1 inc #mk1
ck1=:worr op1 mk1
move1 each ck1
mk1=:''
)
   mon2=: 3 : 0
2 inc #mk2
ck2=:worr op2 mk2
move2 each ck2
mk2=:''
)
   mon3
1 : 0
3 inc #mk3
ck3=:worr op3 mk3
move3 ck3
mk3=:''
)
   mon3 =: 3 : 0
3 inc #mk3
ck3=:worr op3 mk3
move3 ck3
mk3=:''
)
   mon3 =: 3 : 0
3 inc #mk3
ck3=:worr op3 mk3
move3 each ck3
mk3=:''
)
   for. i.20 do.
|spelling error
|      for. i.20 do.
|      ^
   for_i. i.20 do.
|spelling error
|      for_i. i.20 do.
|      ^
   iter=: 3 : 0
for_i. i. y do.
mon0 1
mon1 1
mon2 1
mon3 1
end.
smoutput mk0;mk1;mk2;mk3
smoutput ins
head=:2 {. \: ins
smoutput head
*/head
)
   iter 20
┌────────────────┬───────────────┬┬┐
│4192 7 8 7 7 256│15 15 7064 2658│││
└────────────────┴───────────────┴┴┘
5 5 0 5 0 0 0
0 1
0
   ins=:zero
   inittest 1
74
   smoutput mk0;mk1;mk2;mk3
┌─────┬───────────┬────────┬──┐
│79 98│54 65 75 74│79 60 97│74│
└─────┴───────────┴────────┴──┘
   iter 1
┌────────┬──────────────────────────┬┬┐
│23 27 26│25 167 207 694 401 1046 45│││
└────────┴──────────────────────────┴┴┘
2 4 4 7 0 0 0
3 1
3
   \: ins
3 1 2 0 4 5 6
   >\: ins
3 1 2 0 4 5 6
   >.\: ins
3 1 2 0 4 5 6
   ins \: ins
7 4 4 2 0 0 0
   iter=: 3 : 0
for_i. i. y do.
mon0 i
mon1 i
mon2 i
mon3 i
smoutput mk0;mk1;mk2;mk3
end.
smoutput ins
head=:2 {. ins \: ins
smoutput head
*/head
)
   inittest
3 : 0
mk0=: 79 98
mk1=:54 65 75 74
mk2=:79 60 97
mk3=:74
)
   inittest=: 3 : 0
ins=:zero
mk0=: 79 98
mk1=:54 65 75 74
mk2=:79 60 97
mk3=:74
)
   inittest 0
74
   iter 1
┌────────┬──────────────────────────┬┬┐
│23 27 26│25 167 207 694 401 1046 45│││
└────────┴──────────────────────────┴┴┘
2 4 4 7 0 0 0
7 4
28
   inittest 0
74
   iter=: 3 : 0
for_i. i. y do.
mon0 i
smoutput mk0;mk1;mk2;mk3
mon1 i
smoutput mk0;mk1;mk2;mk3
mon2 i
smoutput mk0;mk1;mk2;mk3
mon3 i
smoutput mk0;mk1;mk2;mk3
end.
result ins
)
   result=: 3 : 0
head=:2{.y\:y
smoutput y
smoutput head
*/ head
)
   iter 1
┌┬───────────┬────────┬──────────┐
││54 65 75 74│79 60 97│74 500 620│
└┴───────────┴────────┴──────────┘
┌────────┬┬───────────┬──────────┐
│23 27 26││79 60 97 20│74 500 620│
└────────┴┴───────────┴──────────┘
┌────────┬┬┬─────────────────────────────┐
│23 27 26│││74 500 620 2080 1200 3136 133│
└────────┴┴┴─────────────────────────────┘
┌────────┬──────────────────────────┬┬┐
│23 27 26│25 167 207 694 401 1046 45│││
└────────┴──────────────────────────┴┴┘
2 4 4 7 0 0 0
7 4
28
   op1
3 : 'y+6'
   op1 54
60
   3|60
0
   te
4 : '1=x|y'
   te=:{{0=x|y}}
   inittest 1
74
   iter 1
┌┬───────────┬────────┬──────────┐
││54 65 75 74│79 60 97│74 500 620│
└┴───────────┴────────┴──────────┘
┌───────────┬┬────────┬──────────┐
│20 23 27 26││79 60 97│74 500 620│
└───────────┴┴────────┴──────────┘
┌───────────┬────┬┬────────────────────┐
│20 23 27 26│2080││74 500 620 1200 3136│
└───────────┴────┴┴────────────────────┘
┌───────────┬────────────────────────┬┬┐
│20 23 27 26│2080 25 167 207 401 1046│││
└───────────┴────────────────────────┴┴┘
2 4 3 5 0 0 0
5 4
20
   inittest 1
74
   iter=: 3 : 0
for_i. i. y do.
mon0 i
smoutput mk0;mk1;mk2;mk3
mon1 i
smoutput mk0;mk1;mk2;mk3
mon2 i
smoutput mk0;mk1;mk2;mk3
mon3 i
smoutput mk0;mk1;mk2;mk3
end.
result ins
)
|syntax error
|   )
   iter=: 3 : 0
for_i. i. y do.
mon0 i
mon1 i
mon2 i
mon3 i
end.
smoutput mk0;mk1;mk2;mk3
result ins
)
   iter 20
┌──────────────┬─────────────────┬┬┐
│10 12 14 26 34│245 93 53 199 115│││
└──────────────┴─────────────────┴┴┘
6 4 0 6 0 0 0
6 6
36
   mon0
3 : 0
0 inc #mk0
ck0=:worr op0 mk0
move0 each ck0
mk0=:''
)
   inc
4 : 'ins=:y x}ins'
   inc=:{{y+(x{ins) x}ins}}
   ins
6 4 0 6 0 0 0
   0 inc 4
10 8 4 10 4 4 4
   inc=:{{y+(x{.ins) x}ins}}
   ins
6 4 0 6 0 0 0
   0 inc 4
|rank error: inc
|   y+(x{.ins)    x}ins
   2{ins
0
   ins
6 4 0 6 0 0 0
   1{ins
4
   inc=:{{y+(x{ins) x}ins}}
   inc=:{{ins=:y+(x{ins) x}ins}}
   0 inc 4
10 8 4 10 4 4 4
   ins
10 8 4 10 4 4 4
   inc=:{{ins=:(y+(x{ins)) x}ins}}
   0 inc 4
14 8 4 10 4 4 4
   inittest
3 : 0
ins=:zero
mk0=: 79 98
mk1=:54 65 75 74
mk2=:79 60 97
mk3=:74
)
   inittest 1
74
   iter 20
┌──────────────┬─────────────────┬┬┐
│10 12 14 26 34│245 93 53 199 115│││
└──────────────┴─────────────────┴┴┘
101 95 7 105 0 0 0
105 101
10605
   op0
3 : 'y*19'
   op0=:{{y*13}}
   init
|value error: init
   
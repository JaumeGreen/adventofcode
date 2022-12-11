   zero=:0* i.8
   initmonkeys=: 3 : 0
ins=:zero
mk0=: 91 58 52 69 95 54
mk1=: 80 80 97 84
mk2=: 86 92 71
mk3=: 96 90 99 76 79 85 98 61
mk4=: 60 83 68 64 73
mk5=: 96 52 52 94 76 51 57
mk6=: 75
mk7=: 83 75
op0=:{{y*13}}
op1=:{{y*y}}
op2=:{{y+7}}
op3=:{{y+4}}
op4=:{{y*19}}
op5=:{{y+3}}
op6=:{{y+5}}
op7=:{{y+1}}
te0=:{{7 te y}}
te1=:{{3 te y}}
te2=:{{2 te y}}
te3=:{{11 te y}}
te4=:{{17 te y}}
te5=:{{5 te y}}
te6=:{{13 te y}}
te7=:{{19 te y}}
0
)

   move0=: 3 : 0
if. te0 y do.
mk1=:mk1,y
else.
mk5=:mk5,y
end.
)
   move1=: 3 : 0
if. te1 y do.
mk3=:mk3,y
else.
mk5=:mk5,y
end.
)
   move2=: 3 : 0
if. te2 y do.
mk0=:mk0,y
else.
mk4=:mk4,y
end.
)
   move3=: 3 : 0
if. te3 y do.
mk7=:mk7,y
else.
mk6=:mk6,y
end.
)
   move4=: 3 : 0
if. te4 y do.
mk1=:mk1,y
else.
mk0=:mk0,y
end.
)
   move5=: 3 : 0
if. te5 y do.
mk7=:mk7,y
else.
mk3=:mk3,y
end.
)
   move6=: 3 : 0
if. te6 y do.
mk4=:mk4,y
else.
mk2=:mk2,y
end.
)
   move7=: 3 : 0
if. te7 y do.
mk2=:mk2,y
else.
mk6=:mk6,y
end.
)
   inittest=: 3 : 0
ins=:zero
mk0=: 79 98
mk1=:54 65 75 74
mk2=:79 60 97
mk3=:74
op0=:{{y*19}}
op1=:{{y+6}}
op2=:{{y*y}}
op3=:{{y+3}}
te0=:{{23 te y}}
te1=:{{19 te y}}
te2=:{{13 te y}}
te3=:{{17 te y}}
0
)

   tmove0=: 3 : 0
if. te0 y do.
mk2=:mk2,y
else.
mk3=:mk3,y
end.
)
   tmove1=: 3 : 0
if. te1 y do.
mk2=:mk2,y
else.
mk0=:mk0,y
end.
)
   tmove2=: 3 : 0
if. te2 y do.
mk1=:mk1,y
else.
mk3=:mk3,y
end.
)
   tmove3=: 3 : 0
if. te3 y do.
mk0=:mk0,y
else.
mk1=:mk1,y
end.
)

   inc=:{{ins=:(y+(x{ins)) x}ins}}
   te=:{{0=x|y}}
   worr=:{{<.y%3}}

   tmon0=: 3 : 0
0 inc #mk0
ck0=:worr op0 mk0
tmove0 each ck0
mk0=:''
)
   tmon1=: 3 : 0
1 inc #mk1
ck1=:worr op1 mk1
tmove1 each ck1
mk1=:''
)
   tmon2=: 3 : 0
2 inc #mk2
ck2=:worr op2 mk2
tmove2 each ck2
mk2=:''
)
   tmon3=: 3 : 0
3 inc #mk3
ck3=:worr op3 mk3
tmove3 each ck3
mk3=:''
)
   mon0=: 3 : 0
0 inc #mk0
ck0=:worr op0 mk0
move0 each ck0
mk0=:''
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
   mon3=: 3 : 0
3 inc #mk3
ck3=:worr op3 mk3
move3 each ck3
mk3=:''
)
   mon4=: 3 : 0
4 inc #mk4
ck4=:worr op4 mk4
move4 each ck4
mk4=:''
)
   mon5 =: 3 : 0
5 inc #mk5
ck5=:worr op5 mk5
move5 each ck5
mk5=:''
)
   mon6 =: 3 : 0
6 inc #mk6
ck6=:worr op6 mk6
move6 each ck6
mk6=:''
)
   mon7 =: 3 : 0
7 inc #mk7
ck7=:worr op7 mk7
move7 each ck7
mk7=:''
)

   iter=: 3 : 0
for_i. i. y do.
tmon0 i
tmon1 i
tmon2 i
tmon3 i
end.
result ins
)
   result=: 3 : 0
smoutput mk0;mk1;mk2;mk3;mk4;mk5;mk6;mk7
head=:2{.y\:y
smoutput y
smoutput head
*/ head
)
   part1=: 3 : 0
for_i. i. y do.
mon0 i
mon1 i
mon2 i
mon3 i
mon4 i
mon5 i
mon6 i
mon7 i
end.
result ins
)
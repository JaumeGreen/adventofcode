   ]p=:1!1<'/home/deck/projects/adventofcode/2022/d05t1.input'
|domain error
|   ]p=:1!1    <'/home/deck/projects/adventofcode/2022/d05t1.input'
   ]p=:1!:1<'/home/deck/projects/adventofcode/2022/d05t1.input'
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2

   4{.p
    
   8{.p
    [D] 
   4{.cutopen p
┌───────────┬───────────┬───────────┬───────────┐
│    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │
└───────────┴───────────┴───────────┴───────────┘
   |:4{.cutopen p
┌───────────┬───────────┬───────────┬───────────┐
│    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │
└───────────┴───────────┴───────────┴───────────┘
   |:>4{.cutopen p
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
   '[] '-.|:>4{.cutopen p

   -.&'[] '|:>4{.cutopen p
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
   (|:>4{.cutopen p)-.&'[] '
|syntax error
|       (|:>4{.cutopen p)-.&'[] '
   (|:>4{.cutopen p)-.'[] '
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
   'abcde'-.'defg'
abc
   -.&'[] 'each|:>4{.cutopen p
┌─┬─┬─┬─┐
│ │ │ │ │
├─┼─┼─┼─┤
│ │N│Z│1│
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│D│C│M│2│
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │P│3│
├─┼─┼─┼─┤
│ │ │ │ │
└─┴─┴─┴─┘
   -.&'[] '^.|:>4{.cutopen p
|domain error
|   -.&'[] '    ^.|:>4{.cutopen p
   -.&'[] '^.|:>4{.cutopen p
|domain error
|   -.&'[] '    ^.|:>4{.cutopen p
   -.&'[] '&.|:>4{.cutopen p
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 
   -.&'[] '&.>|:>4{.cutopen p
┌─┬─┬─┬─┐
│ │ │ │ │
├─┼─┼─┼─┤
│ │N│Z│1│
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│D│C│M│2│
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │P│3│
├─┼─┼─┼─┤
│ │ │ │ │
└─┴─┴─┴─┘
   >-.&'[] '&.>|:>4{.cutopen p
 
 
 
 

 
N
Z
1

 
 
 
 

 
 
 
 

 
 
 
 

D
C
M
2

 
 
 
 

 
 
 
 

 
 
 
 

 
 
P
3

 
 
 
 
   |:>4{.cutopen p
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
   ]columns=.|:>4{.cutopen p
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
   ~.columns
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
  [ 
  P3
  ] 
   ~:columns
1 1 1 1 1 1 1 0 1 1 1
   #columns
11
   (4,:1);.3 columns
|rank error
|   (4,:1)    ;.3 columns
   (4,:1)<;.3 columns
┌────┬────┬────┐
│ [[ │[[[ │  [ │
└────┴────┴────┘
   (1,4,:1)<;.3 columns
|length error
|   (1,4,:1)    <;.3 columns
   (4,:1)<;.3 }.columns
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   ]textstacks=:(4,:1)<;.3 }.columns
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   ' '-.each textstacks
┌┬─┬┐
││ ││
└┴─┴┘
   textstacks -. ' '
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   -.&' ' each textstacks
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   ]p=:1!:1<'/home/deck/projects/adventofcode/2022/d05t1.input'
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2

   ]columns=.|:>4{.cutopen toJ p
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
   ]textstacks=:(4,:1)<;.3 }.columns
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   ({textstacks)-.' '
┌───┬───┬───┬───┐
│ D │ D │ DP│ D3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│ C │ C │ CP│ C3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│ M │ M │ MP│ M3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│ 2 │ 2 │ 2P│ 23│
└───┴───┴───┴───┘



┌───┬───┬───┬───┐
│ND │ND │NDP│ND3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│NC │NC │NCP│NC3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│NM │NM │NMP│NM3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│N2 │N2 │N2P│N23│
└───┴───┴───┴───┘



┌───┬───┬───┬───┐
│ZD │ZD │ZDP│ZD3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│ZC │ZC │ZCP│ZC3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│ZM │ZM │ZMP│ZM3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│Z2 │Z2 │Z2P│Z23│
└───┴───┴───┴───┘



┌───┬───┬───┬───┐
│1D │1D │1DP│1D3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│1C │1C │1CP│1C3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│1M │1M │1MP│1M3│
└───┴───┴───┴───┘

┌───┬───┬───┬───┐
│12 │12 │12P│123│
└───┴───┴───┴───┘
   ({.textstacks)-.' '
┌────┐
│ NZ1│
└────┘
   ({.>textstacks)-.' '
 NZ1
   {.>textstacks
 NZ1
   'o',{.>textstacks,'o'
|domain error
|   'o',{.>textstacks    ,'o'
   'o',({.>textstacks),'o'
oooo
 NZ1
oooo
   ,'o',({.>textstacks),'o'
oooo NZ1oooo
   ,'o',({.>textstacks)-.' ','o'
oooo NZ1
   ,'o',(({.>textstacks)-.' '),'o'
oooo NZ1oooo
   deb ({.>textstacks)
|length error: deb
|       deb({.>textstacks)
   deb {.>textstacks
|length error: deb
|       deb{.>textstacks
   deb {.textstacks
┌────┐
│ NZ1│
└────┘
   deb >{.textstacks
|length error: deb
|       deb>{.textstacks
   dltb {.textstacks
┌────┐
│ NZ1│
└────┘
   dltb >{.textstacks
|length error: dltb
|       dltb>{.textstacks
   ":{.textstacks
┌────┐
│ NZ1│
└────┘
   ":>{.textstacks
 NZ1
   dltb":>{.textstacks
|length error: dltb
|       dltb":>{.textstacks
   ,:textstacks
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   ,.textstacks
┌────┐
│ NZ1│
├────┤
│DCM2│
├────┤
│  P3│
└────┘
   dltb,.textstacks
|length error: dltb
|       dltb,.textstacks
   dltb each,.textstacks
|length error: dltb
|       dltb each,.textstacks
   >,.textstacks
┌────┐
│ NZ1│
├────┤
│DCM2│
├────┤
│  P3│
└────┘
   >,.textstacks
 NZ1


DCM2


  P3
   textstacks rplc LF,''
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   textstacks rplc LF,'',' ',''
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   textstacks rplc LF,'*',' ','-'
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   ({.textstacks) rplc LF,'*',' ','-'
┌────┐
│ NZ1│
└────┘
   (>{.textstacks) rplc LF,'*',' ','-'
-NZ1
   ({.>textstacks) rplc LF,'*',' ','-'
-NZ1
   (>textstacks) rplc LF,''
 NZ1DCM2  P3
   (>textstacks) rplc LF,'*',' ','-'
-NZ1DCM2--P3
   (rplc& LF,'*',' ','-') (>textstacks) 
|syntax error
|       (rplc&LF,'*',' ','-')(>textstacks)
   (] rplc LF,'*',' ','-') (>textstacks) 
|syntax error
|       (]rplc LF,'*',' ','-')(>textstacks)
   {{] rplc LF,'*',' ','-}} (>textstacks) 
|open quote
   {{] rplc LF,'*',' ','-'}} (>textstacks) 
**--
   {{y rplc LF,'*',' ','-'}} (>textstacks) 
-NZ1DCM2--P3
   {{y rplc LF,'*',' ','-'}} each textstacks
┌────┬────┬────┐
│-NZ1│DCM2│--P3│
└────┴────┴────┘
   {{dblt y}} each textstacks
|value error: dblt
|       dblt y
   {{dltb y}} each textstacks
|length error: dltb
|       dltb y
   {{y rplc ' ',''}} each textstacks
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   {{y rplc ' ','-'}} each textstacks
┌────┬────┬────┐
│-NZ1│DCM2│--P3│
└────┴────┴────┘
   {{y -. ' '}} each textstacks
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   {{y -: ' '}} each textstacks
┌─┬─┬─┐
│0│0│0│
└─┴─┴─┘
   dlb ' oo'
oo
   '-',(dltb ' gg '),'-'
-gg-
   {{dltb y}} each textstacks
|length error: dltb
|       dltb y
   {{dltb >y}} each textstacks
|length error: dltb
|       dltb>y
   {. textstacks
┌────┐
│ NZ1│
└────┘
   >{. textstacks
 NZ1
   dltb >{. textstacks
|length error: dltb
|       dltb>{.textstacks
   # >{. textstacks
1
   $ >{. textstacks
1 4
   #' oo'
2
   #' oo'
3
   $' oo'
3
   {{] y}} each textstacks
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   {{] |:y}} each textstacks
┌─┬─┬─┐
│ │D│ │
│N│C│ │
│Z│M│P│
│1│2│3│
└─┴─┴─┘
   {{dltb |:y}} each textstacks
|length error: dltb
|       dltb|:y
   {{dltb >|:y}} each textstacks
|length error: dltb
|       dltb>|:y
   >{. textstacks
 NZ1
   !: >{. textstacks
(!: > {.)((,:' NZ1');(,:'DCM2');,:'  P3')
   ". >{. textstacks

   ": >{. textstacks
 NZ1
   #": >{. textstacks
1
   $": >{. textstacks
1 4
      |:>4{.cutopen p
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
   ,:|:>4{.cutopen p
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
   lines=.|:>4{.cutopen p
   {lines
┌────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┐
│ [[ │ NZ1│ ]] │    │[[[ │DCM2│]]] │    │  [ │  P3│  ] │
└────┴────┴────┴────┴────┴────┴────┴────┴────┴────┴────┘
   lines
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
   <lines
┌────┐
│ [[ │
│ NZ1│
│ ]] │
│    │
│[[[ │
│DCM2│
│]]] │
│    │
│  [ │
│  P3│
│  ] │
└────┘
  ,lines
 [[  NZ1 ]]     [[[ DCM2]]]       [   P3  ] 
   ,each lines
┌─┬─┬─┬─┐
│ │[│[│ │
├─┼─┼─┼─┤
│ │N│Z│1│
├─┼─┼─┼─┤
│ │]│]│ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│[│[│[│ │
├─┼─┼─┼─┤
│D│C│M│2│
├─┼─┼─┼─┤
│]│]│]│ │
├─┼─┼─┼─┤
│ │ │ │ │
├─┼─┼─┼─┤
│ │ │[│ │
├─┼─┼─┼─┤
│ │ │P│3│
├─┼─┼─┼─┤
│ │ │]│ │
└─┴─┴─┴─┘
   ]textstacks=:(4,:1)<;.3 }.lines
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   ${.textstacks

   ${textstacks
1 4 1 4 1 4
   ,each textstacks
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   $ ,each textstacks
3
   dltb each ,each textstacks
┌───┬────┬──┐
│NZ1│DCM2│P3│
└───┴────┴──┘
      ]wo=:dltb each ,each textstacks
┌───┬────┬──┐
│NZ1│DCM2│P3│
└───┴────┴──┘
   ]wo=:dltb }:each ,each textstacks
┌───┬───┬───┐
│ NZ│DCM│  P│
└───┴───┴───┘
   ]wo=:{:each dltb each ,each textstacks
┌─┬─┬─┐
│1│2│3│
└─┴─┴─┘
   ]wo=:}:each dltb each ,each textstacks
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   move=: 3 : 0
)
   1 i. wo
1 1 1
   1 {wo
┌───┐
│DCM│
└───┘
   0 {wo
┌──┐
│NZ│
└──┘
   2{wo
┌─┐
│P│
└─┘
   move=: 3 : 0
from=.x-1
to=.y-1
)
   {. (1,1)
1
   {. (3 4)
3
   (2{wo),'D'
|domain error
|   (2{wo)    ,'D'
   (>2{wo),'D'
PD
   2{wo=.(>2{wo),'D'
|index error
|   2    {wo=.(>2{wo),'D'
   ]a=(>2{wo)
|index error
|   ]a=(>2    {wo)
   wo
PD
   ]wo=:}:each dltb each ,each textstacks
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   ]a=(>2{wo)
|value error: a
|   ]    a=(>2{wo)
   wo
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   ]a=.(>2{wo)
P
   ]b=.(>1{wo)
DCM
   ]a=.{.b,a
D
   a
D
   ]a=.(>2{wo)
P
   ]a=.({.b),a
DP
   }.b
CM
   ]b=.}.b
CM
   'DP' (2)} wo
|rank error
|   'DP'    (2)}wo
   'DP' (2)} >wo
|length error
|   'DP'    (2)}>wo
   (<'DP') (2)} >wo
|domain error
|   (<'DP')    (2)}>wo
   $wo
3
   wo
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   'k' (1)} wo
|domain error
|   'k'    (1)}wo
   'kz' (0)} wo
|rank error
|   'kz'    (0)}wo
   'kz' (0)} cutopen wo
|rank error
|   'kz'    (0)}cutopen wo
   'k' (<1)} wo
|domain error
|   'k'    (<1)}wo
   'k' (>1)} wo
|domain error
|   'k'    (>1)}wo
   'kz' (<0)} wo
|rank error
|   'kz'    (<0)}wo
   'gw' 0 3 'cross
|open quote
   'gw' 0 3 'cross'
|syntax error
|       'gw'0 3'cross'
   'gw' 0 3} 'cross'
grows
   (<'kz') (0)} wo
┌──┬───┬─┐
│kz│DCM│P│
└──┴───┴─┘
   wo
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   (<'kz') (1)} wo
┌──┬──┬─┐
│NZ│kz│P│
└──┴──┴─┘
   (<'kz') (2)} wo
┌──┬───┬──┐
│NZ│DCM│kz│
└──┴───┴──┘
   move=: 3 : 0
from=.0{x
to=.1{x
times=.2{x
m1=.(<(>from{y),>to{y)to}<y
({.>from{y)from}<y
)
   0 1 2 move wo
|domain error: move
|   0 1 2     move wo
   move=: 3 : 0
from=:(0{x)-1
to=:(1{x)-1
times=:2{x
m1=:(<(>from{y),>to{y)to}<y
({.>from{y)from}<y
)
   0 1 2 move wo
|domain error: move
|   0 1 2     move wo
   from
|value error: from
   (0 1 2) move wo
|domain error: move
|   (0 1 2)    move wo
   move=: 4 : 0
from=:(0{x)-1
to=:(1{x)-1
times=:2{x
m1=:(<(>from{y),>to{y)to}<y
({.>from{y)from}<y
)
   0 1 2 move wo
|domain error: move
|   ({.>from{y)    from}<y
   from
_1
   2 1 1 move wo
|index error: move
|   ({.>from{y)    from}<y
   from
1
   to
0
   m1
┌─────┐
│DCMNZ│
└─────┘
   wo
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   ]m1=:(<(>from{y),>to{y)to}<y
|value error
|   ]m1=:(<(>from{y),>to{y)to}<    y
   ]m1=:(<(>from{wo),>to{wo)to}<wo
┌─────┐
│DCMNZ│
└─────┘
   from{wo
┌───┐
│DCM│
└───┘
   >from{wo
DCM
   {.>from{wo
D
   ({.>from{wo),to{wo
|domain error
|   ({.>from{wo)    ,to{wo
   ({.>from{wo),>to{wo
DNZ
   <(({.>from{wo),>to{wo)
┌───┐
│DNZ│
└───┘
   <(({.>from{wo),>to{wo)to}wo
|rank error
   <(({.>from{wo),>to{wo)to}>wo
┌───┐
│DNZ│
│DCM│
│P  │
└───┘
   (<(({.>from{wo),>to{wo))to}wo
┌───┬───┬─┐
│DNZ│DCM│P│
└───┴───┴─┘
   move=: 3 : 0
from=.(0{x)-1
to=.(1{x)-1
times=.2{x
m1=.(<(({.>from{wo),>to{wo))to}wo
(<{.>from{y)from}y
)
   2 1 1 move wo
|domain error: move
|   2 1 1     move wo
   move=: 3 : 0
from=.(0{x)-1
to=.(1{x)-1
times=.2{x
m1=.(<(({.>from{y),>to{y))to}y
(<{.>from{y)from}y
)
   2 1 1 move wo
|domain error: move
|   2 1 1     move wo
   move=: 3 : 0
from=:(0{x)-1
to=:(1{x)-1
times=:2{x
m1=:(<(({.>from{y),>to{y))to}y
(<}.>from{m1)from}m1
)
   2 1 1 move wo
|domain error: move
|   2 1 1     move wo
   from
1
   to
0
   times
1
   m1
┌─────┐
│DCMNZ│
└─────┘
   wo
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   (<(({.>from{wo),>to{wo))to}wo
┌───┬───┬─┐
│DNZ│DCM│P│
└───┴───┴─┘
   m1=:(<(({.>from{y),>to{y))to}y
|value error
|   m1=:(<(({.>from{y),>to{y))to}    y
'(<(({.>from{wo),>to{wo))to}wo',LF,'(<(({.>from{y),>to{y))to}y'
   |   m1=:(<(({.>from{y),>to{y))to}    y
|value error
|   |m1=:(<(({.>from{y),>to{y))to}    y
   |   m1=:(<(({.>from{y),>to{y))to}    y
|value error
|   |m1=:(<(({.>from{y),>to{y))to}    y
   '(<(({.>from{wo),>to{wo))to}wo',LF,'(<(({.>from{y),>to{y))to}y'
(<(({.>from{wo),>to{wo))to}wo
(<(({.>from{y),>to{y))to}y
   '(<(({.>from{wo),>to{wo))to}wo',LF,'(<(({.>from{ y),>to{ y))to} y'
(<(({.>from{wo),>to{wo))to}wo
(<(({.>from{ y),>to{ y))to} y
   move=: 4 : 0
from=:(0{x)-1
to=:(1{x)-1
times=:2{x
m1=:(<(({.>from{y),>to{y))to}y
(<}.>from{m1)from}m1
)
   2 1 1 move wo
┌───┬──┬─┐
│DNZ│CM│P│
└───┴──┴─┘
   move=: 4 : 0
from=:(0{x)-1
to=:(1{x)-1
times=:2{x
for. i.times do.
m1=:(<(({.>from{y),>to{y))to}y
m2=:(<}.>from{m1)from}m1
end.
)
   move=: 4 : 0
from=:(0{x)-1
to=:(1{x)-1
times=:2{x
m2=:y
for. i.times do.
m1=:(<(({.>from{y),>to{y))to}y
m2=:(<}.>from{m1)from}m1
end.
m2
)
   move=: 4 : 0
from=:(0{x)-1
to=:(1{x)-1
times=:2{x
m2=:y
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
   2 1 1 move wo
┌───┬──┬─┐
│DNZ│CM│P│
└───┴──┴─┘
   wo1=:2 1 1 move wo
   1 3 3 move wo1
┌┬──┬────┐
││CM│ZNDP│
└┴──┴────┘
      p i. LF2
11 11
   ]p=cotopen toj p
|value error: toj
|   ]p=cotopen     toj p
   ]p=cotopen toJ p
|value error: cotopen
|   ]p=    cotopen toJ p
   ]p=cutopen toJ p
|length error
|   ]p    =cutopen toJ p
   ]pc=.cutopen toJ p
┌───────────┬───────────┬───────────┬───────────┬──────────────────┬──────────────────┬──────────────────┬──────────────────┐
│    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2│
└───────────┴───────────┴───────────┴───────────┴──────────────────┴──────────────────┴──────────────────┴──────────────────┘
   ]pc=.cutopen p
┌───────────┬───────────┬───────────┬───────────┬──────────────────┬──────────────────┬──────────────────┬──────────────────┐
│    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2│
└───────────┴───────────┴───────────┴───────────┴──────────────────┴──────────────────┴──────────────────┴──────────────────┘
   ]pc=.<p
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│    [D]     [N] [C]     [Z] [M] [P]  1   2   3   move 1 from 2 to 1 move 3 from 1 to 3 move 2 from 2 to 1 move 1 from 1 to 2 │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
   ]pc=.<toJp
] (< toJp)
   ]pc=.<toJ p
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│    [D]     [N] [C]     [Z] [M] [P]  1   2   3   move 1 from 2 to 1 move 3 from 1 to 3 move 2 from 2 to 1 move 1 from 1 to 2 │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
   ]pc=.<cutopen toJ p
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│┌───────────┬───────────┬───────────┬───────────┬──────────────────┬──────────────────┬──────────────────┬──────────────────┐│
││    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2││
│└───────────┴───────────┴───────────┴───────────┴──────────────────┴──────────────────┴──────────────────┴──────────────────┘│
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
   p i. ' 1'
0 37
   pc i. ' 1'
1 1
   3 2 $ 2 1 1 2 3 3
2 1
1 2
3 3
    2 3 $ 2 1 1 2 3 3
2 1 1
2 3 3
   ]st=.2 3 $ 2 1 1 2 3 3
2 1 1
2 3 3
   st move wo
|index error: move
|   times=:2    {x
   move&wo each st
|index error: move
|   to=:(1    {x)-1
   move&wo &. st
|domain error
|   move&wo    &.st
   ]each st
┌─┬─┬─┐
│2│1│1│
├─┼─┼─┤
│2│3│3│
└─┴─┴─┘
   ]each"1 st
┌─┬─┬─┐
│2│1│1│
├─┼─┼─┤
│2│3│3│
└─┴─┴─┘
   ]each"2 st
┌─┬─┬─┐
│2│1│1│
├─┼─┼─┤
│2│3│3│
└─┴─┴─┘
   ]each"0 st
┌─┬─┬─┐
│2│1│1│
├─┼─┼─┤
│2│3│3│
└─┴─┴─┘
   +/st
4 4 4
   +/"1st
|ill-formed number
|      +/"1st
|         ^
   +/"1 st
4 8
   move&wo "1 st
┌───┬──┬────┐
│DNZ│CM│P   │
├───┼──┼────┤
│NZ │  │MCDP│
└───┴──┴────┘
   move&wo /"1 st
|index error: move
|   to=:(1    {x)-1
   move&wo / st
|domain error: move
|   from=:(0{x)    -1
   p
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2

   pc
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│┌───────────┬───────────┬───────────┬───────────┬──────────────────┬──────────────────┬──────────────────┬──────────────────┐│
││    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2││
│└───────────┴───────────┴───────────┴───────────┴──────────────────┴──────────────────┴──────────────────┴──────────────────┘│
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
   ]pc=.cutopen toJ p
┌───────────┬───────────┬───────────┬───────────┬──────────────────┬──────────────────┬──────────────────┬──────────────────┐
│    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2│
└───────────┴───────────┴───────────┴───────────┴──────────────────┴──────────────────┴──────────────────┴──────────────────┘
   1 3 { pc
┌───────────┬───────────┐
│[N] [C]    │ 1   2   3 │
└───────────┴───────────┘
   1 { 3 { pc
|index error
|   1    {3{pc
   3 { pc
┌───────────┐
│ 1   2   3 │
└───────────┘
   >3 { pc
 1   2   3 
   1{>3 { pc
1
   1=1{>3{ pc
0
   2=1{>3{ pc
0
   2>(1{>3{pc)
|domain error
|   2    >(1{>3{pc)
   2=(1{>3{pc)
0
   1=(1{>3{pc)
0
   (1{>3{pc)
1
   (1{>3{pc)
1
   1=".1{>3{ pc
1
   0=".1{>3{ pc
0
   0 i.&1@: (=".1{>3{) pc
|index error
|   0 i.&1@:(=".1    {>3{)pc
   13 : 0
   x=".1{>3{y
)
[ = [: (".) 1 {  [: > 3 {  ]
   'm'=1{>4{ pc
0
   'm'=0{>4{ pc
1
   13 : 0
   x=0{>4{y
)
[ = 0 {  [: > 4 {  ]
   'm'={.>4{ pc
1
   13 : 0
   'm'={.>4{ pc
)
1"_
   13 : 0
   'm'={.>4{ pc
)
1"_
   'm'1"_ pc
1
   'o'1"_pc
|ill-formed number
|      'o'1"_pc
|           ^
   'o'1"_ pc
1
   'm' i.&1@: (={.) pc
1
   'm' i.&1@: ([={.]) pc
|length error
|   'm'    i.&1@:([={.])pc
   'm'={.>4{ pc
1
   13 : 0
   x={.y
)
[ = [: {. ]
   sta=: [=[:{.]
   'm' sta >4{pc
1
   'm' sta >3{pc
0
   'o' sta >4{pc
0
   'm' i.&1@: sta pc
1
   'm' i.&1@: sta >pc
18
   'm'&i.pc
1 1 1 1 1 1 1 1
   'm'&i.>pc
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1
0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1
0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1
0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1
   'm' i.&0@: sta pc
0
   $pc
8
   #pc
8
      move=: 4 : 0
from=:(0{x)-1
to=:(1{x)-1
times=:2{x
m2=:y
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
|syntax error
|   )
      move=: 4 : 0
from=:(0{y)-1
to=:(1{y)-1
times=:2{y
m2=:x
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
   move
4 : 0
from=:(0{y)-1
to=:(1{y)-1
times=:2{y
m2=:x
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
   pc
┌───────────┬───────────┬───────────┬───────────┬──────────────────┬──────────────────┬──────────────────┬──────────────────┐
│    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2│
└───────────┴───────────┴───────────┴───────────┴──────────────────┴──────────────────┴──────────────────┴──────────────────┘
      ]textstacks=:(4,:1)<;.3 }.lines

   lines
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
      ]textstacks=:(4,:1)<;.3 }.lines
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
      ]wo=:}:each dltb each ,each textstacks

      ]wo=:}:each dltb each ,each textstacks
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   ]m=:4{pc
┌──────────────────┐
│move 1 from 2 to 1│
└──────────────────┘
   cutpara m
|domain error: topara
|   ' '    (I.b)}y
   cutpara >m
┌──────────────────┐
│move 1 from 2 to 1│
└──────────────────┘
   a.
	

┌┬┐├┼┤└┴┘│─ !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~��������������������������������������������������������������������������������������������������������������������������������
   a. 65
|syntax error
|       a.65
   a. 'A'
|syntax error
|       a.'A'
   >m
move 1 from 2 to 1
   (>m) -. 'movefrt'
 1  2  1
   ". (>m) -. 'movefrt'
1 2 1
   13 : 0
   ". (y) -. 'movefrt'
)
[: ". 'movefrt' -.~ ]
   ins=: [: ". 'movefrt' -.~ ]
      move=: 4 : 0

      move=: 4 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m2=:x
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
   3}.pc
┌───────────┬──────────────────┬──────────────────┬──────────────────┬──────────────────┐
│ 1   2   3 │move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2│
└───────────┴──────────────────┴──────────────────┴──────────────────┴──────────────────┘
   4}.pc
┌──────────────────┬──────────────────┬──────────────────┬──────────────────┐
│move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2│
└──────────────────┴──────────────────┴──────────────────┴──────────────────┘
   ins each 4}. pc
┌─────┬─────┬─────┬─────┐
│1 2 1│3 1 3│2 2 1│1 1 2│
└─────┴─────┴─────┴─────┘
   ]moves =: ins each 4}. pc
┌─────┬─────┬─────┬─────┐
│1 2 1│3 1 3│2 2 1│1 1 2│
└─────┴─────┴─────┴─────┘
   wo move {moves
|domain error: move
|   from=:(1{y)    -1
   from
1
   to
2
   wo move >{moves
|length error: move
|   m1=:(<(({.>from{m2),>to{m2))    to}m2
   from
1 2 1 0
1 2 1 0
1 2 1 1

1 2 1 0
1 2 1 0
1 2 1 1

1 2 0 0
1 2 0 0
1 2 0 1


1 0 1 0
1 0 1 0
1 0 1 1

1 0 1 0
1 0 1 0
1 0 1 1

1 0 0 0
1 0 0 0
1 0 0 1


1 2 1 0
1 2 1 0
1 2 1 1

1 2 1 0
1 2 1 0
1 2 1 1

1 2 0 0
1 2 0 0
1 2 0 1
   {moves
┌───────┬───────┬───────┐
│1 3 2 1│1 3 2 1│1 3 2 2│
├───────┼───────┼───────┤
│1 3 2 1│1 3 2 1│1 3 2 2│
├───────┼───────┼───────┤
│1 3 1 1│1 3 1 1│1 3 1 2│
└───────┴───────┴───────┘

┌───────┬───────┬───────┐
│1 1 2 1│1 1 2 1│1 1 2 2│
├───────┼───────┼───────┤
│1 1 2 1│1 1 2 1│1 1 2 2│
├───────┼───────┼───────┤
│1 1 1 1│1 1 1 1│1 1 1 2│
└───────┴───────┴───────┘

┌───────┬───────┬───────┐
│1 3 2 1│1 3 2 1│1 3 2 2│
├───────┼───────┼───────┤
│1 3 2 1│1 3 2 1│1 3 2 2│
├───────┼───────┼───────┤
│1 3 1 1│1 3 1 1│1 3 1 2│
└───────┴───────┴───────┘


┌───────┬───────┬───────┐
│2 3 2 1│2 3 2 1│2 3 2 2│
├───────┼───────┼───────┤
│2 3 2 1│2 3 2 1│2 3 2 2│
├───────┼───────┼───────┤
│2 3 1 1│2 3 1 1│2 3 1 2│
└───────┴───────┴───────┘

┌───────┬───────┬───────┐
│2 1 2 1│2 1 2 1│2 1 2 2│
├───────┼───────┼───────┤
│2 1 2 1│2 1 2 1│2 1 2 2│
├───────┼───────┼───────┤
│2 1 1 1│2 1 1 1│2 1 1 2│
└───────┴───────┴───────┘

┌───────┬───────┬───────┐
│2 3 2 1│2 3 2 1│2 3 2 2│
├───────┼───────┼───────┤
│2 3 2 1│2 3 2 1│2 3 2 2│
├───────┼───────┼───────┤
│2 3 1 1│2 3 1 1│2 3 1 2│
└───────┴───────┴───────┘


┌───────┬───────┬───────┐
│1 3 2 1│1 3 2 1│1 3 2 2│
├───────┼───────┼───────┤
│1 3 2 1│1 3 2 1│1 3 2 2│
├───────┼───────┼───────┤
│1 3 1 1│1 3 1 1│1 3 1 2│
└───────┴───────┴───────┘

┌───────┬───────┬───────┐
│1 1 2 1│1 1 2 1│1 1 2 2│
├───────┼───────┼───────┤
│1 1 2 1│1 1 2 1│1 1 2 2│
├───────┼───────┼───────┤
│1 1 1 1│1 1 1 1│1 1 1 2│
└───────┴───────┴───────┘

┌───────┬───────┬───────┐
│1 3 2 1│1 3 2 1│1 3 2 2│
├───────┼───────┼───────┤
│1 3 2 1│1 3 2 1│1 3 2 2│
├───────┼───────┼───────┤
│1 3 1 1│1 3 1 1│1 3 1 2│
└───────┴───────┴───────┘
   moves
┌─────┬─────┬─────┬─────┐
│1 2 1│3 1 3│2 2 1│1 1 2│
└─────┴─────┴─────┴─────┘
   {.moves
┌─────┐
│1 2 1│
└─────┘
   wo move {.moves
|index error: move
|   from=:(1    {y)-1
   wo move >{.moves
┌───┬──┬─┐
│DNZ│CM│P│
└───┴──┴─┘
   wo move each moves
|length error
|   wo     move each moves
   wo move > each moves
|domain error: move
|   from=:(1{y)    -1
  }:@ dltb@ ,each textstacks
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
      ]wo=: }:@dltb@, each textstacks
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   ]ww=:wo
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   1 (ww=:ww move ])\moves
|index error: move
|   from=:(1    {y)-1
   ww
(<;._1 ' NZ DCM P') move ]
   1\moves
|domain error
|   1    \moves
   1]\moves
┌─────┐
│1 2 1│
├─────┤
│3 1 3│
├─────┤
│2 2 1│
├─────┤
│1 1 2│
└─────┘
   2]\moves
┌─────┬─────┐
│1 2 1│3 1 3│
├─────┼─────┤
│3 1 3│2 2 1│
├─────┼─────┤
│2 2 1│1 1 2│
└─────┴─────┘
   1]\moves
┌─────┐
│1 2 1│
├─────┤
│3 1 3│
├─────┤
│2 2 1│
├─────┤
│1 1 2│
└─────┘
   1 (ww move)\moves
|domain error: move
|   1    (ww move)\moves
   ww move 1 2 1
|domain error: move
|   ww     move 1 2 1
   move=: 4 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m2=:x
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
|syntax error
|   )
   move=: 4 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m2=:x
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
   ww move 1 2 1
|domain error: move
|   ww     move 1 2 1
   ww move <1 2 1
|domain error: move
|   ww     move<1 2 1
   ww
(<;._1 ' NZ DCM P') move ]
   ww=wo
┌──┬───┬──┐
│P │DCM│P │
│P │   │P │
│P │   │P │
│NZ│   │NZ│
│  │   │  │
│P │   │P │
│P │   │P │
│P │   │P │
│NZ│   │NZ│
└──┴───┴──┘
   ww=:wo
   ww move 1 2 1
┌───┬──┬─┐
│DNZ│CM│P│
└───┴──┴─┘
   1 (ww move)\moves
|syntax error
|   1(    ww move)\moves
   1 (ww&move)\moves
|index error: move
|   from=:(1    {y)-1
   from
1
   from=:_1
   from
_1
   1 (ww&move)\moves
|index error: move
|   from=:(1    {y)-1
   from
_1
   1 (ww&move@>)\moves
┌────┬────┬────┐
│DNZ │CM  │P   │
└────┴────┴────┘

┌────┬────┬────┐
│    │DCM │ ZNP│
└────┴────┴────┘

┌────┬────┬────┐
│CDNZ│M   │P   │
└────┴────┴────┘

┌────┬────┬────┐
│Z   │NDCM│P   │
└────┴────┴────┘
   ww=:1 (ww&move@>)\moves
   ww
┌────┬────┬────┐
│DNZ │CM  │P   │
└────┴────┴────┘

┌────┬────┬────┐
│    │DCM │ ZNP│
└────┴────┴────┘

┌────┬────┬────┐
│CDNZ│M   │P   │
└────┴────┴────┘

┌────┬────┬────┐
│Z   │NDCM│P   │
└────┴────┴────┘
   ww=:wo
   1 (ww&move@>)/\moves
┌─────┬─────┬─────┬─────┐
│1 2 1│3 1 3│2 2 1│1 1 2│
└─────┴─────┴─────┴─────┘
   1 (ww&move@>)/\.moves
|domain error
|   1    (ww&move@>)/\.moves
   1 ]/\moves
┌─────┬─────┬─────┬─────┐
│1 2 1│3 1 3│2 2 1│1 1 2│
└─────┴─────┴─────┴─────┘
   1 (move@>)/\.moves
|domain error
|   1    (move@>)/\.moves
   ww 1 (move@>)/\.moves
|domain error
|   ww 1    (move@>)/\.moves
   ww +/1 (move@>)\.moves
|domain error: move
|   ww+/1    (move@>)\.moves
   ww move@>/\.moves
|domain error
|   ww     move@>/\.moves
   mm =: 4 3$ 1 2 1 3 1 3 2 2 1 1 1 2
   mm
1 2 1
3 1 3
2 2 1
1 1 2
   ww move/\ mm
|domain error
|   ww     move/\mm
   cderr ''
|value error: cderr
|       cderr''
   cder ''
0 0
   ww move/\ mm
|domain error
|   ww     move/\mm
   cder ''
0 0
   move=: 4 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m2=:x
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
|syntax error
|   )
   move2=: 4 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m2=:x
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
   ww move/\. mm
|domain error
|   ww     move/\.mm
   ww move2/\. mm
|domain error
|   ww     move2/\.mm
   ww move2/\ mm
|domain error
|   ww     move2/\mm
   move=: 3 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m2=:ww
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
   moveacc=: 3 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m2=:ww
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
ww=:m2
)
   moveacc/\mm
|domain error: moveacc
|       moveacc/\mm
   moveacc\mm
|index error: moveacc
|   from=:(1    {y)-1
   1 moveacc\mm
|index error: moveacc
|   from=:(1    {y)-1
   from
0
   ww
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   1 moveacc\mm
|index error: moveacc
|   from=:(1    {y)-1
   1 moveacc@>\mm
|index error: moveacc
|   from=:(1    {y)-1
   moveacc@>\mm
|index error: moveacc
|   from=:(1    {y)-1
   moveacc each mm
|index error: moveacc
|   from=:(1    {y)-1
   from
0
   lok=: 3 : 0
k=:k+y
)
   k=:0
   lok 4 5 6 7
4 5 6 7
   k
4 5 6 7
   k=:0
   lok each 4 5 6 7
┌─┬─┬──┬──┐
│4│9│15│22│
└─┴─┴──┴──┘
   lo=: 3 : 0
y&+
)
   lo\ 4 5 6 7
|noun result was required: lo
|       y&+
   1 lo\ 4 5 6 7
|noun result was required: lo
|       y&+
         ]p=:1!:1<'/home/deck/projects/adventofcode/2022/d05t1.input'
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2

      ]lines=.|:>4{.cutopen p
 [[ 
 NZ1
 ]] 
    
[[[ 
DCM2
]]] 
    
  [ 
  P3
  ] 
     ]textstacks=:(4,:1)<;.3 }.lines 
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
      ]wo=:}:each dltb each ,each textstacks
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
      ]pc=.cutopen toJ p
┌───────────┬───────────┬───────────┬───────────┬──────────────────┬──────────────────┬──────────────────┬──────────────────┐
│    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2│
└───────────┴───────────┴───────────┴───────────┴──────────────────┴──────────────────┴──────────────────┴──────────────────┘
      ]moves =: ins each 4}. pc
┌─────┬─────┬─────┬─────┐
│1 2 1│3 1 3│2 2 1│1 1 2│
└─────┴─────┴─────┴─────┘
   'm' i.&1@: (={.) pc
1
   'm' i.&0@: (={.) pc
0
      move=: 4 : 0
from=:(0{x)-1
to=:(1{x)-1
times=:2{x
m2=:y
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
      move=: 4 : 0
from=:(0{y)-1
to=:(1{x)-1

)
      move=: 4 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m2=:y
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
   wo move 1 1 2
|domain error: move
|   m1=:(<(({.>from{m2),>to{m2))    to}m2
   wo move <1 1 2
|index error: move
|   from=:(1    {y)-1
   wo move 1 1 2
|domain error: move
|   m1=:(<(({.>from{m2),>to{m2))    to}m2
   from
0
   to
1
   times
1
   m2
1 1 2
      move=: 4 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m2=:x
for. i.times do.
m1=:(<(({.>from{m2),>to{m2))to}m2
m2=:(<}.>from{m1)from}m1
end.
m2
)
   wo move 1 1 2
┌─┬────┬─┐
│Z│NDCM│P│
└─┴────┴─┘
   wo move 1 2 1
┌───┬──┬─┐
│DNZ│CM│P│
└───┴──┴─┘
   > each moves
┌─────┬─────┬─────┬─────┐
│1 2 1│3 1 3│2 2 1│1 1 2│
└─────┴─────┴─────┴─────┘
   >> each moves
1 2 1
3 1 3
2 2 1
1 1 2
   ww move/\.>> each moves
|domain error
|   ww     move/\.>>each moves
   ww move\.>> each moves
|domain error
|   ww     move\.>>each moves
   ww move\>> each moves
|domain error
|   ww     move\>>each moves
   1 ww&move\>> each moves
|index error: move
|   from=:(1    {y)-1
      moveacc=: 4 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
for. i.times do.
m1=:(<(({.>from{acc),>to{acc))to}acc
acc=:(<}.>from{m1)from}m1
end.
acc
)
   ww
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   acc=:ww
   ww moveacc (>> each moves)
┌───┬───┬───┐
│P  │P  │P  │
│DCM│DCM│DCM│
│DCM│DCM│DCM│
│NZ │NZ │NZ │
│   │   │   │
│P  │   │P  │
│   │   │   │
│   │   │   │
│   │   │   │
└───┴───┴───┘
   ww moveacc \moves
|domain error
|   ww     moveacc\moves
      moveacc=: 3 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
for. i.times do.
m1=:(<(({.>from{acc),>to{acc))to}acc
acc=:(<}.>from{m1)from}m1
end.
acc
)
   1 moveacc\ moves
|index error: moveacc
|   from=:(1    {y)-1
   from
2 0 2
   acc
┌───┬───┬───┐
│P  │P  │P  │
│DCM│DCM│DCM│
│DCM│DCM│DCM│
│NZ │NZ │NZ │
│   │   │   │
│P  │   │P  │
│   │   │   │
│   │   │   │
│   │   │   │
└───┴───┴───┘
   acc=:ww
   1 moveacc\ moves
|index error: moveacc
|   from=:(1    {y)-1
   acc
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   ww
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   1 moveacc\. moves
|domain error: moveacc
|   from=:(1{y)    -1
   acc
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   1 moveacc@>\. moves
┌────┬───┬──────────┐
│    │DCM│ ZNP      │
├────┼───┼──────────┤
│CD  │M  │ ZNP      │
├────┼───┼──────────┤
│D   │CM │ ZNP      │
└────┴───┴──────────┘

┌────┬───┬──────────┐
│CD  │M  │ ZNP      │
├────┼───┼──────────┤
│ MCD│   │ ZNP      │
├────┼───┼──────────┤
│MCD │   │ ZNP      │
└────┴───┴──────────┘

┌────┬───┬──────────┐
│ MCD│   │ ZNP      │
├────┼───┼──────────┤
│D   │   │CM  ZNP   │
├────┼───┼──────────┤
│    │D  │CM  ZNP   │
└────┴───┴──────────┘

┌────┬───┬──────────┐
│D   │   │CM  ZNP   │
├────┼───┼──────────┤
│    │   │  DCM  ZNP│
├────┼───┼──────────┤
│    │   │  DCM  ZNP│
└────┴───┴──────────┘
   moves
┌─────┬─────┬─────┬─────┐
│1 2 1│3 1 3│2 2 1│1 1 2│
└─────┴─────┴─────┴─────┘
   acc
┌──┬┬──────────┐
│  ││  DCM  ZNP│
└──┴┴──────────┘
   acc=:ww
   moveacc@> each moves
|index error: moveacc
|   from=:(1    {y)-1
   acc
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
   moveacc each moves
┌──────────┬──────────┬──────────┬──────────┐
│┌───┬──┬─┐│┌┬──┬────┐│┌──┬┬────┐│┌─┬─┬────┐│
││DNZ│CM│P││││CM│ZNDP│││MC││ZNDP│││C│M│ZNDP││
│└───┴──┴─┘│└┴──┴────┘│└──┴┴────┘│└─┴─┴────┘│
└──────────┴──────────┴──────────┴──────────┘
   acc
┌─┬─┬────┐
│C│M│ZNDP│
└─┴─┴────┘
   {./acc
|domain error
|       {./acc
   {. each acc
┌─┬─┬─┐
│C│M│Z│
└─┴─┴─┘
   ,\{. each acc
┌─┬─┬─┐
│C│ │ │
├─┼─┼─┤
│C│M│ │
├─┼─┼─┤
│C│M│Z│
└─┴─┴─┘
   ,\.{. each acc
┌─┬─┬─┐
│C│M│Z│
├─┼─┼─┤
│M│Z│ │
├─┼─┼─┤
│Z│ │ │
└─┴─┴─┘
   ,@{. each acc
┌─┬─┬─┐
│C│M│Z│
└─┴─┴─┘
   ,@>@{. each acc
┌─┬─┬─┐
│C│M│Z│
└─┴─┴─┘
   >@{. each acc
┌─┬─┬─┐
│C│M│Z│
└─┴─┴─┘
      day05=:1!:1<'/home/deck/projects/adventofcode/2022/d05t1.input'
   #day05
125
   lines=.|:>4{.cutopen p
   lines=.|:>9{.cutopen p
      ]textstacks=:(4,:1)<;.3 }.lines
┌─────────┬─────────┬─────────┬─────────┬─────────┐
│ NZ1oooo │DCM21321 │  P3oooo │         │    1312 │
└─────────┴─────────┴─────────┴─────────┴─────────┘
      ]textstacks=:(9,:1)<;.3 }.lines
┌─────────┬─────────┐
│ NZ1oooo │  ] mmmm │
└─────────┴─────────┘
   lines
 [[ mmmm 
 NZ1oooo 
 ]] vvvv 
    eeee 
[[[      
DCM21321 
]]]      
    ffff 
  [ rrrr 
  P3oooo 
  ] mmmm 
         
    2121 
         
    tttt 
    oooo 
         
    1312 
   ]lines=.|:>9{.cutopen day5
|syntax error
|   ]lines=.|:>    9{.cutopen day5
   ]lines=.|:>9{.cutopen day05
 [[ mmmm 
 NZ1oooo 
 ]] vvvv 
    eeee 
[[[      
DCM21321 
]]]      
    ffff 
  [ rrrr 
  P3oooo 
  ] mmmm 
         
    2121 
         
    tttt 
    oooo 
         
    1312 
   >9{.cutopen day05
    [D]           
[N] [C]           
[Z] [M] [P]       
 1   2   3        
move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2
                  
      day05=:1!:1<'/home/deck/projects/adventofcode/2022/day5.input'
|file name error
|   day05=:    1!:1<'/home/deck/projects/adventofcode/2022/day5.input'
      day05=:1!:1<'/home/deck/projects/adventofcode/2022/day05.input'
   lines=.|:>9{.cutopen p
      ]textstacks=:(4,:1)<;.3 }.lines
┌─────────┬─────────┬─────────┬─────────┬─────────┐
│ NZ1oooo │DCM21321 │  P3oooo │         │    1312 │
└─────────┴─────────┴─────────┴─────────┴─────────┘
   lines=.|:>9{.cutopen day05
      ]textstacks=:(4,:1)<;.3 }.lines
┌─────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┐
│ JFCNDBW1│ TSLQVZP2│  TJGBZP3│CHBZJLTD4│   SJBVG5│     QSP6│NPMLFDVB7│RLDBFMSP8│    RTDV9│
└─────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┘
   ]wo=:}:@dltb @,each textstacks
┌───────┬───────┬──────┬────────┬─────┬───┬────────┬────────┬────┐
│JFCNDBW│TSLQVZP│TJGBZP│CHBZJLTD│SJBVG│QSP│NPMLFDVB│RLDBFMSP│RTDV│
└───────┴───────┴──────┴────────┴─────┴───┴────────┴────────┴────┘
   ins=: [: ". 'movefrt' -.~ ]
   pc=.cutopen toJ day05
   moves =: ins each 4}. pc
   acc=:wo
   moveacc each moves
|index error: moveacc
|   from=:(1    {y)-1
   acc
┌───────┬───────┬──────┬────────┬─────┬───┬────────┬────────┬────┐
│JFCNDBW│TSLQVZP│TJGBZP│CHBZJLTD│SJBVG│QSP│NPMLFDVB│RLDBFMSP│RTDV│
└───────┴───────┴──────┴────────┴─────┴───┴────────┴────────┴────┘
   moves
┌┬┬┬┬─────────────────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬──────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬──────┬─────┬──────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬──────┬─────┬─...
│││││1 2 3 4 5 6 7 8 9│4 9 6│7 2 5│3 5 2│2 2 1│2 8 4│1 6 9│1 9 4│7 1 2│5 2 3│5 7 4│5 6 3│1 7 6│2 6 9│3 2 4│4 5 6│2 7 3│2 9 3│1 5 2│11 4 3│1 2 9│1 9 3│2 1 6│5 8 5│7 5 4│2 5 6│6 6 4│17 3 4│1 8 3│11 4 7│1 6 4│3 4 2│2 2 6│8 3 1│8 3 9│3 9 6│3 1 3│11 7 5│1 6 4│4...
└┴┴┴┴─────────────────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴──────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴──────┴─────┴──────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴──────┴─────┴─...
   ]moves =: ins each 9}. pc
┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬──────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬──────┬─────┬──────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬──────┬─────┬─────┬─────┬─────┬─────...
│4 9 6│7 2 5│3 5 2│2 2 1│2 8 4│1 6 9│1 9 4│7 1 2│5 2 3│5 7 4│5 6 3│1 7 6│2 6 9│3 2 4│4 5 6│2 7 3│2 9 3│1 5 2│11 4 3│1 2 9│1 9 3│2 1 6│5 8 5│7 5 4│2 5 6│6 6 4│17 3 4│1 8 3│11 4 7│1 6 4│3 4 2│2 2 6│8 3 1│8 3 9│3 9 6│3 1 3│11 7 5│1 6 4│4 9 6│3 1 4│1 2 3│1 6 9...
└─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴──────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴──────┴─────┴──────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴──────┴─────┴─────┴─────┴─────┴─────...
   moveacc each moves
┌──────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────...
│┌───────┬───────┬──────┬────────┬─────┬───────┬────────┬────────┬┐│┌───────┬┬──────┬────────┬────────────┬───────┬────────┬────────┬┐│┌───────┬───┬──────┬────────┬─────────┬───────┬────────┬────────┬┐│┌─────────┬─┬──────┬────────┬─────────┬───────┬───────...
││JFCNDBW│TSLQVZP│TJGBZP│CHBZJLTD│SJBVG│VDTRQSP│NPMLFDVB│RLDBFMSP││││JFCNDBW││TJGBZP│CHBZJLTD│PZVQLSTSJBVG│VDTRQSP│NPMLFDVB│RLDBFMSP││││JFCNDBW│VZP│TJGBZP│CHBZJLTD│QLSTSJBVG│VDTRQSP│NPMLFDVB│RLDBFMSP││││ZVJFCNDBW│P│TJGBZP│CHBZJLTD│QLSTSJBVG│VDTRQSP│NPMLFDV...
│└───────┴───────┴──────┴────────┴─────┴───────┴────────┴────────┴┘│└───────┴┴──────┴────────┴────────────┴───────┴────────┴────────┴┘│└───────┴───┴──────┴────────┴─────────┴───────┴────────┴────────┴┘│└─────────┴─┴──────┴────────┴─────────┴───────┴───────...
└──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────...
   {. each acc
┌─┬─┬─┬─┬─┬─┬─┬─┬─┐
│L│B│L│V│V│T│V│L│P│
└─┴─┴─┴─┴─┴─┴─┴─┴─┘
   >>{. each acc
LBLVVTVLP
         moveacc=: 3 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
for. i.times do.
m1=:(<(({.>from{acc),>to{acc))to}acc
acc=:(<}.>from{m1)from}m1
end.
acc
         moveacc2=: 3 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
for. i.times do.
m1=:(<((times{.>from{acc),>to{acc))to}acc
acc=:(<times}.>from{m1)from}m1
end.
acc
)
         moveacc2=: 3 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m1=:(<((times{.>from{acc),>to{acc))to}acc
acc=:(<times}.>from{m1)from}m1
acc
end
acc=w0
acc=wo
acc
)
         moveacc2=: 3 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m1=:(<((times{.>from{acc),>to{acc))to}acc
acc=:(<times}.>from{m1)from}m1
acc
)
   acc=:wo
   acc
┌───────┬───────┬──────┬────────┬─────┬───┬────────┬────────┬────┐
│JFCNDBW│TSLQVZP│TJGBZP│CHBZJLTD│SJBVG│QSP│NPMLFDVB│RLDBFMSP│RTDV│
└───────┴───────┴──────┴────────┴─────┴───┴────────┴────────┴────┘
   moveacc2 3 1 2
┌────┬──────────┬──────┬────────┬─────┬───┬────────┬────────┬────┐
│NDBW│JFCTSLQVZP│TJGBZP│CHBZJLTD│SJBVG│QSP│NPMLFDVB│RLDBFMSP│RTDV│
└────┴──────────┴──────┴────────┴─────┴───┴────────┴────────┴────┘
   acc=:wo
   moveacc each moves
┌──────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────...
│┌───────┬───────┬──────┬────────┬─────┬───────┬────────┬────────┬┐│┌───────┬┬──────┬────────┬────────────┬───────┬────────┬────────┬┐│┌───────┬───┬──────┬────────┬─────────┬───────┬────────┬────────┬┐│┌─────────┬─┬──────┬────────┬─────────┬───────┬───────...
││JFCNDBW│TSLQVZP│TJGBZP│CHBZJLTD│SJBVG│VDTRQSP│NPMLFDVB│RLDBFMSP││││JFCNDBW││TJGBZP│CHBZJLTD│PZVQLSTSJBVG│VDTRQSP│NPMLFDVB│RLDBFMSP││││JFCNDBW│VZP│TJGBZP│CHBZJLTD│QLSTSJBVG│VDTRQSP│NPMLFDVB│RLDBFMSP││││ZVJFCNDBW│P│TJGBZP│CHBZJLTD│QLSTSJBVG│VDTRQSP│NPMLFDV...
│└───────┴───────┴──────┴────────┴─────┴───────┴────────┴────────┴┘│└───────┴┴──────┴────────┴────────────┴───────┴────────┴────────┴┘│└───────┴───┴──────┴────────┴─────────┴───────┴────────┴────────┴┘│└─────────┴─┴──────┴────────┴─────────┴───────┴───────...
└──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────...
   {. each acc
┌─┬─┬─┬─┬─┬─┬─┬─┬─┐
│L│B│L│V│V│T│V│L│P│
└─┴─┴─┴─┴─┴─┴─┴─┴─┘
   >>{. each acc
LBLVVTVLP
   acc=:wo
   moveacc2 each moves
┌──────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────...
│┌───────┬───────┬──────┬────────┬─────┬───────┬────────┬────────┬┐│┌───────┬┬──────┬────────┬────────────┬───────┬────────┬────────┬┐│┌───────┬───┬──────┬────────┬─────────┬───────┬────────┬────────┬┐│┌─────────┬─┬──────┬────────┬─────────┬───────┬───────...
││JFCNDBW│TSLQVZP│TJGBZP│CHBZJLTD│SJBVG│RTDVQSP│NPMLFDVB│RLDBFMSP││││JFCNDBW││TJGBZP│CHBZJLTD│TSLQVZPSJBVG│RTDVQSP│NPMLFDVB│RLDBFMSP││││JFCNDBW│TSL│TJGBZP│CHBZJLTD│QVZPSJBVG│RTDVQSP│NPMLFDVB│RLDBFMSP││││TSJFCNDBW│L│TJGBZP│CHBZJLTD│QVZPSJBVG│RTDVQSP│NPMLFDV...
│└───────┴───────┴──────┴────────┴─────┴───────┴────────┴────────┴┘│└───────┴┴──────┴────────┴────────────┴───────┴────────┴────────┴┘│└───────┴───┴──────┴────────┴─────────┴───────┴────────┴────────┴┘│└─────────┴─┴──────┴────────┴─────────┴───────┴───────...
└──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────...
   >>{. each acc
TPFFBDRJD
   
   ]p=:1!:1<'/home/deck/projects/adventofcode/2022/d05t1.input'
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2
   lines=.|:>4{.cutopen p
   ]textstacks=:(4,:1)<;.3 }.lines
┌────┬────┬────┐
│ NZ1│DCM2│  P3│
└────┴────┴────┘
   ]wo=:}:each dltb each ,each textstacks
┌──┬───┬─┐
│NZ│DCM│P│
└──┴───┴─┘
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
ins=: [: ". 'movefrt' -.~ ]
      ]pc=.cutopen toJ p
┌───────────┬───────────┬───────────┬───────────┬──────────────────┬──────────────────┬──────────────────┬──────────────────┐
│    [D]    │[N] [C]    │[Z] [M] [P]│ 1   2   3 │move 1 from 2 to 1│move 3 from 1 to 3│move 2 from 2 to 1│move 1 from 1 to 2│
└───────────┴───────────┴───────────┴───────────┴──────────────────┴──────────────────┴──────────────────┴──────────────────┘
      ]moves =: ins each 4}. pc
┌─────┬─────┬─────┬─────┐
│1 2 1│3 1 3│2 2 1│1 1 2│
└─────┴─────┴─────┴─────┘
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
   
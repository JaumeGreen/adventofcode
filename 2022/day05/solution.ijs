NB. Sample usage
NB. 
NB.    4 init 'd05t1' NB. 4 is the line in the file where the stack numbers appear, change manually
NB. ┌─────┬─────┬─────┬─────┐
NB. │1 2 1│3 1 3│2 2 1│1 1 2│
NB. └─────┴─────┴─────┴─────┘
NB.    stack sol1 move
NB. CMZ
NB.    stack sol2 move
NB. MCD
NB.    acc
NB. ┌─┬─┬────┐
NB. │M│C│DNZP│
NB. └─┴─┴────┘

   read=:{{1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'}}

   stload=:{{ }:each dltb each ,each (4,:1)<;.3 }.|:>x{.cutopen y}}
   mvload =: {{([: ". 'movefrt' -.~ ]) each x}. cutopen toJ y}}

   movest=: 3 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
for. i.times do.
    m1=:(<(({.>from{acc),>to{acc))to}acc
    acc=:(<}.>from{m1)from}m1
end.
acc
)

   movest2=: 3 : 0
from=:(1{y)-1
to=:(2{y)-1
times=:0{y
m1=:(<((times{.>from{acc),>to{acc))to}acc
acc=:(<times}.>from{m1)from}m1
acc
)

   init=: 4 : 0
file=:read y
stack=: x stload file
move =: x mvload file
)

   sol1=: 4 : 0
acc=:x
movest each y
>{. each acc
)

   sol2=: 4 : 0
acc=:x
movest2 each y
>{. each acc
)
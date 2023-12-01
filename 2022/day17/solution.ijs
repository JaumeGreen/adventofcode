NB.    2022 movement mv
NB. 6 3170 NB. +1

read=:{{1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
init=: {{(read y) rplc LF;''}}

NB. 0    ####
NB.   0123456

   t1right=: 4 : 0
if. 3>{.y do.
   if. -.+./((4+{.y), {:y) e. x do.
      (>:{.y), {:y return.
   end.
end.
y
)
   t1left=: 4 : 0
if. 0<{.y do.
   if. -.+./((<:{.y), {:y) e. x do.
      (<:{.y), {:y return.
   end.
end.
y
)
   t1down=: 4 : 0
if. 0<{:y do.
   ch=: y+"1/ 0 _1, 1 _1, 2 _1,: 3 _1
   if. -.+./ch e. x do.
      ({.y), <:{:y return.
   end.
end.
y
)
   t1pos=: 3 : 0
   y+"1/ 0 0, 1 0, 2 0,: 3 0
)
NB.  2     .#.
NB.  1     ###
NB.  0     .#.
NB.    0123456
   t2right=: 4 : 0
if. 4>{.y do.
   ch=: y+"1/ 2 0, 3 1 ,: 2 2
   if. -.+./ch e. x do.
      (>:{.y), {:y return.
   end.
end.
y
)
   t2left=: 4 : 0
if. 0<{.y do.
   ch=: y+"1/ 0 0, _1 1 ,: 0 2
   if. -.+./ch e. x do.
      (<:{.y), {:y return.
   end.
end.
y
)
   t2down=: 4 : 0
if. 0<{:y do.
   ch=: y+"1/ 0 0, 1 _1 ,: 2 0
   if. -.+./ch e. x do.
      ({.y), <:{:y return.
   end.
end.
y
)
   t2pos=: 3 : 0
   y+"1/ 1 0, 0 1 , 2 1,: 1 2 NB. not placing 1 _1 as no other piece can reach there
)

NB.  2     ..#
NB.  1     ..#
NB.  0     ###
NB.    0123456
   t3right=: 4 : 0
if. 4>{.y do.
   ch=: y+"1/ 3 0, 3 1 ,: 3 2
   if. -.+./ch e. x do.
      (>:{.y), {:y return.
   end.
end.
y
)
   t3left=: 4 : 0
if. 0<{.y do.
   ch=: y+"1/ _1 0, 1 1 ,: 1 2
   if. -.+./ch e. x do.
      (<:{.y), {:y return.
   end.
end.
y
)
   t3down=: 4 : 0
if. 0<{:y do.
   ch=: y+"1/ 0 _1, 1 _1 ,: 2 _1
   if. -.+./ch e. x do.
      ({.y), <:{:y return.
   end.
end.
y
)
   t3pos=: 3 : 0
   y+"1/ 0 0, 1 0 , 2 0, 2 1,: 2 2
)

NB.  3 #
NB.  2 #
NB.  1 #
NB.  0 #
NB.    0123456
   t4right=: 4 : 0
if. 6>{.y do.
   ch=: y+"1/ 1 0, 1 1 , 1 2,: 1 3
   if. -.+./ch e. x do.
      (>:{.y), {:y return.
   end.
end.
y
)
   t4left=: 4 : 0
if. 0<{.y do.
   ch=: y+"1/ _1 0, _1 1 , _1 2 ,: _1 3
   if. -.+./ch e. x do.
      (<:{.y), {:y return.
   end.
end.
y
)
   t4down=: 4 : 0
if. 0<{:y do.
   if. -.+./(({.y), <:{:y) e. x do.
      ({.y), <:{:y return.
   end.
end.
y
)
   t4pos=: 3 : 0
   y+"1/ 0 0, 0 1 , 0 2,: 0 3
)

NB.  1 ##
NB.  0 ##
NB.    0123456
   t5right=: 4 : 0
if. 5>{.y do.
   ch=: y+"1/ 2 0,: 2 1 
   if. -.+./ch e. x do.
      (>:{.y), {:y return.
   end.
end.
y
)
   t5left=: 4 : 0
if. 0<{.y do.
   ch=: y+"1/ _1 0,: _1 1
   if. -.+./ch e. x do.
      (<:{.y), {:y return.
   end.
end.
y
)
   t5down=: 4 : 0
if. 0<{:y do.
   ch=: y+"1/ 0 _1,: 1 _1
   if. -.+./ch e. x do.
      ({.y), <:{:y return.
   end.
end.
y
)
   t5pos=: 3 : 0
   y+"1/ 0 0, 1 0 , 0 1 ,: 1 1
)

   tpos=: t1pos`t2pos`t3pos`t4pos`t5pos
   tleft=: t1left`t2left`t3left`t4left`t5left
   tright=: t1right`t2right`t3right`t4right`t5right
   tdown=: t1down`t2down`t3down`t4down`t5down

   movement=: 4 : 0
   NB. y <- move list
tube=:_1 _1
tt=:0 NB. total
tn=:0
mt=:0
mn=:0
pos=: 2 3
whilst. tt<x do.
    ch=:mn{y
    select. ch
    case. '>'  do.
        pos=:tube (tright@.tn) pos
    case. '<'  do.
        pos=:tube (tleft@.tn) pos
    end.
    npos=:tube (tdown@.tn) pos
    if. npos -: pos do.
        tube=: tube,(tpos@.tn) pos
        tt=:tt+1
        tn=:5|tt
        npos =: 2, 4+}.>./tube
        NB.show (tube,(tpos@.tn) npos)
    end.
    pos=:npos
    mn=:y {{(#x)|y}} >:mn 
    mt=:>:mt
end.
>./tube
)


   show=: 3 : 0
maxy=:}.>./y
for_j. i.>:maxy do.
    line=:'|'
    for_i. i.7 do.
        if. (i,maxy-j) e. y do.
            line=:line,'#'
        else.
            line=:line,'.'
        end.
    end.
    line=:line,'| ',": maxy-j
    smoutput line
end.
line=:'+-------+'
smoutput line
)
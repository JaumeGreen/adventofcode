read=:{{1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   ]mov=:read 'day17'
|file name error: read
|       1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'
   ]mov=:read 'd17t1'
>>><<><>><<<>><>>><<<>>><<<><<<>><>><<>>

   d=:+
   c=:*
   4 d 6
10
   d c 6
1
   x=:c
   4 x 6
24
   4 c 6
24
   NB. tube 7 wide (0 to 6), bottom at 0, first row at 1
   NB. each form has several functions
   NB. pos=: tube right pos -> to displace it to the right.
   NB. pos=: tube left pos -> to displace it to the left.
   NB. pos=: tube down pos -> to displace it down. If ypos result is the same as the input it stops
   NB. xpos,ypos from the piece should be bottom left, that way initialization is easier.
   NB. poslist =: positions pos -> to get a list of the current positions, to add it to the tube
   
   tube=: ''

NB. 0    ####
NB.   0123456

   t1right=: 4 : 0
if. 3>{.y do.
   if. -.+./((>:{.y), {:y) e. x do.
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
   if. -.+./(({.y), <:{:y) e. x do.
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
   ch=: y+"1/ 1 0, 0 _1 ,: 2 0
   if. -.+./ch e. x do.
      ({.y), <:{:y return.
   end.
end.
y
)
   t2pos=: 3 : 0
   y+"1/ 1 0, 0 1 , 1 1, 2 1,: 1 2
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

   3 4 +"1/ 3 2$_1 0, _2 _1, _1 _1
2 4
1 3
2 3
   (3 4 +"1/ 3 2$_1 0, _2 _1, _1 _1) e. (4 2$1 3 4 5 6 7) 
0 1 0

NB. init blank tube, movements, array of T functions (so they can be rotated)
   NB. not working, it tryes to execute them, not understand them as functions. tmoves=: t1right, t1left, t1down, t1pos, tright, t2left, t2down, t2pos, t3right, t3left, t3down, t3pos, t4right, t4left, t4down, t4pos,: t5right, t5left, t5down, t5pos
   ]tmoves=: 5 4$'t1right'; 't1left'; 't1down'; 't1pos'; 't2right'; 't2left'; 't2down'; 't2pos'; 't3right'; 't3left'; 't3down'; 't3pos'; 't4right'; 't4left'; 't4down'; 't4pos'; 't5right'; 't5left'; 't5down'; 't5pos'

   tpos=: t1pos`t2pos`t3pos`t4pos`t5pos
   tpos
┌─────┬─────┬─────┬─────┬─────┐
│t1pos│t2pos│t3pos│t4pos│t5pos│
└─────┴─────┴─────┴─────┴─────┘
   tpos@.0
3 : '   y+"1/ 0 0, 1 0, 2 0,: 3 0'
   tpos@.0 1 1
t1pos t2pos t2pos
   (tpos@.0) 1 1
1 1
2 1
3 1
4 1
   (tpos@.1) 1 1
2  1
1  0
3  0
2 _1

   13 : '((#x)|y){x'
[ { ~ ] |~ [: # [
   13 : '(#x)|y'
] |~ [: # [

   tpos=: t1pos`t2pos`t3pos`t4pos`t5pos
   tleft=: t1left`t2left`t3left`t4left`t5left
   tright=: t1right`t2right`t3right`t4right`t5right
   tdown=: t1down`t2down`t3down`t4down`t5down

   movement=: 3 : 0
   NB. y <- move list
tube=:''
tt=:0 NB. total
tn=:0
mn=:0
pos=: 2 3
whilst. tt<11 do.
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
    end.
    pos=:npos
    mn=:y {{(#x)|y}} >:mn 
end.
)

   (tpos@.3) 1 3
1 3
1 4
1 5
1 6

   >."1/(tpos@.3) 1 3
1 6
   >./"1(tpos@.3) 1 3
3 4 5 6
   >./(tpos@.3) 1 3
1 6
   }.>./(tpos@.3) 1 3
6

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

(1 2$1 3) t1left 2 3
(1 2$4 3) t1left 0 3
(1 2$4 3) t1right 0 3
(1 2$4 6) t1right 3 3
(1 2$0 2) t1down 2 3
(1 2$1 2) t1down 2 3
(1 2$2 2) t1down 2 3
(1 2$3 2) t1down 2 3
(1 2$4 2) t1down 2 3
(1 2$5 2) t1down 2 3
(1 2$6 2) t1down 2 3


(1 2$2 3) t2left 2 3
(1 2$1 4) t2left 2 3
(1 2$2 5) t2left 2 3
(1 2$1 3) t2left 2 3
(1 2$5 3) t2left 0 3
(1 2$4 3) t2right 2 3
(1 2$5 4) t2right 2 3
(1 2$4 5) t2right 2 3
(1 2$4 6) t2right 4 3
(1 2$0 2) t2down 2 3
(1 2$1 2) t2down 2 3
(1 2$2 2) t2down 2 3
(1 2$3 2) t2down 2 3
(1 2$4 2) t2down 2 3
(1 2$5 2) t2down 2 3
(1 2$6 2) t2down 2 3
(1 2$0 3) t2down 2 3
(1 2$1 3) t2down 2 3
(1 2$2 3) t2down 2 3
(1 2$3 3) t2down 2 3
(1 2$4 3) t2down 2 3
(1 2$5 3) t2down 2 3
(1 2$6 3) t2down 2 3



(1 2$1 3) t3left 2 3
(1 2$4 3) t3left 0 3
(1 2$3 3) t3right 0 3
(1 2$4 6) t3right 3 3
(1 2$4 6) t3right 4 3
(1 2$0 2) t3down 2 3
(1 2$1 2) t3down 2 3
(1 2$2 2) t3down 2 3
(1 2$3 2) t3down 2 3
(1 2$4 2) t3down 2 3
(1 2$5 2) t3down 2 3
(1 2$6 2) t3down 2 3

(1 2$1 3) t4left 2 3
(1 2$1 4) t4left 2 3
(1 2$1 5) t4left 2 3
(1 2$1 6) t4left 2 3
(1 2$4 3) t4left 0 3
(1 2$4 3) t4left 3 3
(1 2$3 3) t4right 2 3
(1 2$3 4) t4right 2 3
(1 2$3 5) t4right 2 3
(1 2$3 6) t4right 2 3
(1 2$4 6) t4right 3 3
(1 2$4 6) t4right 5 3
(1 2$4 6) t4right 6 3
(1 2$0 2) t4down 2 3
(1 2$1 2) t4down 2 3
(1 2$2 2) t4down 2 3
(1 2$3 2) t4down 2 3
(1 2$4 2) t4down 2 3
(1 2$5 2) t4down 2 3
(1 2$6 2) t4down 2 3

(1 2$1 3) t5left 2 3
(1 2$1 4) t5left 2 3
(1 2$1 5) t5left 2 3
(1 2$1 6) t5left 2 3
(1 2$4 3) t5left 0 3
(1 2$4 3) t5left 3 3
(1 2$4 3) t5right 2 3
(1 2$4 4) t5right 2 3
(1 2$4 5) t5right 2 3
(1 2$4 6) t5right 2 3
(1 2$5 6) t5right 3 3
(1 2$4 6) t5right 5 3
(1 2$4 6) t5right 4 3
(1 2$0 2) t5down 2 3
(1 2$1 2) t5down 2 3
(1 2$2 2) t5down 2 3
(1 2$3 2) t5down 2 3
(1 2$4 2) t5down 2 3
(1 2$5 2) t5down 2 3
(1 2$6 2) t5down 2 3

   a.i.'<'
60
   a.i.'>'
62
   0={."1 tube
0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0
   (0={."1 tube) # tube
0  3
0 12
0 13
   >./(0={."1 tube) # tube
0 13
   {:>./(0={."1 tube) # tube
13
13 : '{:>./(x={."1 y) # y'
[: {: [: >./ ] #~ [ = [: {."1 ]
   
   maxny=: [:{:[:>./]#~[=[:{."1]
   diffy=:{{({:x)-y}}

   movcl=: 4 : 0
   NB. y <- move list
tube=:_1 _1
tt=:0 NB. total
tn=:0
mt=:0
mn=:0
pos=: 2 3
cycle=: 1 11$_1
height=:0
whilst. tt<x do.
    ch=:mn{y
    maxy=:{:>./tube
    cl=: ({. pos), (({:pos)-maxy),tn, mn 
    for_j. i.7 do.
       yn=: j maxny tube
       cl=:cl, pos diffy yn
    end.
    NB. check cycles
    if. cl e. cycle do.
        n=: cycle i. cl
        limit=:x-n NB. remove first N iterations
        yn=:n{height NB. Height at initial moment of cycle
        dy=:({:height)-yn NB. height gained on a cycle
        clen=:mt-n NB. cycle lenght
        cyn=:<.limit%clen NB. times the cycle repeats
        r=:clen|limit NB. extra pieces
        dyr=:((n+r){height)-yn NB. height of extra pieces
        yn+(dy*cyn)+dyr return.
    end.
    cycle=: cycle, cl
    height=:height,maxy
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
        npos =: 2, 4+{:>./tube
        NB.show (tube,(tpos@.tn) npos)
    end.
    pos=:npos
    mn=:y {{(#x)|y}} >:mn 
    mt=:>:mt
end.
>./tube
)
   10 movcl mov
5 16
   height
0 _1 _1 _1 _1 0 0 0 0 3 3 3 3 3 5 5 5 5 5 5 5 6 6 6 6 8 8 8 8 9 9 9 9 12 12 12 12 12 14 14 14 14 14 14 16 16 16 16 16 16 16 16 16
   cycle
_1 _1 _1 _1 _1 _1 _1 _1 _1 _1 _1
 2  4  0  0  _  _  _  _  _  _  _
 3  3  0  1  _  _  _  _  _  _  _
 3  2  0  2  _  _  _  _  _  _  _
 3  1  0  3  _  _  _  _  _  _  _
 2  4  1  4  _  _  4  4  4  4  _
 1  3  1  5  _  _  3  3  3  3  _
 2  2  1  6  _  _  2  2  2  2  _
 1  1  1  7  _  _  1  1  1  1  _
 2  4  2  8  _  _  5  4  5  7  _
 3  3  2  9  _  _  4  3  4  6  _
 2  2  2 10  _  _  3  2  3  5  _
 1  1  2 11  _  _  2  1  2  4  _
 0  0  2 12  _  _  1  0  1  3  _
 2  4  3 13  6  6  4  6  7  9  _
 3  3  3 14  5  5  3  5  6  8  _
 2  2  3 15  4  4  2  4  5  7  _
 3  1  3 16  3  3  1  3  4  6  _
 4  0  3 17  2  2  0  2  3  5  _
 5 _1  3 18  1  1 _1  1  2  4  _
 4 _2  3 19  0  0 _2  0  1  3  _
 2  4  4 20  7  7  5  7  4 10  _
 1  3  4 21  6  6  4  6  3  9  _
 2  2  4 22  5  5  3  5  2  8  _
 3  1  4 23  4  4  2  4  1  7  _
 2  4  0 24  9  9  7  9  4  4  _
 1  3  0 25  8  8  6  8  3  3  _
 0  2  0 26  7  7  5  7  2  2  _
 0  1  0 27  6  6  4  6  1  1  _
 2  4  1 28 10  4  4  4  4  5  _
 1  3  1 29  9  3  3  3  3  4  _
 0  2  1 30  8  2  2  2  2  3  _
 0  1  1 31  7  1  1  1  1  2  _
 2  4  2 32 13  5  4  5  7  8  _
 3  3  2 33 12  4  3  4  6  7  _
 2  2  2 34 11  3  2  3  5  6  _
 3  1  2 35 10  2  1  2  4  5  _
 4  0  2 36  9  1  0  1  3  4  _
 2  4  3 37 15  7  6  6  6  4  _
 1  3  3 38 14  6  5  5  5  3  _
 2  2  3 39 13  5  4  4  4  2  _
 3  1  3  0 12  4  3  3  3  1  _
 4  0  3  1 11  3  2  2  2  0  _
 4 _1  3  2 10  2  1  1  1 _1  _
 2  4  4  3 17  9  8  8  4  6  _
 1  3  4  4 16  8  7  7  3  5  _
 0  2  4  5 15  7  6  6  2  4  _
 1  1  4  6 14  6  5  5  1  3  _
 0  0  4  7 13  5  4  4  0  2  _
 1 _1  4  8 12  4  3  3 _1  1  _
 2 _2  4  9 11  3  2  2 _2  0  _
 1 _3  4 10 10  2  1  1 _3 _1  _
 0 _4  4 11  9  1  0  0 _4 _2  _
   1000000000000 movcl mov
 256281407043
1514285714288
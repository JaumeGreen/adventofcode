   ~.'Sensoratx=,y=:closestbeaconisatx=,y='
Sensoratx=,y:clbi

   read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   filter=: 0". 'Sensoratx=,y:clbi'-.~]
   map=:>filter each read 'd15t1'
   map
 2 18 _2 15
 9 16 10 16
13  2 15  3
12 14 10 16
10 20 10 16
14 17 10 16
 8  7  2 10
 2  0  2 10
 0 11  2 10
20 14 25 17
17 20 21 22
16  7 15  3
14  3 15  3
20  1 15  3
   sensors=:0 1 {"1 map
   beacons=: 2 3{"1 map
   s=:0{sensors
   b=:0{beacons
   
   init=: 3 : 0
map=:>filter each read y
sensors=:0 1 {"1 map
beacons=: 2 3{"1 map
$map
)

   s-b
4 3
   b-s
_4 _3
   | 1
1
   | _1
1
   |b-s
4 3
   +/|b-s
7
   13 : '+/|x-y'
[: +/ [: | -
   
   d=:[:+/[:|-
   sensors d"1 beacons
7 1 3 4 4 5 9 10 3 8 6 5 1 7
   
   i.7*2
0 1 2 3 4 5 6 7 8 9 10 11 12 13
   i.1+7*2
0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
   _7+i.1+7*2
_7 _6 _5 _4 _3 _2 _1 0 1 2 3 4 5 6 7
   13 : '(i.1+y*2)-y'
] -~ [: (i.) 1 + 2 * ]
   
   ind=:]-~[:i.1+2*]
   ]p=:ind 1
_1 0 1
   ]pp=:,{p;p
┌─────┬────┬────┬────┬───┬───┬────┬───┬───┐
│_1 _1│_1 0│_1 1│0 _1│0 0│0 1│1 _1│1 0│1 1│
└─────┴────┴────┴────┴───┴───┴────┴───┴───┘
   ]dis=:0 0&d each pp
┌─┬─┬─┬─┬─┬─┬─┬─┬─┐
│2│1│2│1│0│1│2│1│2│
└─┴─┴─┴─┴─┴─┴─┴─┴─┘
   ]mask=:1>:each dis
┌─┬─┬─┬─┬─┬─┬─┬─┬─┐
│0│1│0│1│1│1│0│1│0│
└─┴─┴─┴─┴─┴─┴─┴─┴─┘
   (>mask)#dis
┌─┬─┬─┬─┬─┐
│1│1│0│1│1│
└─┴─┴─┴─┴─┘
   (>mask)#pp
┌────┬────┬───┬───┬───┐
│_1 0│0 _1│0 0│0 1│1 0│
└────┴────┴───┴───┴───┘
   13 : ',{y;y'
[: , [: {  ;~
   1>:each (0 0)&d each pp
┌─┬─┬─┬─┬─┬─┬─┬─┬─┐
│0│1│0│1│1│1│0│1│0│
└─┴─┴─┴─┴─┴─┴─┴─┴─┘

   getpos=: 4 : 0
NB. sensor getpos beacon
cx=:x
cy=:y
md=:x d y
pos=:([:,[:{ ;~) ind md
mask=:md>:each (0 0)&d each pos
(>mask)#x&+each pos
)
   #,sensors getpos"1 beacons
3094
   #~.,sensors getpos"1 beacons
817
   #(>~.,sensors getpos"1 beacons)-.sensors
803
   #((>~.,sensors getpos"1 beacons)-.sensors)-.beacons
797
   exam=:((>~.,sensors getpos"1 beacons)-.sensors)-.beacons
   {:+/(10 = }:)exam
26

   sol1=: 3 : 0
NB. y line
exam=:((>~.,sensors getpos"1 beacons)-.sensors)-.beacons
{:+/(y = }:)exam
)
   init 'd15t1'
14 4
   sol1 10
26
   init 'day15'
40 4
   sol1 2000000
|out of memory: getpos
|   pos=:    ([:,([:{;~))ind md
   md
1595476
   
   NB. bad approach, try different

   occ=: 4 : 0
NB. line occ sensor,beacon
cx=:x
cy=:y
sensor=:0 1{,y
beacon=:2 3{,y
md=:sensor d beacon
ycord=:{:sensor
if. (x<ycord-md) +. x>ycord+md do. <'a' return. end. NB. line out of range
off=:ycord d x
range=:md-off
xcord=:{.sensor
<(xcord-range), xcord+range
)

   union=: ~.@,
   13 : '(>x)union>y'
([: > [) union [: > ]
   unboxedunion=:([: > [) union [: > ]
   ]F.:unboxedunion v
12 2 3 4 5 6 7 8 9 10 11 13 14 _2 _1 0 1 16 17 18 19 20 21 22 23 24 15

   calc=: 3 : 0
mask=:-.each 'a'-:each y
values=:(>mask)#y
ranges=:calcv each values
]F.:unboxedunion ranges
)

    1 (10&occ)\map
┌─┬─┬─┬─────┬─┬─┬────┬───┬────┬─────┬─┬─────┬─┬─┐
│a│a│a│12 12│a│a│2 14│2 2│_2 2│16 24│a│14 18│a│a│
└─┴─┴─┴─────┴─┴─┴────┴───┴────┴─────┴─┴─────┴─┴─┘
   calc=: 3 : 0
mask=:-.each 'a'-:each y
(>mask)#y
)
   calc r
┌─────┬────┬───┬────┬─────┬─────┐
│12 12│2 14│2 2│_2 2│16 24│14 18│
└─────┴────┴───┴────┴─────┴─────┘

   2 d 14
12
   2+i.12
2 3 4 5 6 7 8 9 10 11 12 13
   _2 d 2
4
   _2+i.4
_2 _1 0 1
   
   calcv=: 3 : 0
cy=:y
dis=:1+({.y) d {:y
({.y)+i.dis
)

NB. remove beacons/sensors from zone
squaters=:{{{."1(>x={:"1 y)#y}}
   okup=: 4 : 0
sensors= 0 1 {"1 y
ss=:x squaters sensors
beacons= 2 3 {"1 y
ss=:ss union x squaters beacons
)

   sol1=: 4 : 0
spotsensor=: 1 (x&occ)\y
spotstotal=: calc spotsensor
spotsfree=: spotstotal -. x okup y
#spotsfree
)
4000000
    sol2=: 4 : 0
fullrange=:i.x
for_ijk. fullrange do.
    spotsensor=: 1 (ijk&occ)\y
    spotstotal=: calc spotsensor
    empty=:fullrange-.spotstotal
    if. ''-:empty do.
       continue.
    else.
       ijk, empty return.
    end.
end.
'none found'
)

   dumb=: 3 : 0
if. ''-:(i.20)-.y do.
'a'
else.
'b'
end.
)
   dumb i.20
a
   dumb spotsfree
b

   scan=: 4 : 0
NB. range occ sensor,beacon
cx=:x
cy=:y
fullrange=:i.x
sensors= 0 1 {"1 y
beacons= 2 3 {"1 y
distances=:sensors d"1 beacons
for_i. fullrange do.
   for_j. fullrange do.
      cur=: i,j
      dc=:1 cur&d"1\sensors
      here=:*./dc>distances
      if. here do.
         i,j,j+i*400000 return.
      end.
   end.
end.
)

   sol2=: 4 : 0
NB. range occ sensor,beacon
cx=:x
cy=:y
sensors= 0 1 {"1 y
beacons= 2 3 {"1 y
distances=:1+sensors d"1 beacons
param=:sensors,.((#distances), 1)$distances
digs=:x diag"1 param
points=:]F.:unboxedunion digs
for_i. i.#points do.
   cur=: i{points
   dc=:1 cur&d"1\sensors
   here=:*./dc>:distances
   if. here do.
      ccx=:{.cur
      ccy=:{:cur
      ccx,ccy,ccy+ccx*400000 return.
   end.
end.
'none'
)


du=: 3 : 0
dg=:y
for_i. i.#y do.
   here=:testdiag dg
   if. here do.
      here return.
   end. 
   dg=:}.dg
end.
'none'
)
   sol2=: 4 : 0
NB. range occ sensor,beacon
cx=:x
cy=:y
sensors= 0 1 {"1 y
beacons= 2 3 {"1 y
distances=:1+sensors d"1 beacons
param=:sensors,.((#distances), 1)$distances
digs=:x diag"1 param
dg=:digs
for_i. i.#digs do.
   here=:testdiag dg
   if. here do.
      ccx=:{.here
      ccy=:{:here
      ccx,ccy,ccy+ccx*400000 return.
   end.
   dg=:}.dg
end.
'none'
)
testpoint=: 3 : 0
   dc=:1 y&d"1\sensors
   *./dc>:distances
)
testdiag=: 3 : 0
excl=: }.y
rest=:]F.:unboxedunion excl
interest=:rest intersect > {.y
for_i. i.#interest do.
    val=:testpoint i{interest
    if.val do.
        i{interest return.
    end.
end.
0
)

   diag=: 4 : 0
   cx=:x
   cy=:y
range=:i.>:{:y NB. [2]->3->0 1 2
egnar=:i.->:{:y NB. [2]->-3->2 1 0
px=:0{y
py=:1{y
NB. (x-d,y)->(x,y+d)
NB. (x,y+d)->(x+d,y)
NB. (x+d,y)->(x,y-d)
NB. (x,y-d)->(x-d,y)
d1=:(px-egnar),.(py+range)
d2=:(px+range),.(py+egnar)
d3=:(px+egnar),.(py-range)
d4=:(px-range),.(py-egnar)
<~.x remove d1,d2,d3,d4
)

   13 : '(x>:{."1 y)*.x>:{:"1 y'
([ >: [: {."1 ]) *. [ >: [: {:"1 ]
   13 : '(0<:{."1 y)*.0<:{:"1 y'
(0 <: {."1) (*.) 0 <: {:"1

   remx=:([ >: [: {."1 ]) *. [ >: [: {:"1 ]
   rem0=:(0 <: {."1) (*.) 0 <: {:"1
   
   remove=: 4 : 0
mask=:rem0 y
mask=:mask*.x remx y
(>mask)#y
)
   intersect=: e. # [
   unboxedintersect=:([: > [) intersect [: > ]
 
   param=:cy,.(14 1)$cx
   build=: 3 : 0

 
   sol2=: 4 : 0
digs=:x diag"1 y
point=:]F.:unboxedintersect digs
({:point)+400000*{.point
)

   load '/home/deck/projects/adventofcode/2022/day15/solution.ijs'
   init 'd15t1'
14 4
   20 sol2 map
14 11 5600011
   init 'day15'
40 4
   4000000 sol2 map
3270298 2638237 1308121838237 NB. too low!!!!
3270298 2638237
1308121838237
13081194638237
(deck@steamdeck projects)$ python d15.py 
Part 1: y = 2000000 has 5073496 occupied spaces.
Part 2: The distress beacon's tuning frequency is 3270298 * 4000000 + 2638237 = 13081194638237
not 400K but 4M

   sol2=: 4 : 0
NB. range occ sensor,beacon
cx=:x
cy=:y
sensors= 0 1 {"1 y
beacons= 2 3 {"1 y
distances=:1+sensors d"1 beacons
param=:sensors,.((#distances), 1)$distances
digs=:x diag"1 param
dg=:digs
for_i. i.#digs do.
   here=:testdiag dg
   if. here do.
      ccx=:{.here
      ccy=:{:here
      smoutput 'i->,';ccx;ccy;ccy+ccx*400000
   end.
   dg=:}.dg
end.
'none'
)

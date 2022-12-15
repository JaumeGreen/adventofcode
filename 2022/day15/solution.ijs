NB. Sample usage:
NB. 
NB.    init 'day15'
NB. 40 4
NB.    2000000 sol1 map
NB. 5073496
NB.    4000000 sol2 map
NB. 3270298 2638237 13081194638237
   
   read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   filter=: 0". 'Sensoratx=,y:clbi'-.~]
   init=: 3 : 0
map=:>filter each read y
sensors=:0 1 {"1 map
beacons=: 2 3{"1 map
$map
)
   d=:[:+/[:|-
   
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
   calcv=: 3 : 0
cy=:y
dis=:1+({.y) d {:y
({.y)+i.dis
)
   unboxedunion=:([: > [) union [: > ]
   calc=: 3 : 0
mask=:-.each 'a'-:each y
values=:(>mask)#y
ranges=:calcv each values
]F.:unboxedunion ranges
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
NB. part 2

   remx=:([ >: [: {."1 ]) *. [ >: [: {:"1 ]
   rem0=:(0 <: {."1) (*.) 0 <: {:"1
   remove=: 4 : 0
mask=:rem0 y
mask=:mask*.x remx y
(>mask)#y
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
      ccx,ccy,ccy+ccx*4000000 return.
   end.
end.
'none'
)
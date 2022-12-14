NB. Sample usage:
NB. 
NB.    items=:init 'day13'
NB.    sol1 items
NB. 5843
NB.    sol2 items
NB. 26289


   read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   prep=:{{". y rplc '[]';'(<'''')';'[';'(<';']';')';',';';'}} NB. '' to escape '
   get=:{{prep >y{x}}
   split=:{{({.y)u{:y}}
   init=:{{1 prep \>read y}}
   blank=: 4 : 0
tx=:}.x
ty=:}.y
if. (''-:tx) *. ''-:ty do.
   2 return.
end.
if. (''-:tx) *. -. ''-:ty do.
   1 return.
end.
if. (''-:ty) *. -. ''-:tx do.
   0 return.
end.
tx comp ty
)
 comp=: 4 : 0
cx=:x
cy=:y
if. (''-:cx) *. -. ''-:cy do.
   1 return. NB. left shorter
end.
if. (''-:cy) *. -. ''-:cx do.
   0 return. NB. right shorter
end.
if. (''-:cx) *. ''-:cy do.
   2 return. NB. keep comparing
end.
if. (32=3!:0 x) *. 32=3!:0 y do.
   res=:(>{.x) comp (>{.y)
if. res=2 do. NB. compare rest of the elements
   res=:x blank y
end.
   res return.
end.
if. (32=3!:0 x) *. -.32=3!:0 y do.
   res=:(>{.x) comp (y)
if. res=2 do. NB. compare rest of the elements
   res=:(}.x) comp }. y
end.
   res return.
end.
if. (-.32=3!:0 x) *. 32=3!:0 y do.
   res=:x comp (>{.y)
if. res=2 do. NB. compare rest of the elements
   res=:x blank y
end.
   res return.
end.
NB. both should be type 4 integer
if. ({.x)<{.y do.
   1 return.
elseif. ({.x)>{.y do.
   0 return.
end.
x blank y
)
   work=:{{(2,:2)(comp split);._3 y}}
   sol1=:{{+/(1+i.(#y)%2)*work y}}

NB. part2

   greater=:{{0=>x comp each y}}

   sol2=: 3 : 0
d1=:prep '[[2]]'
d2=:prep'[[6]]'
pos=:{{+/x greater y}}
p1=:1+ d1 pos y
p2=:2+ d2 pos y
p1*p2
)


read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
prep=:{{". y rplc '[]';'(<'''')';'[';'(<';']';')';',';';'}} NB. '' to escape '
get=:{{prep >y{x}}
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

split=:{{({.y)u{:y}}
init=:{{1 prep \>read y}}
work=:{{(2,:2)(comp split);._3 y}}
sol1=:{{+/(1+i.(#y)%2)*work y}}
read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
prep=:{{". y rplc '[]';'(<'''')';'[';'(<';']';')';',';';'}} NB. '' to escape '
get=:{{prep >y{x}}
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

split=:{{({.y)u{:y}}
init=:{{1 prep \>read y}}
work=:{{(2,:2)(comp split);._3 y}}
sol1=:{{+/(1+i.(#y)%2)*work y}}
   pp=:init 'd13t1'
   a=:0{pp
   b=:1{pp
   a comp b
 comp2=: 4 : 0
cx=:x
cy=:y
lx=:''
ly=:''
whilst. (-.''-:cx) +. (-.''-:cy) +.(-.''-:lx) +. -.''-:ly do.
   if. (''-:cx) *. -. ''-:cy do.
      1 return. NB. left shorter
   end.
   if. (''-:cy) *. -. ''-:cx do.
      0 return. NB. right shorter
   end.
   if. (32=3!:0 cx) *. 32=3!:0 cy do.
      lx=:}.cx, lx
      ly=:}.cy, ly
      cx=:>{.cx
      cy=:>{.cy
      continue.
   end.
   if. (32=3!:0 cx) *. -.32=3!:0 cy do.
      lx=:}.cx, lx
      cx=:>{.cx
      continue.
   end.
   if. (-.32=3!:0 cx) *. 32=3!:0 cy do.
      ly=:}.cy, ly
      cy=:>{.cy
      continue.
   end.
   NB. both should be type 4 integer
   tx=:cx
   ty=:cy
   whilst. (''-:tx) *. ''-:ty do.
      if. ({.tx)<{.ty do.
         1 return.
      elseif. ({.tx)>{.ty do.
         0 return.
      end.
      tx=:}.tx
      ty=:}.ty
      if. (''-:tx) *. ''-:ty do.
      break.
      end.
      if. (''-:tx) *. -. ''-:ty do.
      1 return.
      end.
      if. (''-:ty) *. -. ''-:tx do.
      0 return.
      end.
   end.
   cx=:{.lx
   cy=:{.ly
   lx=:}.lx
   ly=:}.ly
end.
1 NB. equal
)
work2=:{{(2,:2)(comp2 split);._3 y}}
sol12=:{{+/(1+i.(#y)%2)*work2 y}}
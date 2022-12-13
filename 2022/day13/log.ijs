read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
pairs=:read 'd13t1'
   pairs
┌───────────┬───────────┬─────────────┬───────┬───┬─────────┬───────────┬─────────────┬─────────┬───────┬──┬───┬──────┬────┬───────────────────────────┬───────────────────────────┐
│[1,1,3,1,1]│[1,1,5,1,1]│[[1],[2,3,4]]│[[1],4]│[9]│[[8,7,6]]│[[4,4],4,4]│[[4,4],4,4,4]│[7,7,7,7]│[7,7,7]│[]│[3]│[[[]]]│[[]]│[1,[2,[3,[4,[5,6,7]]]],8,9]│[1,[2,[3,[4,[5,6,0]]]],8,9]│
└───────────┴───────────┴─────────────┴───────┴───┴─────────┴───────────┴─────────────┴─────────┴───────┴──┴───┴──────┴────┴───────────────────────────┴───────────────────────────┘
   (2,:2)];._3 pairs
┌───────────────────────────┬───────────────────────────┐
│[1,1,3,1,1]                │[1,1,5,1,1]                │
├───────────────────────────┼───────────────────────────┤
│[[1],[2,3,4]]              │[[1],4]                    │
├───────────────────────────┼───────────────────────────┤
│[9]                        │[[8,7,6]]                  │
├───────────────────────────┼───────────────────────────┤
│[[4,4],4,4]                │[[4,4],4,4,4]              │
├───────────────────────────┼───────────────────────────┤
│[7,7,7,7]                  │[7,7,7]                    │
├───────────────────────────┼───────────────────────────┤
│[]                         │[3]                        │
├───────────────────────────┼───────────────────────────┤
│[[[]]]                     │[[]]                       │
├───────────────────────────┼───────────────────────────┤
│[1,[2,[3,[4,[5,6,7]]]],8,9]│[1,[2,[3,[4,[5,6,0]]]],8,9]│
└───────────────────────────┴───────────────────────────┘
      ". c rplc '[]';'(<a:)';'[';'(<';']';')'
┌─────────┐
│1 1 3 1 1│
└─────────┘
   prep=:{{". y rplc '[]';'(<a:)';'[';'(<';']';')'}}
   ]a=:prep >0{pairs
┌─────────┐
│1 1 3 1 1│
└─────────┘
   ]b=:prep >1{pairs
┌─────────┐
│1 1 5 1 1│
└─────────┘
   3!:0 a
32  NB. boxed
   3!:0 >a
4 NB.integer
   3!:0 >a:
1 NB. boolean?? is empty
   
prep=:{{". y rplc '[]';'(<'''')';'[';'(<';']';')';',';';'}} NB. '' to escape '
get=:{{prep >y{x}}
ww=:{{(3!:0 x);3!:0 y}}

empty=:{{ a:-:y}}
boxed=:{{ 32=3!:0 y}}
first=:{{>{.y}}

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
sho=:4 : 0
smoutput 'X->';x
smoutput 'Y->';y
smoutput '******************'
)

init=:{{1 prep \>read y}}
work=:{{(2,:2)(comp split);._3 y}}
(2,:2)(comp split);._3 pairs

sol1=:{{+/(1+i.(#y)%2)*work y}}
   d13p=:init 'day13'
   sol1 d13p
5843
'[[2]]'
'[[6]]'
init2=:{{1 prep \'[[2]]','[[6]]',>read y}}
grade=:  > @ ({:"1"_) @ comp @ (;"_1 i.@#)

sel=: 1 : 'x # ['

quicksort=: 3 : 0
 if. 1 >: #y do. y
 else.
  (quicksort y <sel e),(y =sel e),quicksort y >sel e=.y{~?#y
 end.
)
quicksort=: (($:@(<#[) , (=#[) , $:@(>#[)) ({~ ?@#)) ^: (1<#)
quicksort=: (($:@(comp#[) , (=#[) , $:@(ncomp#[)) ({~ ?@#)) ^: (1<#)
ncomp=:{{-.x comp y}}
   
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
2 NB. equal
)
work2=:{{(2,:2)(comp2 split);._3 y}}
sol12=:{{+/(1+i.(#y)%2)*work2 y}}

sort2=: (($:@(comp2#[) , (=#[) , $:@(-.comp2#[)) ({~ ?@#)) ^: (1<#)
ncomp2=:{{-.x comp2 y}}

sel=: 1 : 'x # ['

quicksort=: 3 : 0
 if. 1 >: #y do. y
 else.
  (quicksort y <sel e),(y =sel e),quicksort y >sel e=.y{~?#y
 end.
)

   quicksort=: 3 : 0
 if. 1 >: #y do. y
 else. 
  (quicksort y <sel e),(y =sel e),quicksort y >sel e=.y{~?#y
 end.
)
eq=:{{2= x comp2 y}}
less=:{{x comp2 y}}
great=:{{y comp2 y}}
 quickp=: 3 : 0
 if. 1 >: #y do. y
 else. 
  (quickp y lesser sel e),(y equal sel e),quickp y greater sel e=.y{~?#y
 end.
)

   lesser=:{{1=>x comp2 each y}}
   equal=:{{2=>x comp2 each y}}
   greater=:{{0=>x comp2 each y}}
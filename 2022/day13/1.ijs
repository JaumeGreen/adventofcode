read=:{{cutopen 1!:1 <'/storage/emulated/0/Android/data/com.jsoftware.j.android/files/j902-user/temp/',y,'.ijs'}}
prep=:{{". y rplc '[]';'(<'''')';'[';'(<';']';')';',';';'}} NB. '' to escape '
get=:{{prep >y{x}}
split=:{{({.y)u{:y}}
init=:{{1 prep \>read y}}
 comp=: 4 : 0
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
   tpx=:3!:0 cx
   tpy=:3!:0 cy
   if. (32=tpx) *. 32=tpy do.
      lx=:}.cx, lx
      ly=:}.cy, ly
      cx=:>{.cx
      cy=:>{.cy
      continue.
   end.
   if. (32=tpx) *. -.32=tpy do.
      lx=:}.cx, lx
      cx=:>{.cx
      continue.
   end.
   if. (-.32=tpx) *. 32=tpy do.
      ly=:}.cy, ly
      cy=:>{.cy
      continue.
   end.
   if. (2=tpx) *. 2=tpy do.
      cx=:{.lx
      cy=:{.ly
      lx=:}.lx
      ly=:}.ly
      continue.
   end.
   if. (2=tpx) *. -.2=tpy do.
      1 return.
   end.
   if. (-.2=tpx) *. 2=tpy do.
      0 return.
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
      if. 1<#tx do.
         tx=:}.tx
      else.
         tx=:''
      end.
      if. 1<#ty do.
         ty=:}.ty
      else.
         ty=:''
      end.
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
work=:{{(2,:2)(comp split);._3 y}}
sol1=:{{+/(1+i.(#y)%2)*1=work y}}

NB. -----

lesser=:{{1=>x comp each y}}
equal=:{{2=>x comp each y}}
greater=:{{0=>x comp each y}}
sel=: 1 : 'u # ['

quickp=: 3 : 0
 if. 1 >: #y do. y
 else. 
  (quickp y lesser sel e),(y equal sel e),quickp y greater sel e=.y{~?#y
 end.
)

d1=:'[[2]]'
d2=:'[[6]]'
a=:prep d1
b=:prep d2

firsth=:{{x lesser (i.150){y}}
secondh=:{{x lesser (150+i.150){y}}
calc=:{{(x firsth y) + x secondh y }}
+/   a lesser its
174
   
+/   b lesser its
95
   300-174
126
   300-95
205
   127*207
26289

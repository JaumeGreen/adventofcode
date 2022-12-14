NB. Sample usage
NB. 
NB.    ]map=:parsemap read 'd08t1'
NB. 3 0 3 7 3
NB. 2 5 5 1 2
NB. 6 5 3 3 2
NB. 3 3 5 4 9
NB. 3 5 3 9 0
NB.    sol1 map
NB. 21
NB.    solve2 map
NB. 8

   read=:{{1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'}}

   rot0=:] :. ]
   rot1=:|: ]. |:
   rot2=:|."1 :. (|."1)
   rot3=:(|."1@|:) :. ([:|:|."1)

   maxl=:>./\
   pmax=:_1&,@}:@maxl
   goo=:(pmax < ])"1

   left=:goo&.:rot0
   top=:goo&.:rot1
   right=:goo&.:rot2
   bottom=:goo&.:rot3

   parsemap=:0&"."0;._2
   sol1=:[: +/ [: +/ left +. right +. top +. bottom


   ff=: 4 : 0
res=:0
cur=:x{y
for_ijk. y do.
   if. x=ijk_index do.
      break.
   end.
   if. cur>ijk do.
      res=:>:res
   end.
   if. cur<:ijk do.
      res=:1
   end.
end.
res
)
   fm=: 3 : 0
tim=:#y
rr=:''
for_ijk. i.tim do.
   rr=:rr,ijk ff y
end.
)
   ffm=: 3 : 0
tim2=:#y
rr2=:'',:0*i.tim2
for_ijk.y do.
   rr2=:rr2,fm ijk
end.
2}.rr2
)
   sol2=:{{>./>./(ffm&.:rot0 * ffm&.:rot1 * ffm&.:rot2 *ffm&.:rot3) y}}
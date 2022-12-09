   ]map=:5 5 $ 3 0 3 7 3 2 5 5 1 2 6 5 3 3 2 3 3 5 4 9 3 5 3 9 0
3 0 3 7 3
2 5 5 1 2
6 5 3 3 2
3 3 5 4 9
3 5 3 9 0
   ]lin=:{.map
3 0 3 7 3
   maxl=:>./\
   maxl lin
3 3 3 7 7
   pmax=:_1&,@}:@maxl
   pmax "1 map
0 3 3 3 7
0 2 5 5 5
0 6 6 6 6
0 3 3 5 5
0 3 5 5 9
   good=:pmax < ]
   good "1 map
1 0 0 1 0
1 1 0 0 0
1 0 0 0 0
1 0 1 0 1
1 1 0 1 0
   |: map
3 2 6 3 3
0 5 5 3 5
3 5 3 5 3
7 1 3 4 9
3 2 2 9 0
   good "1 map
1 0 0 1 0
1 1 0 0 0
1 0 0 0 0
1 0 1 0 1
1 1 0 1 0
   good "1 |: map
1 0 1 0 0
0 1 0 0 0
1 1 0 0 0
1 0 0 0 1
1 0 0 1 0
   rot0=:] :. ]
   rot1=:|: ]. |:
   rot2=:|."1 :. (|."1)
   rot3=:(|."1@|:) :. ([:|:|."1)

   goo=:(pmax < ])"1

   left=:goo&.:rot0
   top=:goo&.:rot1
   right=:goo&.:rot2
   bottom=:goo&.:rot3
   +/+/(left+. right+. top+. bottom) map
21
   dat=:1!:1<'/home/deck/projects/adventofcode/2022/d08t1.input'
   dat
30373
25512
65332
33549
35390

   parsemap=:0&"."0;._2
   13 : 0
   0&"."0;._2 y
)
0&"."0;._2
   parsemap dat
3 0 3 7 3
2 5 5 1 2
6 5 3 3 2
3 3 5 4 9
3 5 3 9 0
   solve parsemap dat
21
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
   fm tm
0 1 2 1 1

   >./(ffm&.:rot0 * ffm&.:rot1 * ffm&.:rot2 *ffm&.:rot3) tm
0 6 8 3 0
   >./>./(ffm&.:rot0 * ffm&.:rot1 * ffm&.:rot2 *ffm&.:rot3) tm
8
      dat=:1!:1<'/home/deck/projects/adventofcode/2022/day08.input'
   map=:parsemap dat
   #map
99
   >./>./(ffm&.:rot0 * ffm&.:rot1 * ffm&.:rot2 *ffm&.:rot3) map
537600
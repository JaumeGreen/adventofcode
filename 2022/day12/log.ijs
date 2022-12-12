NB. two crashes in where I lost everything but my knowledge
      read=: 3 : 0
cutopen 1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'
)
   cutopen 1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'
|value error
|   cutopen 1!:1<'/home/deck/projects/adventofcode/2022/',    y,'.input'
   
         read=: 3 : 0
cutopen 1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'
)
   initmap=:3 : 0
raw =: read y
nlin=: #raw
ncol=: #0{raw
map=: ;raw
)
   read 'd12t1'
┌────────┬────────┬────────┬────────┬────────┐
│Sabqponm│abcryxxl│accszExk│acctuvwj│abdefghi│
└────────┴────────┴────────┴────────┴────────┘
   map
|value error: map
   ;read 'd12t1'
SabqponmabcryxxlaccszExkacctuvwjabdefghi
   initmap 'd12t1'
SabqponmabcryxxlaccszExkacctuvwjabdefghi
   top=: 3 : 0
if. 'S'=y do.
0
elseif. 'E'=y do.
26
else.
-&97 a.i.y
end.
)
   top 'a'
0
   top 'azypSE'
0 25 24 15 _14 _28
   1 top\ 'azypSE'
 0
25
24
15
 0
26
   c=:0
   c=:20
   (-&8)^:()
|syntax error
|   (-&8)^:()
   (-&8 ]) 20
_140
   -&8 20
-&8 20
   8&-~20
20
   20-8
12
   (]-8)20
|syntax error
|       (]-8)20
   (]-&8)20
12
   (]-&8)^:(0>ncol|]) 20
20
   ncol
1
   raw
┌────────┬────────┬────────┬────────┬────────┐
│Sabqponm│abcryxxl│accszExk│acctuvwj│abdefghi│
└────────┴────────┴────────┴────────┴────────┘
   #raw
5
   0{raw
┌────────┐
│Sabqponm│
└────────┘
   #0{raw
1
   #>0{raw
8
      initmap=:3 : 0
raw =: read y
nlin=: #raw
ncol=: #>0{raw
map=: ;raw
)
   initmap=:3 : 0
raw =: read y
nlin=: #raw
ncol=: #>0{raw
map=: ;raw
)
   initmap 'd12t1'
SabqponmabcryxxlaccszExkacctuvwjabdefghi
   ncol
8
   (]-&8)^:(0>ncol|]) 20
20
   0>ncol|20
0
   ncol|20
4
   (]-&8)^:(0<ncol|]) 20
12
   (]-&8)^:(0<ncol|]) (]+&ncol)^:(7>ncol|]) 20
20
   ((]-&8)^:(0<ncol|]) (]+&ncol)^:(7>ncol|])) 20
20
   ((]-&8)^:(0<ncol|]), (]+&ncol)^:(7>ncol|])) 20
12 28
   ((]-&1)^:(0<ncol|]), (]+&1)^:((ncol-1)>ncol|]), (]-&8)^:(0<<.]%ncol), (]+&ncol)^:((nlin-1)><.]%ncol)) 20
19 21 20 28
   ((]-&1)^:(0<ncol|]), (]+&1)^:((ncol-1)>ncol|]), (]-&8)^:(0<<.]%ncol), (]+&ncol)^:((nlin-1)><.]%ncol)) 0
0 1 0 8
   surr=: ~. ((]-&1)^:(0<ncol|]), (]+&1)^:((ncol-1)>ncol|]), (]-&8)^:(0<<.]%ncol), (]+&ncol)^:((nlin-1)><.]%ncol))
   surr 0
|domain error: surr
|       surr 0
   surr=: ((]-&1)^:(0<ncol|]), (]+&1)^:((ncol-1)>ncol|]), (]-&8)^:(0<<.]%ncol), (]+&ncol)^:((nlin-1)><.]%ncol))
   surr 0
0 1 0 8
   surr=: ~.@((]-&1)^:(0<ncol|]), (]+&1)^:((ncol-1)>ncol|]), (]-&8)^:(0<<.]%ncol), (]+&ncol)^:((nlin-1)><.]%ncol))
   surr 0
0 1 8
   surr=: (~.@((]-&1)^:(0<ncol|]), (]+&1)^:((ncol-1)>ncol|]), (]-&8)^:(0<<.]%ncol), (]+&ncol)^:((nlin-1)><.]%ncol)))-]
   surr 0
0 1 8
   surr=: ((]-&1)^:(0<ncol|]), (]+&1)^:((ncol-1)>ncol|]), (]-&8)^:(0<<.]%ncol), (]+&ncol)^:((nlin-1)><.]%ncol))
   good=: {{ (1+top x{map) >: top y{map}}
   surr 19
18 20 19 27
   19 good surr 19
1 0 1 1
   map
SabqponmabcryxxlaccszExkacctuvwjabdefghi
   raw
┌────────┬────────┬────────┬────────┬────────┐
│Sabqponm│abcryxxl│accszExk│acctuvwj│abdefghi│
└────────┴────────┴────────┴────────┴────────┘
   good=: {{y* (1+top x{map) >: top y{map}}
   19 good surr 19
18 0 19 27
   good=: {{y*. (1+top x{map) >: top y{map}}
   19 good surr 19
18 0 19 27
   good=: {{ (1+top x{map) >: top y{map}}
   next=: 4 : 0
n1=:x surr y
n2=: x good y
)
   next=: 4 : 0
n1=:surr y
n2=: x good y
)
   next=: 4 : 0
n1=:surr y
n2=: x good y
if. n2 do.
n1
end.
)
   19 next 19
18 20 19 27
   19 good 19
1
   19 good surr 19
1 0 1 1
   surr 19
18 20 19 27
   1 i. 19 good surr 19
0 1 0 0
   1 I. 19 good surr 19
0 0 0 0
   1 E. 19 good surr 19
1 0 1 1
   1 I.E. 19 good surr 19
|domain error
|   1 I.    E.19 good surr 19
   1 I.@:E. 19 good surr 19
0 2 3
   next=: 4 : 0
n1=:surr y
n2=: x good y
in=: 1 I.@:E. n2
in{n1
)
   19 next 19
18
   n1
18 20 19 27
   n2
1
   next=: 3 : 0
n1=:surr y
n2=: y good n1
in=: 1 I.@:E. n2
in{n1
)
   next 19
18 19 27
   next 0
0
   n1
0 1 0 8
   n2
1
   0 good n1
1
   good=: {{1 (1+top x{map) >:\ top y{map}}
   0 good n1
|syntax error: good
|       1(1+top x{map)>:\top y{map
   good=: {{1 (1+top x{map) >:\. top y{map}}
   0 good n1
|syntax error: good
|       1(1+top x{map)>:\.top y{map
   good=: {{1 (1+top x{map)&>:\. top y{map}}
   0 good n1

   good=: {{(1+top x{map) >: top y{map}}
   0 good n1
1
   0 good ~.n1
1
   ~.n1
0 1 8
   p=:~.n1
   0 good p
1
   (1+top 0{map) >: top 0{map
1
   (1+top 0{map) >: top 0 1 8{map
1
   (1+top 0{map) >: top (0 1 8{map)
1
   0 1 8{map
Saa
   top 0 1 8 {map
0
   good=: {{(1+top x{map) >: 1 top\ y{map}}
   0 good p
1
1
1
   next 0
|rank error: next
|   in=:1     I.@:E.n2
   good=: {{(1+top x{map) >: |:1 top\ y{map}}
   next 0
|rank error: next
|   in=:1     I.@:E.n2
   0 good p
1 1 1
   n1
0 1 0 8
   n2
1 1 1 1
   1     I.@:E.n2
|rank error
|   1     I.@:E.n2
   good=: {{(1+top x{map) >: 1 top\ y{map}}
   next 0
|rank error: next
|   in=:1     I.@:E.n2
   n2
1
1
1
1
   1     I.@:E.n2
|rank error
|   1     I.@:E.n2
   1     I.@:E.|:n2
|rank error
|   1     I.@:E.|:n2
   #n2
4
   $n2
4 1
   $n1
4
   $|:n2
1 4
   good=: {{(1+top x{map) >: top y{map}}
   0 good each n1
┌─┬─┬─┬─┐
│1│1│1│1│
└─┴─┴─┴─┘
     next=: 3 : 0
n1=:surr y
n2=: y good each n1
in=: 1 I.@:E. >n2
in{n1
   )
    next=: 3 : 0
n1=:surr y
n2=: y good each n1
in=: 1 I.@:E. >n2
~.in{n1
)
   next 0
0 1 0 8
   next 19
18 19 27
   
      next=: 3 : 0
n1=: surr y
n2=: y good each n1
in=: 1 I.@:E. >n2
~.in{n1
)
      navigate=: 3 : 0
cur=:'S' i. y
vis=:cur
it=:0
whilst. (0<#cur) +. ~.isend cur do.
ne =: next cur
ne=: ne-vis
it=:it+1
cur=:~.ne
vis=:vis,cur
end.
)
   'E' e. 19 20 30{map
0
   'E' e. 19 21 30{map
1
   isend=:{{'E' e. cur{map}}
   

   navigate=: 3 : 0
cur=:y i. 'S'
vis=:cur
it=:0
whilst. (0<#cur) +. ~.isend cur do.
ne =: ;next each cur
ne=: ne-.vis
it=:it+1
smoutput it;':';cur;'->';ne;' ... ';vis
cur=:~.ne
vis=:vis,cur
if. 5=it do.
break.
end.
end.
)
surr=:{{ ((y-&1)^:(0<ncol|y), (y+&1)^:((ncol-1)>ncol|y), (y-&ncol)^:(0<<.y%ncol), (y+&ncol)^:((nlin-1)><.y%ncol))}}
surr=: 3 : 0
res=:''
if. 0<ncol|y do.
res=:res,y-1
end.
if. (ncol-1)>ncol|y do.
res=:res,y+1
end.
if. 0<<.y%ncol do.
res=:res,y-ncol
end.
if. (nlin-1)>y%ncol do.
res=:res,y+ncol
end.
res
)
   navigate=: 3 : 0
cur=:y i. 'S'
vis=:cur
it=:0
whilst. (0<#cur) *. -.isend cur do.
ne =: ;next each cur
ne=: ne-.vis
it=:it+1
NB. smoutput it;' cur ';cur;' m ';cur{map;' e ';(ne{map);' e '; ~.isend cur
NB. smoutput it;':';cur;'->';ne;' ... ';vis
NB. smoutput (":it),'--------------'
NB. smoutput  41 61$'.' vis}map
cur=:~.ne
vis=:vis,cur
end.
smoutput it;' cur ';cur;' m ';(cur{map);' e ';(ne{map);' e '; ~.isend cur
it-1
)

338 too high
337 too high
isend=:{{'E' e. y{map}}

isend2=:{{'a' e. y{map}}
navigate2=: 3 : 0
cur=:y i. 'E'
vis=:cur
it=:0
whilst. (0<#cur) *. -.isend2 cur do.
ne =: ;next2 each cur
ne=: ne-.vis
it=:it+1
NB. smoutput it;' cur ';cur;' m ';cur{map;' e ';(ne{map);' e '; ~.isend cur
NB. smoutput it;':';cur;'->';ne;' ... ';vis
NB. smoutput (":it),'--------------'
NB. smoutput  41 61$'.' vis}map
cur=:~.ne
vis=:vis,cur
end.
smoutput it;' m ';(cur{map);' e ';(ne{map);' e '; ~.isend cur
it-1
)
   next2=: 3 : 0
n1=: surr y
n2=: n1 good y
in=: 1 I.@:E. >n2
~.in{n1
)
good2=: {{(1-top x{map) <: top y{map}}

navigate2=: 3 : 0
cur=:1243
vis=:cur
it=:0
whilst. (0<#cur) *. -.isend cur do.
ne =: ;next each cur
ne=: ne-.vis
it=:it+1
NB. smoutput it;' cur ';cur;' m ';cur{map;' e ';(ne{map);' e '; ~.isend cur
NB. smoutput it;':';cur;'->';ne;' ... ';vis
NB. smoutput (":it),'--------------'
NB. smoutput  41 61$'.' vis}map
cur=:~.ne
vis=:vis,cur
end.
smoutput it;' m ';(cur{map);' e ';(ne{map);' e '; ~.isend cur
it-1
)

navigate2=: 3 : 0
cur=:'a' I.@:E. map
vis=:cur
it=:0
whilst. (0<#cur) *. -.isend cur do.
ne =: ;next each cur
ne=: ne-.vis
it=:it+1
NB. smoutput it;' cur ';cur;' m ';cur{map;' e ';(ne{map);' e '; ~.isend cur
NB. smoutput it;':';cur;'->';ne;' ... ';vis
NB. smoutput (":it),'--------------'
NB. smoutput  41 61$'.' vis}map
cur=:~.ne
vis=:vis,cur
end.
smoutput it;' cur ';cur;' m ';(cur{map);' e ';(ne{map);' e '; ~.isend cur
it-1
)
NB. Sample usage:
NB. 
NB.    initmap 'day12'
NB. abccccaaaaaaacccaaaaaaaccccccccccccccccccccccccccccccccccaaaaabcccccaaaaaacccaaaaaaaaaaccccccccccccccccccccccccccccccaaaaaabccaaaaaaaaccaaaaaaaaaaaaaccccccccccccccccccccccccccccaaaaaaabccaaaaaaaaaaaaaaaaaaaaaaacccccccccaaaccccacccccccccccaaacaaabaccaaaaaaa...
NB.    navigate 'S'
NB. 330
NB.    navigate 'a' NB. Yes, much easier to start from all 'a' at the same time than to go down from 'E'
NB. 321

   read=: 3 : 0
cutopen 1!:1<'/home/deck/projects/adventofcode/2022/',y,'.input'
)
   initmap=:3 : 0
raw =: read y
nlin=: #raw
ncol=: #>0{raw
map=: ;raw
)
   top=: 3 : 0
if. 'S'=y do.
 0
elseif. 'E'=y do.
 26
else.
 -&97 a.i.y
end.
)
   good=: {{(1+top x{map) >: top y{map}}
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
   isend=:{{'E' e. y{map}}
   next=: 3 : 0
n1=: surr y
n2=: y good each n1
in=: 1 I.@:E. >n2
~.in{n1
)

   navigate=: 3 : 0
cur=:y I.@:E. map
vis=:cur
it=:0
whilst. (0<#cur) *. -.isend cur do.
   ne =: ;next each cur
   ne=: ne-.vis
   it=:it+1
   cur=:~.ne
   vis=:vis,cur
end.
it
)
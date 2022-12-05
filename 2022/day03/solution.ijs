data=. cutopen 1!:1<'/home/deck/projects/adventofcode/2022/day03.input'

convert=: 3 : 0
val=.(a.i.y)-38
((-&58)^:(58&<)"0) val
)
finddup=. 3 : 0
hl=.{.($y)%2
s1=.(i.hl){y
s2=.(hl+(i.hl)){y
cr=.{.([ -. -.)&s1 s2
convert cr
)
findbadge=. 3 : 0
ba1=.([ -. -.)&(>0{y) (>1{y)
{.([ -. -.)&ba1 (>2{y)
)

sol1=:+/ >finddup each cutopen data
sol2=:+/convert (3 ,:3) findbadge;._3 data

solutions=:(];._1 ' Part1 Part2'); (2 1$sol1,sol2)
('Day 3';<solutions) (1!:2) 2
NB.       load '/home/deck/projects/adventofcode/2022/day03/solution.ijs'
NB. ┌─────┬────────────┐
NB. │Day 3│┌─────┬────┐│
NB. │     ││Part1│7903││
NB. │     ││Part2│2548││
NB. │     │└─────┴────┘│
NB. └─────┴────────────┘
   convert=: 3 : 0
val=.(a.i.y)-38
((-&58)^:(58&<)"0) val
)
   finddup=: 3 : 0
hl=.{.($y)%2
s1=.(i.hl){y
s2=.(hl+(i.hl)){y
cr=.{.([ -. -.)&s1 s2
convert cr
)
data=: cutopen 1!:1<'/home/deck/projects/adventofcode/2022/day03.input'
testdata=: cutopen 1!:1<'/home/deck/projects/adventofcode/2022/d03t1.input'
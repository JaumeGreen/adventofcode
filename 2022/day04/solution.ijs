data=: 1!:1<'/home/deck/projects/adventofcode/2022/day04.input'

parseline=:0". rplc&('-';' ';',';' ')

in=:((0{]<:2{])*.(1{]>:3{]))+.((0{]>:2{])*.(1{]<:3{]))
in2=:((0{]<:3{])*.(1{]>:2{]))

sol1=:+/ >in @ parseline each cutopen data
sol2=:+/ >in2 @ parseline each cutopen data

solutions=:(];._1 ' Part1 Part2'); (2 1$sol1,sol2)
('Day 4';<solutions) (1!:2) 2
NB.        load '/home/deck/projects/adventofcode/2022/day04/solution.ijs'
NB. ┌─────┬───────────┐
NB. │Day 4│┌─────┬───┐│
NB. │     ││Part1│571││
NB. │     ││Part2│917││
NB. │     │└─────┴───┘│
NB. └─────┴───────────┘
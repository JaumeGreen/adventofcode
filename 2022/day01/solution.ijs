NB. Load the script, solutions will give you both parts of the solution.
file=. toJ 1!:1<'/home/deck/projects/adventofcode/2022/day01.input'

input=.". file rplc LF2;';';LF;' '
sol1=:+{.\:~>+/ each input
sol2=:+/3{.\:~>+/ each input

solutions=:(];._1 ' Part1 Part2'); (2 1$sol1,sol2)
('Day 1';<solutions) (1!:2) 2
NB.    load '/home/deck/projects/adventofcode/2022/day01/solution.ijs'
NB. ┌─────┬──────────────┐
NB. │Day 1│┌─────┬──────┐│
NB. │     ││Part1│ 65912││
NB. │     ││Part2│195625││
NB. │     │└─────┴──────┘│
NB. └─────┴──────────────┘
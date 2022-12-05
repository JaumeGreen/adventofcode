NB. Load the script, solutions will give you both parts of the solution.
data=. cutopen 1!:1<'/home/deck/projects/adventofcode/2022/day02.input'

part1=. (9 3$'A XA YA ZB XB YB ZC XC YC Z')&(4 8 3 1 5 9 7 2 6 { ~ i.)
part2=. (9 3$'A XA YA ZB XB YB ZC XC YC Z')&(3 4 8 1 5 9 2 6 7 { ~ i.)
sol1=:+/>part1&.>data
sol2=:+/>part2&.>data

solutions=:(];._1 ' Part1 Part2'); (2 1$sol1,sol2)
('Day 2';<solutions) (1!:2) 2
NB.    load '/home/deck/projects/adventofcode/2022/day02/solution.ijs'
NB. ┌─────┬─────────────┐
NB. │Day 2│┌─────┬─────┐│
NB. │     ││Part1│13052││
NB. │     ││Part2│13693││
NB. │     │└─────┴─────┘│
NB. └─────┴─────────────┘
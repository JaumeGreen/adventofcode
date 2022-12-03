NB. Load the script, solutions will give you both parts of the solution.
data=: cutopen 1!:1<'/home/deck/projects/adventofcode/2022/day02.input'
   part1=: 3 : 0
select. y
case. 'A X' do.
4
case. 'A Y' do.
8
case. 'A Z' do.
3
case. 'B X' do.
1
case. 'B Y' do.
5
case. 'B Z' do.
9
case. 'C X' do.
7
case. 'C Y' do.
2
case. 'C Z' do.
6
end.
)
   part2=: 3 : 0
select. y
case. 'A X' do.
3
case. 'A Y' do.
4
case. 'A Z' do.
8
case. 'B X' do.
1
case. 'B Y' do.
5
case. 'B Z' do.
9
case. 'C X' do.
2
case. 'C Y' do.
6
case. 'C Z' do.
7
end.
)
sol1=:+/>part1&.>data
sol2=:+/>part2&.>data
solutions=:(];._1 ' Part1 Part2'); (2 1$sol1,sol2)
('Day 2';<solutions) (1!:2) 2
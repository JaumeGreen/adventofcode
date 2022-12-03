NB. Load the script, solutions will give you both parts of the solution.
sol1=:+{.\:~>+/ each input
sol2=:+/3{.\:~>+/ each input
solutions=:(];._1 ' Part1 Part2'); (2 1$sol1,sol2)
('Day 1';<solutions) (1!:2) 2
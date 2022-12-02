 lines =: [: cutopen [: 1!:1 <
   nums =: [: ".@> lines
   d =: lines '/home/deck/projects/adventofcode/2022/d02t1.input'
      d
┌───┬───┬───┐
│A Y│B X│C Z│
└───┴───┴───┘
   b=.chopstring@>d
   b
┌─┬─┐
│A│Y│
├─┼─┤
│B│X│
├─┼─┤
│C│Z│
└─┴─┘
   b1=.{.b
   b1
┌─┬─┐
│A│Y│
└─┴─┘
   'c1 c2'=.b1
   c1
A
   c2
Y

   ] t=. 3 6 $ 4 4 2 2 9 9 3 3 1 1 7 7 5 5 6 6 8 8
4 4 2 2 9 9
3 3 1 1 7 7
5 5 6 6 8 8
   |:t
4 3 5
4 3 5
2 1 6
2 1 6
9 7 8
9 7 8
   +/|:t
30 22 38

2 2 8 8 3 3
3 9 1 9 1 3
4 2 4 7 2 7

   ev=: 3 : 0   
select. y
case. 'AX' do.
4
case. 'AY' do.
8
case. 'AZ' do.
3
case. 'BX' do.
1
case. 'BY' do.
5
case. 'BZ' do.
9
case. 'CX' do.
7
case. 'CY' do.
2
case. 'CZ' do.
6
end.
)
cases =. 'AY';'BX';'CZ'
   +/ >ev each cases
15

tr1=: ];._1 ' AX AY AZ BX BY BZ CX CY CZ'

   tr2=: 9 6 $ 4 4 8 8 3 3 , 8 3 4 3 4 8 , 3 8 3 4 8 4 , 1 1 5 5 9 9 , 5 9 1 9 1 5 , 9 5 9 1 5 1 , 7 7 2 2 6 6 , 2 6 7 6 7 2 , 6 2 6 7 2 7
   tr1;tr2
┌──┬───────────┐
│AX│4 4 8 8 3 3│
│AY│8 3 4 3 4 8│
│AZ│3 8 3 4 8 4│
│BX│1 1 5 5 9 9│
│BY│5 9 1 9 1 5│
│BZ│9 5 9 1 5 1│
│CX│7 7 2 2 6 6│
│CY│2 6 7 6 7 2│
│CZ│6 2 6 7 2 7│
└──┴───────────┘
    ]results=: 3 6 $ 8 3 4 3 4 8, 1 1 5 5 9 9, 6 2 6 7 2 7
8 3 4 3 4 8
1 1 5 5 9 9
6 2 6 7 2 7
   +/results   
15 6 15 15 15 24

   tr3=: 9 1 $ 4 8 3 1 5 9 7 2 6
   tr1;tr3
┌──┬─┐
│AX│4│
│AY│8│
│AZ│3│
│BX│1│
│BY│5│
│BZ│9│
│CX│7│
│CY│2│
│CZ│6│
└──┴─┘
ev=: 3 : 0   
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
   ev each p
┌┬┬┬┬┬┬┬┬┬┬┐
└┴┴┴┴┴┴┴┴┴┴┘
   ev each cutopen p+
|syntax error
|   ev each cutopen     p+
   ev each cutopen p
┌─┬─┬─┐
│8│1│6│
└─┴─┴─┘
   >ev each cutopen p
8 1 6
   +/>ev each cutopen p
15

      ev=: 3 : 0   
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
   ev each p
┌┬┬┬┬┬┬┬┬┬┬┐
└┴┴┴┴┴┴┴┴┴┴┘
   ev each cutopen p+
|syntax error
|   ev each cutopen     p+
   ev each cutopen p
┌─┬─┬─┐
│8│1│6│
└─┴─┴─┘
   >ev each cutopen p
8 1 6
   +/>ev each cutopen p
15
   p =. 1!:1<'/home/deck/projects/adventofcode/2022/d02t1.input'
   p =. 1!:1<'/home/deck/projects/adventofcode/2022/day02.input'
   +/>ev each cutopen p
-----
       ev2=: 3 : 0   
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
   +/>ev2 each cutopen p
-----
   
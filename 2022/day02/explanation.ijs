NB. After trying a lot to solve the problem that wasn't (find the best XYZ possible)
NB. finally I found a way to solve it.
NB. Let's start reading the file (test file)

   ]data=: cutopen 1!:1<'/home/deck/projects/adventofcode/2022/d02t1.input'
┌───┬───┬───┐
│A Y│B X│C Z│
└───┴───┴───┘

NB. !: https://code.jsoftware.com/wiki/Vocabulary/bangco Foreign (System functions)
NB. 1!:1 https://code.jsoftware.com/wiki/Vocabulary/Foreigns File read
NB. cutopen https://www.jsoftware.com/help/user/lib_stdlib.htm#cutopen cut input and put into boxes
NB. =: https://code.jsoftware.com/wiki/Vocabulary/eqco asign to global scope
NB. ] https://code.jsoftware.com/wiki/Vocabulary/squarert show result

NB. Now we have all the inputs to process, we only have to evaluate them.
NB. The way I found was using the select. https://code.jsoftware.com/wiki/Vocabulary/selectdot

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
   part1 data
8
   part1 each data
┌─┬─┬─┐
│8│1│6│
└─┴─┴─┘
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
   part2 each data
┌─┬─┬─┐
│4│1│7│
└─┴─┴─┘

NB. each https://www.jsoftware.com/help/user/lib_stdlib.htm#each executes the arguments cell by cell after unboxing
NB. If we do it without each it only does the first element.
NB. As the result is boxed we need to unbox it, then add the different results.
   +/>part1&.>data
15
   +/>part2&.>data
12

NB. > https://code.jsoftware.com/wiki/Vocabulary/gt open (unbox)
NB. &. https://code.jsoftware.com/wiki/Vocabulary/ampdot execute cell by cell
NB. &.> is equivalent to each. Used this instead of each to make it more unreadable :D
NB. / https://code.jsoftware.com/wiki/Vocabulary/slash use the function on the left between all the elements on the right
NB. + https://code.jsoftware.com/wiki/Vocabulary/plus#dyadic it will be the dyadic, as it will be between the elements
NB. so +/ means add all.

NB. With this all the parts are solved. But I didn't like it much. Too verbose.
NB. So I went looking for improvements in programming@jsoftware.com.
NB. Some people answered. Let's examine their solutions.

   parsed=: ('ABC',:'XYZ') i."1 |:-.&' ';._2 input,LF
   part1=: {{ +/1+y+3*3|(1+y)-x }}/
   part1 parsed
15
   part2=: {{ +/(3*y)+4|&.<:x+y }}/
   part2 parsed
12

NB. Let's understand these expressions, starting with parsed.
NB. ,: https://code.jsoftware.com/wiki/Vocabulary/commaco#dyadic create a 2 item array
   'ABC',:'XYZ'
ABC
XYZ
NB. i. https://code.jsoftware.com/wiki/Vocabulary/idot#dyadic index of, to find something
   ('ABC',:'XYZ') i. 'A'
2
   ('ABC',:'XYZ') i. 'Y'
2
   ('ABC',:'XYZ') i. 'ABC'
0
   ('ABC',:'XYZ') i. 'XYZ'
1
NB. It needs to match the full line. When not found it will return the number of elements
NB. which will be higher than the index (0-based). To find a letter we need to change the rank.
NB. " https://code.jsoftware.com/wiki/Vocabulary/quote changes the rank where it applies the function.
NB. Let's examine the second half.
   |:-.&' ';._2 input,LF
ABC
YXZ
NB. input is the raw input, and we add an LF to the end because reading the file seems to strip it.
NB. Let's do it with an explicit input, so we can understand it better.
NB. ;._2 https://code.jsoftware.com/wiki/Vocabulary/semidot1 partitions y using the last element of y, removes it from the results.
   ] ;._2 'A Y',LF,'B X',LF,'C Z',LF
A Y
B X
C Z
NB. Now we want to remove the spaces with -.
NB. -. https://code.jsoftware.com/wiki/Vocabulary/minusdot#dyadic less, remove elements.
   'a x'-.' '
ax
   ' '-.'a x'

NB. As we see it should have the elements on the left, thus we use & to bind the operand ' ' to the right
NB. & https://code.jsoftware.com/wiki/Vocabulary/ampm make a monad from a dyad
   removespaces=:-.&' '
   removespaces 'a x'
ax
   -.&' ';._2 'A Y',LF,'B X',LF,'C Z',LF
AY
BX
CZ
NB. |: https://code.jsoftware.com/wiki/Vocabulary/barco transpose, reverses the axys.
   |:-.&' ';._2 input,LF
ABC
YXZ
NB. " https://code.jsoftware.com/wiki/Vocabulary/quote rank, changes were it applies the function
   |:-.&' ';._2 input,LF
ABC
YXZ
   ('ABC',:'XYZ')
ABC
XYZ
   ]parsed=: ('ABC',:'XYZ') i. |:-.&' ';._2 input,LF NB. ABC vs ABC and YXZ vs XYZ
0 2
   ]parsed=: ('ABC',:'XYZ') i."0 |:-.&' ';._2 input,LF NB. A-A, B-B, C-C, X-Y, Y-X, Z-Z
0 0 0
1 1 0
   ]parsed=: ('ABC',:'XYZ') i."1 |:-.&' ';._2 input,LF NB. A, B, C in ABC and Y, X, Z in XYZ
0 1 2
1 0 2

NB. Now what's left is to evaluate the score.
   part1=: {{ +/1+y+3*3|(1+y)-x }}/
   part1 parsed
15
   part2=: {{ +/(3*y)+4|&.<:x+y }}/
   part2 parsed
12
NB. u/y https://code.jsoftware.com/wiki/Vocabulary/slash inserts u between members of y
NB. {{}} https://code.jsoftware.com/wiki/Vocabulary/DirectDefinition can create a conjunction, adverb or verb
   ]hands=: 2 9 $ 0 0 0 1 1 1 2 2 2 0 1 2 0 1 2 0 1 2
0 0 0 1 1 1 2 2 2
0 1 2 0 1 2 0 1 2
   {{ 1+y+3*3|(1+y)-x }}/hands
4 8 3 1 5 9 7 2 6
   0 0 0 1 1 1 2 2 2{{ (1+y)-x }}/0 1 2 0 1 2 0 1 2
1 2 3 0 1 2 _1 0 1
   vl=.0 0 0 1 1 1 2 2 2{{ (1+y)-x }}/0 1 2 0 1 2 0 1 2
   3|vl
1 2 0 0 1 2 2 0 1 NB. multiplying by 3 these are the points for winning/tying/losing.
   1+(0 1 2 0 1 2 0 1 2)+3*3|vl 
4 8 3 1 5 9 7 2 6
NB. So 1+y+3*3|(1+y)-x is a formula to calculate the result directly from the values
NB. | https://code.jsoftware.com/wiki/Vocabulary/bar#dyadic residue from division

NB. Let's examine the other answer.
   ev=:(9 3$'A XA YA ZB XB YB ZC XC YC Z')&(4 8 3 1 5 9 7 2 6 { ~i.)
   ev 'A X'
4
   9 3$'A XA YA ZB XB YB ZC XC YC Z'
A X
A Y
A Z
B X
B Y
B Z
C X
C Y
C Z


   parsed=: ('ABC',:'XYZ') i."1 |:-.&' ';._2 input
   part1=: {{ +/1+y+3*3|(1+y)-x }}/
   part2=: {{ +/(3*y)+4|&.<:x+y }}/

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
   
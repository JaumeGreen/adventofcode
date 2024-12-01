NB. Load the data
file=. 1!:1<'/home/deck/projects/adventofcode/2024/day01.input'
file=. 1!:1<'/home/deck/projects/adventofcode/2024/day01.test1'
numbers=.> ". each cutopen file
sorted=. /:"1 ~ |: numbers
values=.-/sorted
]solution1=.+/values * * values
key=.0{sorted
times=.1{sorted
tab=. key*"1/times=/key
]solution2=.+/+/tab


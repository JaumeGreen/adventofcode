NB. Load the data
]file=.". > cutopen (1!:1<'/home/deck/projects/adventofcode/2024/day07.test') rplc ':';''

line =. {. file
result =. {. line
numbers =. }. line
(<:#numbers) # 2 2

file=. 125 17 NB. test1

digits=.{{>: <. 10 ^. y}}
safedigits=.{{digits^:(0&<) y}}
divider=.{{<. 10^(safedigits y)%2}}
top=.{{<.y%divider y}}
bottom=.{{<.(divider y)|y}}
partition=.{{(top y),(bottom y)}}
is_odd_digits=.{{2|safedigits y}}
is_even_digits=.{{-.^:(0<y) 2| safedigits y}}
select=.{{>:^:(0<y) >:^:(is_even_digits y) 0}}
iteration=.{{; 1:`(2024x&*&x:)`partition@.(select) each y}}
solution=.{{(iteration^:x) y}}
#25 solution file 
NB. Too long, crashes 
NB. #75 solution file 

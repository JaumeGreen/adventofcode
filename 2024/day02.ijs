NB. Load the data
file=. 1!:1<'/home/deck/projects/adventofcode/2024/day02.input'
file=. 1!:1<'/home/deck/projects/adventofcode/2024/day02.test2'
lines =. ". each cutopen file
creatediff=.{{-/"1 (2)];._3 y}}
diff=. creatediff each lines
neg=.{{(_4&<*.0&>)y}}
pos=.{{(0&<*.4&>)y}}
andall=.{{*./y}}
isvalid=.{{(andall neg y)+. andall pos y}}
]solution1=.+/ > isvalid each diff

NB. if it's valid with all the values it will be valid with one less.
NB. get the possible permutations of values
perms=.{{(-.e.@i.#y)#y}}
orall=.{{+./y}}
anyvalid=.{{orall isvalid"1 creatediff"1 perms y}}
]solution2=.+/ >anyvalid each lines

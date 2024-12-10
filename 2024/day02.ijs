NB. Load the data
file=. 1!:1<'/home/deck/projects/adventofcode/2024/day02.input'
file=. 1!:1<'/home/deck/projects/adventofcode/2024/day02.test1'
lines =. ". each cutopen file
creatediff=.{{-/"1 (2)];._3 y}}
diff=. creatediff each lines
neg=.{{(_4&<*.0&>)y}}
pos=.{{(0&<*.4&>)y}}
andall=.{{*./y}}
isvalid=.{{(andall neg y)+. andall pos y}}
]solution1=.+/ > isvalid each diff

notneg=.{{(_4&>:+.0&<:)y}}
notpos=.{{(0&>:+.4&<:)y}}
isvalid2=. {{(2 > +/ notneg y)+.2 > +/ notpos y}}
]solution2=.+/ > isvalid2 each diff

NB. 1000 too high
]a=.>2{diff
notneg a
notpos a
4<
a

]b=:i.4 5
m0=: ] 	
m1=: m6@m7
m2=: m4@m6
m3=: m4@m7
m4=: |.@] 
m5=: m2@m7
m6=: |."_1@]
m7=: |:@] 	
d8=: m0`m1`m2`m3`m4`m5`m6`m7 @. [

(|.@)]@(|."_1@]) b
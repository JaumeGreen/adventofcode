NB. Sample usage
NB. 
NB.    w=:walls init 'day14'
NB.    pour w
NB. 665
NB.    pour2 w NB. It's not fast
NB. 25434


   read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   tonum=:{{(0".@] rplc &('->';' '))y}}
   tocols=:] $~ 2 ,~ 2 %~ #
   parse=:{{tocols@tonum each y}}
   init=:parse@read

   lin=: 4 : 0
if. {.x = {.y do. NB. vertical wall
    min=:({:x)<.{:y
    max=:({:x)>.{:y
    ({.x),.min+i.1+max-min
else. NB. horizontal wall
    min=:({.x)<.{.y
    max=:({.x)>.{.y
    (min+i.1+max-min),.({:x)
end.
)
   wall=: (1 2$0) -.~ [: ~. [: tocols [: ; 2 lin (1 : '({.y)u{:y')\ ]
   walls=:{{;wall each y}}

NB. Sands pouring from 500 0
    sands=:500 0

    low=:(([: {: [) >. [: {: ])/
    down=: 0 1
    left=:_1 1
    right=:1 1
    pour=: 3 : 0
sand=:sands
lower=:low y
blocks=:y
whilst. lower>{:sand do.
    if. -.(sand+down) e. blocks do.
        sand=:sand+down
        continue.
    end.
    if. -.(sand+left) e. blocks do.
        sand=:sand+left
        continue.
    end.
    if. -.(sand+right) e. blocks do.
        sand=:sand+right
        continue.
    end.
    NB. this grain of sand stops here
    blocks=:blocks,sand
    sand=:sands
end.
(#blocks)-#y
)

    pour2=: 3 : 0
sand=:sands
lower=:low y
floor=:lower+2
blocks=:y
whilst. floor>{:sand do.
    if. floor=1+{:sand do.
        blocks=:blocks,sand
        sand=:sands
        continue.
    end.
    if. -.(sand+down) e. blocks do.
        sand=:sand+down
        continue.
    end.
    if. -.(sand+left) e. blocks do.
        sand=:sand+left
        continue.
    end.
    if. -.(sand+right) e. blocks do.
        sand=:sand+right
        continue.
    end.
    NB. this grain of sand stops here
    blocks=:blocks,sand
    if. 0={:sand do.
        break. NB. Stop ceiling
    end.
    sand=:sands
end.
(#blocks)-#y
)
   t2=: 2 3$498 4 498 6 496 6
   t2
498   4 498
  6 496   6
   t1=:2 1$498 6
   t1
498
  6
   t1 e. t2
0 0
   t2 i. t1
2 2
   t2=: 3 2$498 4 498 6 496 6
   t1=: 1 2$498 6
   t2
498 4
498 6
496 6
   t1
498 6
   t2 i. t1
1
   read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   tonum=:{{(0".@] rplc &('->';' '))y}}

   (((#t0)%2),2)$ t0
498 4
498 6
496 6
   13 : '(((#y)%2),2)$ y'
] $~ 2 ,~ 2 %~ #

   tocols=:] $~ 2 ,~ 2 %~ #

   t
┌───────────────────────┬────────────────────────────────┐
│498,4 -> 498,6 -> 496,6│503,4 -> 502,4 -> 502,9 -> 494,9│
└───────────────────────┴────────────────────────────────┘
   tocols tonum each t
┌─────────────────┬───────────────────────┐
│498 4 498 6 496 6│503 4 502 4 502 9 494 9│
└─────────────────┴───────────────────────┘
   tocols@tonum each t
┌─────┬─────┐
│498 4│503 4│
│498 6│502 4│
│496 6│502 9│
│     │494 9│
└─────┴─────┘

   parse=:{{tocols@tonum each y}}
   init=:parse@read
   
   6,.i.2
6 0
6 1

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
   split=:{{({.y)u{:y}}

   ;2 lin split\t
498 4 498 5 498 6 496 6 497 6 498 6
   tocols ;2 lin split\t
498 4
498 5
498 6
496 6
497 6
498 6
   ~.tocols ;2 lin split\t
498 4
498 5
498 6
496 6
497 6
   13 : '~.tocols ;2 lin split\y'
[: ~. [: tocols [: ; 2 lin (1 : '({.y)u{:y')\ ]
   2 lin split\t
502 4
503 4
  0 0
  0 0
  0 0
  0 0
  0 0
  0 0
  0 0

502 4
502 5
502 6
502 7
502 8
502 9
  0 0
  0 0
  0 0

494 9
495 9
496 9
497 9
498 9
499 9
500 9
501 9
502 9
   13 : '(~.tocols ;2 lin split\y) -. 1 2$0'
(1 2$0) -.~ [: ~. [: tocols [: ; 2 lin (1 : '({.y)u{:y')\ ]


   wall=: (1 2$0) -.~ [: ~. [: tocols [: ; 2 lin (1 : '({.y)u{:y')\ ]
   walls=:{{;wall each y}}

NB. Sands pouring from 500 0
   sands=:500 0

   13 : '({:x)>.{:y'
([: {: [) >. [: {: ]
   (([: {: [) >. [: {: ])/w
9

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
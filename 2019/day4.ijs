   dl=. {.~_1&+&#
   df=. 1&}.
   p1=. 3 : '-.+./(dl y)>(df y)'
   p2=. 3 : '+./(df y)=(dl y)'
   p=. p1*p2
   f=.3 : '(0{y)+i.1{y+1-0{y'
   inp=. 10 23 NB. input numbers space separated
   ta=.1".\":
   day4_1=: 3 : '+/p " 1 (1 ta \ f y)'
   day4_1 inp
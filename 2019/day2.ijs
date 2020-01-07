NB. b=.0
NB. o1=.4 : '((x+1) {y) {y'
NB. o2=.4 : '((x+2) {y) {y'
NB. s=. 4 :'(x o1 y)+(x o2 y)'
NB. m=. 4 :'(x o1 y)*(x o2 y)'
NB.    ex=. 4 :'(x s y) ((x+3){y)}y'
NB. z =. 99&=
NB. h=. 3 :'0&+`0:@.z y'
NB.
NB.    ic=.0
NB.    sum=. 3 : 0
NB. ic=:
NB.    int=. 3 : 0
NB. o1=.4 : '((x+1) {y) {y'
NB. o2=.4 : '((x+2) {y) {y'
NB. s=. 4 :'(x o1 y)+(x o2 y)'
NB. m=. 4 :'(x o1 y)*(x o2 y)'
NB. ex1=. 4 :'(x s y) ((x+3){y)}y'
NB. ex2=. 4 :'(x m y) ((x+3){y)}y'
NB. z =. 99&=
NB. h=. 3 :'0&+`0:@.z y'
NB. op99=. 0&+
NB. )
NB.
NB.
NB.    sum=. 3 : 0
NB. ip=.ic
NB. ic=:ic+4
NB. ip ex1 y
NB. )
NB.    sum p
NB. 1 9 10 70 2 3 11 0 99 30 40 50
NB.    ic
NB. 4

ic=. 0
o1=.4 : '((x+1) {y) {y'
o2=.4 : '((x+2) {y) {y'
s=. 4 :'(x o1 y)+(x o2 y)'
m=. 4 :'(x o1 y)*(x o2 y)'
ex1=. 4 :'(x s y) ((x+3){y)}y'
ex2=. 4 :'(x m y) ((x+3){y)}y'
op99=. 0&+
NB. z =. 3 :'99=ic{y' NB. z =. 99&=
NB.
NB.    int=. 3 : 0
NB. ip=.ic
NB. ic=:ic+4
NB. h=. 3 :'op99`int ip ex1 y`int ip ex2 y@.z y'
NB. )
   z=: 3 :'0&+`0:@.(99&=) y'
      int=. 3 : 0
ip=.ic
ic=:ic+4
h=. 3 :'op99 y`int ip ex1 y`int ip ex2 y@.z ip{y'
h y
)

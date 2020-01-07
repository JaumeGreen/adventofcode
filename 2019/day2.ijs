NB. load'j901-user/temp/2019-2.ijs'
NB. instruction=counter
ic=:0
NB. operands
o1=:4 :'((x+1){y){y'
o2=:4 :'((x+2){y){y'
NB. operations
op1=:o1+o2
op2=:o1*o2
ex1=:4 :'(x op1 y)((x+3){y)}y'
ex2=:4 :'(x op2 y)((x+3){y)}y'
op99=:0&+
NB. map operations
m=:0&+`0:@.(99&=)
NB. iterative operation
   int=:3 : 0
ip=:ic
ic=:ic+4
e0=.op99
e1=.int@(ip&ex1)
e2=.int@(ip&ex2)
co=.3 :'m ip{y'
it=.e0`e1`e2@.co
it y
)
NB. test data
t=:1,9,10,3,2,3,11,0,99,30,40,50

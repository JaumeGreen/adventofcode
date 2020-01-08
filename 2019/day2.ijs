NB. load'j901-user/temp/2019-2.ijs'
NB. ] scriptdir =: (jpath '~home') , '/Documents/adventofcode/2019/'
NB. load<scriptdir,'day2.ijs'
NB. load'~\Documents\adventofcode\2019\day2.ijs'
NB. instruction=counter
ic=:0
NB. iterative operation and main function
   int=:3 : 0
NB. temp counter
ip=:ic
NB. operands
o1=:4 :'((x+1){y){y'
o2=:4 :'((x+2){y){y'
NB. operations
op1=:o1+o2
op2=:o1*o2
op99=:0&+
NB. how to execute and store the result
ex1=:4 :'(x op1 y)((x+3){y)}y'
ex2=:4 :'(x op2 y)((x+3){y)}y'
NB. tacit executions with recursion if needed
e0=:op99
e1=:int@(ip&ex1)
e2=:int@(ip&ex2)
NB. map operation 99 to 0
m=:0&+`0:@.(99&=)
NB. current operation to do
co=:3 :'m ip{y'
NB. main recursion
ic=:ic+4
it=:(e0`e1`e2@.co)f.
NB. go!
it y
)
intcode=:(int)f.
NB. test data
t=:1,9,10,3,2,3,11,0,99,30,40,50
t1=:1,0,0,0,99
t2=:2,3,0,3,99
t3=:2,4,4,5,99,0
t4=:1,1,1,4,99,5,6,0,99
NB. intcode t
NB. ic=:0
NB. intcode t1
NB. ic=:0
NB. intcode t2
NB. ic=:0
NB. intcode t3
NB. ic=:0
NB. intcode t4
NB. ic=:0
NB. real data parsed after removing last character

inputf=:".}:1!:1<'C:\Users\Jaume\Documents\adventofcode\2019\day2.input'
inputf=:12 (1})inputf
inputf=:2 (2})inputf

NB. intcode inputf
NB. result 3562672

NB. part two objective 19690720
set=:4 :'{.x(1})y(}.x(2})y)'
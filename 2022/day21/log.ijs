   read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   parse=: {{(rplc&(':';'=:';'/';'%';)) each y}}
   body=:>parse read 'd21t1'
   solution=: 3 : body
   solution ''   
   '+*%-' e. body
0
   '+*%-' e."1 body
1 0 0 0
0 0 0 0
1 0 0 0
0 0 0 0
0 0 0 1
0 0 0 0
0 0 0 0
0 0 0 0
0 0 0 0
0 1 0 0
0 0 0 0
0 0 1 0
0 1 0 0
0 0 0 1
0 0 0 0
   +./"1 '+*%-' e."1 body
1 0 1 0 1 0 0 0 0 1 0 1 1 1 0
      m1=:+./"1 '+*%-' e."1 body
   m2=:-.m1
   m1;m2
┌─────────────────────────────┬─────────────────────────────┐
│1 0 1 0 1 0 0 0 0 1 0 1 1 1 0│0 1 0 1 0 1 1 1 1 0 1 0 0 0 1│
└─────────────────────────────┴─────────────────────────────┘
   values=:m2#body
   values
dbpl=: 5          
zczc=: 2          
dvpt=: 3          
lfqf=: 4          
humn=: 5          
ljgn=: 2          
sllz=: 4          
hmdt=: 32         
   ]operations=:m1#body
root=: pppw + sjmn
cczh=: sllz + lgvd
ptdq=: humn - dvpt
sjmn=: drzm * dbpl
pppw=: cczh % lfqf
lgvd=: ljgn * ptdq
drzm=: hmdt - zczc
   (3 : values) ''
32
    4{."1 operations
root
cczh
ptdq
sjmn
pppw
lgvd
drzm
    funcs=:4{."1 operations
   make=: {{x rplc (' ',y,' ');(' (',y,' '''') ' )}}
   make=: {{rplc&((' ',y,' ');(' (',y,' '''') ')) each x}}
   1 rplc&(':';'>')\ operations
root=> pppw + sjmn
cczh=> sllz + lgvd
ptdq=> humn - dvpt
sjmn=> drzm * dbpl
pppw=> cczh % lfqf
lgvd=> ljgn * ptdq
drzm=> hmdt - zczc
   make=: {{1 rplc&((' ',y,' ');(' (',y,' '''') ')) \ x}}
   transf=:{{(' ',y);(' (',y,' '''')')}}
,transf"1 funcs
┌──────┬───────────┬──────┬───────────┬──────┬───────────┬──────┬───────────┬──────┬───────────┬──────┬───────────┬──────┬───────────┐
│ root │ (root '') │ cczh │ (cczh '') │ ptdq │ (ptdq '') │ sjmn │ (sjmn '') │ pppw │ (pppw '') │ lgvd │ (lgvd '') │ drzm │ (drzm '') │
└──────┴───────────┴──────┴───────────┴──────┴───────────┴──────┴───────────┴──────┴───────────┴──────┴───────────┴──────┴───────────┘
   make=:{{1 rplc&(,transf"1 y) \ x}}
   operations make funcs
root=: (pppw '') + (sjmn '')
cczh=: sllz + (lgvd '')     
ptdq=: humn - dvpt          
sjmn=: (drzm '') * dbpl     
pppw=: (cczh '') % lfqf     
lgvd=: ljgn * (ptdq '')     
drzm=: hmdt - zczc          
 ops=: operations make funcs   
   results=: 3 : ops
   results ''
|value error: sjmn
|   root=:(pppw'')+(    sjmn'')
     

   read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   init=: 3 : 0
      intput=:(read y) rplc ':';'=:';'/';'%'
      n=: (rplc&(':';'=:';'/';'%')) each p
      '+*%-' e. input
   +./ each '+*%-'&e. each n
┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
│1│0│1│0│1│0│0│0│0│1│0│1│1│1│0│
└─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘
   m2#each n
┌┬────────┬┬────────┬┬────────┬────────┬────────┬────────┬┬────────┬┬┬┬─────────┐
││dbpl=: 5││zczc=: 2││dvpt=: 3│lfqf=: 4│humn=: 5│ljgn=: 2││sllz=: 4││││hmdt=: 32│
└┴────────┴┴────────┴┴────────┴────────┴────────┴────────┴┴────────┴┴┴┴─────────┘
   >m2#each n
         
dbpl=: 5 
         
zczc=: 2 
         
dvpt=: 3 
lfqf=: 4 
humn=: 5 
ljgn=: 2 
         
sllz=: 4 
         
         
         
hmdt=: 32
   n=: (rplc&(':';'=:';'/';'%';LF;'')) each p
   >m2#each n
         
dbpl=: 5 
         
zczc=: 2 
         
dvpt=: 3 
lfqf=: 4 
humn=: 5 
ljgn=: 2 
         
sllz=: 4 
         
         
         
hmdt=: 32
   >m1#each n
root=: pppw + sjmn
                  
cczh=: sllz + lgvd
                  
ptdq=: humn - dvpt
                  
                  
                  
                  
sjmn=: drzm * dbpl
                  
pppw=: cczh % lfqf
lgvd=: ljgn * ptdq
drzm=: hmdt - zczc
                  
   bas=: 3 : >m2#each n
|domain error
|   bas=:    3 :>m2#each n
   b=:>m2#each n
   op=:>m1#each n
   bas=: 3 : b
   ops=: 3 : op
   b ''
|syntax error
|       b''
   bas ''
32
   op ''
|syntax error
|       op''
   ops ''
|value error: drzm
|   sjmn=:    drzm*dbpl
   root
pppw + sjmn
   dbpl
5
   sjmn=:    drzm*dbpl
|value error: drzm
|   sjmn=:    drzm*dbpl
   sjmn=:    drzm&*&dbpl
   n=: (rplc&(':';'=:';'/';'&%&';'*';'&*&';'+';'&+&';'-';'&-&';LF;'')) each p
   b=:>m2#each n
   op=:>m1#each n
   bas=: 3 : b
   ops=: 3 : op
   bas ''
32
   ops ''
|noun result was required: ops
|       drzm=:hmdt&-&zczc
   root
pppw&+&sjmn
      n=: (rplc&('/';'%')) each p
         ];._1 ': ',>{.n
 root       
 pppw + sjmn
   
   dsp=: deb"1@dltb"1
   parse=: 3 : 0
   root=:a:
   eve=:y
   for_i. i.#y do.
      ph=:];._1 ': ',>{.eve
      if. 'root' -: dsp >{.ph do.
         root =: dsp >{: ph
         eve=:}.eve
      else.
         eve=: rplc&((dsp>{.ph);dsp>{:ph) each }. eve
         if. -.a:-:root do.
            root=: root rplc (dsp>{.ph);dsp>{:ph
          end.
      end.
   end.
   root
   )

         ph
 root       
 pppw + sjmn
      <ph
┌────────────┐
│ root       │
│ pppw + sjmn│
└────────────┘
      <each ph
┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│
││ │││r│││o│││o│││t│││ │││ │││ │││ │││ │││ │││ ││
│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│
├───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┼───┤
│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│┌─┐│
││ │││p│││p│││p│││w│││ │││+│││ │││s│││j│││m│││n││
│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│└─┘│
└───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
      dlsp root
|value error: dlsp
|       dlsp root
      dsp >{.ph
|value error: dsp
|       dsp>{.ph
      
   NB.* dsp: delete extra spaces: multiple, leading, trailing.
   dsp=: deb"1@dltb"1
      dsp >{.ph
root
      <dsp >{.ph
┌────┐
│root│
└────┘
      <each dsp >{.ph
┌───┬───┬───┬───┐
│┌─┐│┌─┐│┌─┐│┌─┐│
││r│││o│││o│││t││
│└─┘│└─┘│└─┘│└─┘│
└───┴───┴───┴───┘
   NB. mobile version
   NB. t=. input
   a=. 3 : '_2+<.3%~y'
   +/ a t NB. day 1-1

   f=. 3 : '0>._2+<.y%3'
   NB. also? f=. 0&>.@-&2<.@%&3
   z=. 0&=
   c=. (f+$:@f)`0:@.z
   +/ c " 0 t NB. day 1-2

   NB. computer version
   inputfile =. < 'C:\day1.input'
   strsplit=: #@[ }.each [ (E. <;.1 ]) ,
   input =. ". > (10{a.) strsplit 1!:1 inputfile
   NB. +/ a input -> off by 2 because it has a 0 at the end
   f=. 3 : '0>._2+<.y%3'
   +/ f input NB. day 1-1
   z=. 0&=
   c=. (f+$:@f)`0:@.z
   +/ c " 0 t NB. day 1-2


NB. In my company there's an AoC competition, but today it was still not clear
NB. how the point system would work. So I tried to do it as fast as I could
NB. and that meant using C#, because I'm proficient on that.
NB. Rubbish quality code though, it was too early in the morning.

NB. After that I started working on the J solution, and I had all the pieces bar one.
NB. I can read the file, I can process the boxed input into the results.
NB. But I didn't know how to convert the input into the desired form.

NB. I didn't have much time, so I went to the internet for help. Some did arrive.
NB. But that will come into play when we arrive there.

NB. During the day it was made clear that only the stars counted, not the points
NB. given for early completion in the private leaderboard. And so I will continue
NB. using only J for the following days. Unless it grows too hard for me.

NB. Let's dive in.
   ]input=:1000 2000 3000 ; 4000 ; 5000 6000 ; 7000 8000 9000 ; 10000
┌──────────────┬────┬─────────┬──────────────┬─────┐
│1000 2000 3000│4000│5000 6000│7000 8000 9000│10000│
└──────────────┴────┴─────────┴──────────────┴─────┘
NB. ; https://code.jsoftware.com/wiki/Vocabulary/semi#dyadic links and builds boxed items
NB. =: https://code.jsoftware.com/wiki/Vocabulary/eqco asign to global scope
NB. ] https://code.jsoftware.com/wiki/Vocabulary/squarert show result

   ]part1=:{.\:~>+/ each input
24000
   ]part2=:+/3{.\:~>+/ each input
45000
NB. each https://www.jsoftware.com/help/user/lib_stdlib.htm#each executes the arguments cell by cell after unboxing
NB. / https://code.jsoftware.com/wiki/Vocabulary/slash use the function on the left between all the elements on the right
NB. + https://code.jsoftware.com/wiki/Vocabulary/plus#dyadic it will be the dyadic, as it will be between the elements
NB. so +/ means add all.
NB. > https://code.jsoftware.com/wiki/Vocabulary/gt open (unbox)
NB. ~ https://code.jsoftware.com/wiki/Vocabulary/tilde u~ y is the same as y u y
NB. \: https://code.jsoftware.com/wiki/Vocabulary/slashco#dyadic x u y sort x according to y
NB. {. https://code.jsoftware.com/wiki/Vocabulary/curlylfdot head or take x

NB. As there are several chained operations seeing them in order would make more sense.
NB. Most of the computations are the same. On step4 it will diverge.
NB. step4_1 will be the last for the 1st part, step5 is only for part 2.
   input
┌──────────────┬────┬─────────┬──────────────┬─────┐
│1000 2000 3000│4000│5000 6000│7000 8000 9000│10000│
└──────────────┴────┴─────────┴──────────────┴─────┘
   ]step1=: +/ each input
┌────┬────┬─────┬─────┬─────┐
│6000│4000│11000│24000│10000│
└────┴────┴─────┴─────┴─────┘
   ]step2=: > step1
6000 4000 11000 24000 10000
   ]step3=: \:~ step2
24000 11000 10000 6000 4000
   ]step4_1=: {. step3
24000
   ]step4_2=: 3{. step3
24000 11000 10000
   ]step5=: +/ step4_2
45000

p =. toJ 1!:1<'/home/deck/projects/adventofcode/2022/day01.input'
p rplc (LF,LF);';';LF;','
   p =. toJ 1!:1<'/home/deck/projects/adventofcode/2022/d01t1.input'
   cutpara p
┌───────────────┬─────┬──────────┬───────────────┬──────┐
│1000 2000 3000 │4000 │5000 6000 │7000 8000 9000 │10000 │
└───────────────┴─────┴──────────┴───────────────┴──────┘
   {.\:~>+/ each cutpara p
|domain error
|   {.\:~>    +/each cutpara p
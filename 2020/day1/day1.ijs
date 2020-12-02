NB. 1!:1<file reads file and closes it
NB. toJ removes CR
NB. cutopen separates the lines boxing them
NB. 0 ". each will transform them to numbers, 0 being the defult if it fails
inputf=:>0". each cutopen toJ 1!:1<'C:\Users\Jaume\Documents\adventofcode\2020\day1.txt'

complementari=:2020-inputf
NB. https://www.jsoftware.com/phrases/locate_select.htm
NB. ISO all occurrences of items of y in x
d17=: e.~&, # i.@#@]

found=: inputf d17 complementari
*/found{inputf


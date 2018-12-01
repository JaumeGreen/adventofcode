    Red [Needs: 'View]

    fileday1: %/C/Users/Jaume/Documents/adventofcode/2018/day1.input
    testcase: load fileday1
 ;   testcase: [1 -1 2]

;    probe testcase
    iterator: 1
    accumulator: 0
    freqlist: [0]
    while [pick testcase iterator] [
        accumulator: accumulator + pick testcase iterator
        iterator: iterator + 1
    ]
    probe "part 1"
    probe accumulator

    iterator: 1
    accumulator: 0
    freqlist: []
    while [not find freqlist accumulator] [
        append freqlist accumulator
        accumulator: accumulator + pick testcase iterator
        iterator: iterator + 1
        if not pick testcase iterator [iterator: 1]
    ]
    
    probe "part 2"
    probe accumulator

; "part 1"
; 497
; "part 2"
; 558
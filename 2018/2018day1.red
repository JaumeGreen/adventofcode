    Red []

    ;fileday1: %/C/Users/Jaume/Documents/adventofcode/2018/day1.input
    ;testcase: load fileday1
    testcase: [8 -20 13]

    accumulator: 0
    foreach iterator testcase [accumulator: accumulator + iterator]
    probe "part 1"
    probe accumulator

    accumulator: 0
    freqlist: copy []
    while [not find freqlist accumulator] [
        append freqlist accumulator
        accumulator: accumulator + first testcase
        testcase: next testcase
        if tail? testcase [testcase: head testcase]
    ]
    
    probe "part 2"
    probe accumulator

; "part 1"
; 497
; "part 2"
; 558
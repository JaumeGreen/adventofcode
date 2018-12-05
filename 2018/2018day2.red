Red []

fileday: %/C/Users/Jaume/Documents/adventofcode/2018/day2.input
testcase: load fileday ;TODO change to read/lines
;testcase: [
;    abcdef 
;    bababc 
;    abbcde 
;    abcccd 
;    aabcdd 
;    abcdee 
;    ababab 
;]

doubles: 0
triples: 0
forall testcase [
    line: sort copy form first testcase ;TODO remove form
    values: unique line

    hasdouble: false
    hastriple: false
    until [
        counter: 0
        while [(first line) = (first values)] [
            counter: counter + 1 
            remove line
        ]
        if counter = 2 [hasdouble: true]
        if counter = 3 [hastriple: true]
        remove values
        tail? values
    ]
    if hasdouble [doubles: doubles + 1]
    if hastriple [triples: triples + 1]
]

print doubles * triples

;testcase: [
;    abcde
;    fghij
;    klmno
;    pqrst
;    fguij
;    axcye
;    wvxyz
;]
;testcase: [
;    fghij
;    fguij
;]
;testcase: [
;    jbbenqtlagxhivmwyscjukztdp
;    jbbenqtlavxhivmwyscjukztdp
;]

found: false
forall testcase [
    line: form first testcase ;TODO remove form
    inner: next testcase
    forall inner [
        innerline: form first inner
        comp1: copy line
        comp2: copy innerline
        result: copy ""
        ;print comp1
        ;print comp2
        skip1: false
        until [
            ;print first comp1
            ;print first comp2
            ;probe skip1
            either (first comp1) <> (first comp2) [
                either skip1 [skip1: false 
                    break] [skip1: true]
            ] [append result first comp1]
            remove comp1
            remove comp2
            any [tail? comp2 
                tail? comp1]
        ]
        if all [tail? comp2 
                tail? comp1
                skip1] [
            print line
            print innerline
            print result
            found: true
            break
        ]
    ]
    if found [break]
]

;8118
;jbbenqtlagxhivmwyscjukztdp
;jbbenqtlavxhivmwyscjukztdp
;jbbenqtlaxhivmwyscjukztdp

;; examining /u/92-14 ideas. Still to be improved on the first part, understood on the second part
clones: func [
    id [string!] 
    /local letter duplicate
][
    unique parse sort copy id [
        collect some [ ;'some' means to keep matching what's in the pattern until it fails or the end of the string. 1 or more repetitions.
            ahead [set letter skip]   ; remember the first letter in advance
                                      ;'set' copies the letter as a single element, not a series. skips a letter
            copy duplicate 2 3 letter ; try to match a group of 2 or 3 letters, copy them to duplicate
            keep (length? duplicate)  ; if we suceed, then we keep the length of a matched group
            | skip ;skip mean that anything that doesn't match the previous pattern will match here
        ]
    ]
]

tests: ["abcdef" "bababc" "abbcde" "abcccd" "aabcdd" "abcdee" "ababab"] 

block: sort collect [ ;sort the collected keeps
    forall tests [ ;for each test...
        keep clones tests/1 ;...keep the result of calling clones with it
    ]
]

; asigns (length? find block 3) to threes and inmmediately uses this value to substract from the total string length
twos: subtract length? block threes: length? find block 3

print ["part 1: " (twos * threes)]

cartesian: function [domains body][
    set [body domains] reduce [copy body reverse copy domains] 
    do foreach [list element] domains [
        insert body reduce [
            to set-word! element append to path! list 1
        ]
        body: reduce ['forall list body]
    ]
]

indices: function [
    this [string!]
    that [string!]
][
    collect [
        forall this [
            index: index? this 
            if this/1 <> that/:index [keep index]
        ]
    ]
]

list: ["abcde" "fghij" "klmno" "pqrst" "fguij" "axcye" "wvxyz"]

cartesian [:this list :that list][
    if 1 = length? result: indices this that [
        print head remove at copy this result/1
    ]
]
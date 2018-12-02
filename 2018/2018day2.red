Red []

fileday: %/C/Users/Jaume/Documents/adventofcode/2018/day2.input
testcase: load fileday
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
    line: sort copy form first testcase
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
    line: form first testcase
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
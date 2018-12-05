Red []

fileday: %/C/Users/Jaume/Documents/adventofcode/2018/day3.input
testcase: read/lines fileday
probe first testcase

testcase: [
    "#1 @ 1,3: 4x4"
    "#2 @ 3,1: 4x4"
    "#3 @ 5,5: 2x2"
]

;one and a half hours later of "playing" with parse the input is finally parsed
;http://www.red-by-example.org/parse.html http://helpin.red/Parse.html
digit: charset "0123456789"
num: [1 6 digit ] 
;"#3 @ 5,5: 2x2" <- "#num @ num,num: numxnum"
parse-rules: ["#" keep num " @ " keep num "," keep num ": " keep num "x" keep num]
string-to-values: func [input] [ ;function that takes a string
    collect [
        foreach value parse input [collect parse-rules] [ ;parses the string with the previous rule
            ; "#3 @ 5,5: 2x2" -> [#"3" #"5" #"5" #"2" #"2"] everything is a char
            ; "#17 @ 323,659: 26x12" -> ["17" "323" "659" "26" "12"] everything is a string
            ; to-integer will transform a string to integer, form will create a string from data
            ; #"1" to integer is 49, "1" is 1
            keep to-integer form value
        ]
    ]
]
testcase-prep: copy []
foreach test testcase[ 
    ; the /only will make each append a different block
    append/only testcase-prep string-to-values test
]

probe testcase-prep
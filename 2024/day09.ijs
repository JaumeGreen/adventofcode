NB. Load the data
file=. >(x:&".) each (1!:1<'/home/deck/projects/adventofcode/2024/day09.input') rplc LF2;'';LF;''
]file=. >". each 1!:1<'/home/deck/projects/adventofcode/2024/day09.test1'

tofs=. 3 : 0
    skip=.0
    empty=.0
    fs=.''
    for_i. y do.
        what =. -1x
        if. (-.empty) do. 
            what=.(i_index % 2x)-skip
            if. (i=0) do. 
                skip=.>:skip
            end.
        end.
        NB. smoutput what; datatype what

        fs=.fs, i # what  
        empty=.-.empty
    end.
    fs
)

]sys=.tofs file

defrag=. 3 : 0
lastpos=.<:#y
for_i. y do.
    NB.smoutput i_index; i; lastpos; lastpos {y
    if. (i=_1) do.
    NB. empty space, fill
        while. (lastpos>:0) *. (lastpos{y)=_1 do.
        NB.smoutput 'back';lastpos; (lastpos>:0); (lastpos{y); ((lastpos{y)=_); (lastpos>:0) +. (lastpos{y)=_
        NB. find last number
            lastpos=.<:lastpos
        end.
        if. (i_index>:lastpos) do.
        NB. done
            break.
        end.
        NB.smoutput i_index; i; lastpos; lastpos {y
        y=.(_1x, lastpos {y) (lastpos, i_index)} y
        NB.smoutput y
    end.
end.
y
)

]def=.defrag sys
]checksum def
datatype sys
datatype def

checksum=. 3 : 0
good =. (-. def e. -1) # def
+/ good * i. # good
)

]sys=.tofs file
]def=.defrag sys
]checksum def

isodd=.{{2|y}}
iseven=.{{-.2|y}}

keepodd=.{{(isodd i. #y)#y}}
keepeven=.{{(iseven i. #y)#y}}

isodd 4 3 2 1
iseven 4 3 2 1
keepodd 4 3 2 1
keepeven 4 3 2 1

<:+/-. 1 2 3 0 4 5 0 6 e. 0

fs=. 2 2 1 3 3 2 3 0 4 4 4
fi=. 0 9 2 1 7 4 3 5 6 8
fe=. 0 0 0 0 1 1 2 2 1 5 2

,|: i.2 3
totf=.,fs,. fe

tofs=. 4 : 0
    NB. idlist tofs filesizes
    empty=.0
    hd=.''
    skip=.0
    for_i. y do.
        what =. -1x
        if. (-.empty) do. 
            what=.((i_index % 2)-skip){x
            NB. smoutput what; (datatype what); (i_index % 2);(i_index % 2){x
            if. (i=0) do. 
                skip=.>:skip
            end.
        end.
        NB.smoutput i#what
        hd=.hd, i # what  
        empty=.-.empty
    end.
    hd
)
fi tofs totf


defrag2=. 3 : 0
NB. 3 arrays. 1 file sizes, 1 file ids, 1 empty sizes
fsize=.keepeven y
fid=.i.<:+/-.fsize e. 0
fempty=keepodd
lastpos=.<:#fsize
idpos=.<:#fid

ff=.1 2 0 3 4 7
fa =. i.5
fd=. 5 3 2 1 6 7
ii=.0
li=.4
]fs=.((>:ii){.ff), (li{ff), ((>:ii)}.li{.ff), 0, (>:li)}.ff
]fe=.(ii{.fd), 0, (5-li{ff), ((>:ii)}.li{.fd), (li)}.fd
]totf=.,fs,. fe
fa tofs totf

whilst. 0>lastpos do.
    if. (lastpos{fsize) > 0 do.
        for_i. fempty do.
            if. (i>.lastpos{fsize) do.
            NB. 0_____11_____222_3333_4_
            NB. 03333_11_____222______4_
            NB. fsize 120341 -> 14203 -> 142030
            NB. fid 01234 -> 0312
            NB. fempty 532111 -> 01326 -> 013215
            NB. lastpos=4, i=5, i_index=0
            fsize=.((>:i_index){.fsize), (lastpos{fsize), ((>:i_index)}.lastpos{.fsize), 0, (>:lastpos)}.fsize
            fempty=.(i_index{.fempty), 0, (i-lastpos{fsize), ((>:i_index)}.lastpos{.fempty), (>:lastpos){fempty
            end.
            if. (i_index>:lastpos) do.
            NB. done
                break.
            end.
        end.
        idpos=.<:idpos
    end.
end.
y
)

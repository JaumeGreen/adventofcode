   ]ls=:1!1<'/home/deck/projects/adventofcode/2022/d07t1.input'
|domain error
|   ]ls=:1!1    <'/home/deck/projects/adventofcode/2022/d07t1.input'
   ]ls=:1!:1<'/home/deck/projects/adventofcode/2022/d07t1.input'
|file name error
|   ]ls=:    1!:1<'/home/deck/projects/adventofcode/2022/d07t1.input'
   ]ls=:1!:1<'/home/deck/projects/adventofcode/2022/d07t1.input'
$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k

   ;: ls
┌─┬──┬─┬─┬─┬──┬─┬───┬─┬─┬────────┬──┬───┬─┬───────┬──┬───┬─┬───┬─┬─┬─┬──┬─┬─┬─┬──┬─┬───┬─┬─┬─────┬─┬─┬────┬─┬─┬─────┬──┬───┬─┬─┬──┬─┬─┬─┬──┬─┬───┬─┬─┬─┬──┬──┬─┬─┬──┬──┬─┬─┬──┬─┬─┬─┬──┬─┬───────┬─┬─┬───────┬──┬───┬─┬───────┬──┬───┬─┬───────┬─┬─┐
│$│cd│/│ │$│ls│ │dir│a│ │14848514│b.│txt│ │8504156│c.│dat│ │dir│d│ │$│cd│a│ │$│ls│ │dir│e│ │29116│f│ │2557│g│ │62596│h.│lst│ │$│cd│e│ │$│ls│ │584│i│ │$│cd│..│ │$│cd│..│ │$│cd│d│ │$│ls│ │4060174│j│ │8033020│d.│log│ │5626152│d.│ext│ │7214296│k│ │
└─┴──┴─┴─┴─┴──┴─┴───┴─┴─┴────────┴──┴───┴─┴───────┴──┴───┴─┴───┴─┴─┴─┴──┴─┴─┴─┴──┴─┴───┴─┴─┴─────┴─┴─┴────┴─┴─┴─────┴──┴───┴─┴─┴──┴─┴─┴─┴──┴─┴───┴─┴─┴─┴──┴──┴─┴─┴──┴──┴─┴─┴──┴─┴─┴─┴──┴─┴───────┴─┴─┴───────┴──┴───┴─┴───────┴──┴───┴─┴───────┴─┴─┘
   ;._2 '$ cd ',ls
|syntax error
|       ;._2'$ cd ',ls
   ;._2 '$ cd ',:ls
|syntax error
|       ;._2'$ cd ',:ls
   ;._1 '$ cd ',:ls
|syntax error
|       ;._1'$ cd ',:ls
   ];._1 '$ cd ',:ls
$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k

   ];._1 '$ cd ',ls
 cd                                                 
 cd /
                                              
 ls
dir a
14848514 b.txt
8504156 c.dat
dir d
       
 cd a
                                              
 ls
dir e
29116 f
2557 g
62596 h.lst
               
 cd e
                                              
 ls
584 i
                                          
 cd ..
                                             
 cd ..
                                             
 cd d
                                              
 ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k

   '$ cd ' E. ls
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 ...
   par=.'$ cd ' E. ls
   par ];.1 ls
$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
       
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
               
$ cd e
$ ls
584 i
                                          
$ cd ..
                                                    
$ cd ..
                                                    
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k

   <par ];.1 ls
┌────────────────────────────────────────────────────────────┐
│$ cd / $ ls dir a 14848514 b.txt 8504156 c.dat dir d        │
│$ cd a $ ls dir e 29116 f 2557 g 62596 h.lst                │
│$ cd e $ ls 584 i                                           │
│$ cd ..                                                     │
│$ cd ..                                                     │
│$ cd d $ ls 4060174 j 8033020 d.log 5626152 d.ext 7214296 k │
└────────────────────────────────────────────────────────────┘
    cutpara par ];.1 ls
|length error: topara
|   ' '    (I.b)}y
    cutpara <par ];.1 ls
|domain error: topara
|   ' '    (I.b)}y
    ;:par ];.1 ls
┌─┬──┬──┬─┬─┬──┬─┬───────┬─┬─┬────────┬──┬───┬────┬───────┬──┬─────┬──┬───────┬─┬─┐
│$│cd│/ │ │$│ls│ │dir    │a│ │14848514│b.│txt│    │8504156│c.│dat  │  │dir    │d│ │
├─┼──┼──┼─┼─┼──┼─┼───────┼─┼─┼────────┼──┼───┼────┼───────┼──┼─────┼──┼───────┼─┼─┤
│$│cd│a │ │$│ls│ │dir    │e│ │29116   │f │   │2557│g      │  │62596│h.│lst    │ │ │
├─┼──┼──┼─┼─┼──┼─┼───────┼─┼─┼────────┼──┼───┼────┼───────┼──┼─────┼──┼───────┼─┼─┤
│$│cd│e │ │$│ls│ │584    │i│ │        │  │   │    │       │  │     │  │       │ │ │
├─┼──┼──┼─┼─┼──┼─┼───────┼─┼─┼────────┼──┼───┼────┼───────┼──┼─────┼──┼───────┼─┼─┤
│$│cd│..│ │ │  │ │       │ │ │        │  │   │    │       │  │     │  │       │ │ │
├─┼──┼──┼─┼─┼──┼─┼───────┼─┼─┼────────┼──┼───┼────┼───────┼──┼─────┼──┼───────┼─┼─┤
│$│cd│..│ │ │  │ │       │ │ │        │  │   │    │       │  │     │  │       │ │ │
├─┼──┼──┼─┼─┼──┼─┼───────┼─┼─┼────────┼──┼───┼────┼───────┼──┼─────┼──┼───────┼─┼─┤
│$│cd│d │ │$│ls│ │4060174│j│ │8033020 │d.│log│    │5626152│d.│ext  │  │7214296│k│ │
└─┴──┴──┴─┴─┴──┴─┴───────┴─┴─┴────────┴──┴───┴────┴───────┴──┴─────┴──┴───────┴─┴─┘
   ent=:LF E.
|syntax error
|   ent=:    LF E.
   ent=:LF&E.
   ent each par ];.1 ls
┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
│0│0│0│0│0│0│1│0│0│0│0│1│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│0│0│0│0│1│0│0│0│0│0│1│0│0│0│0│0│0│0│
├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│0│0│0│0│0│0│1│0│0│0│0│1│0│0│0│0│0│1│0│0│0│0│0│0│0│1│0│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│
├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│0│0│0│0│0│0│1│0│0│0│0│1│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│
├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│0│0│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│
├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│0│0│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│0│
├─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┤
│0│0│0│0│0│0│1│0│0│0│0│1│0│0│0│0│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│0│0│0│0│1│0│0│0│0│0│0│0│0│0│1│
└─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘
   folders =: par ];.1 ls
   ent ];.1 folders
|rank error: ent
|       ent];.1 folders
   ent {folders ];.1 {folders
|domain error
|   ent{folders    ];.1{folders
   (ent {folders) ];.1 {folders
   {folders
┌────────────────────────────────────────────────────────────┬────────────────────────────────────────────────────────────┬────────────────────────────────────────────────────────────┬────────────────────────────────────────────────────────────┬───────────...
│$ cd / $ ls dir a 14848514 b.txt 8504156 c.dat dir d        │$ cd a $ ls dir e 29116 f 2557 g 62596 h.lst                │$ cd e $ ls 584 i                                           │$ cd ..                                                     │$ cd ..    ...
└────────────────────────────────────────────────────────────┴────────────────────────────────────────────────────────────┴────────────────────────────────────────────────────────────┴────────────────────────────────────────────────────────────┴───────────...
   {.folders
$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
       
   (ent {.folders) ];.1 {.folders

$ ls          

dir a         

14848514 b.txt

8504156 c.dat 

dir d         

              
   <(ent {.folders) ];.1 {.folders
┌───────────────┐
│ $ ls          │
│ dir a         │
│ 14848514 b.txt│
│ 8504156 c.dat │
│ dir d         │
│               │
└───────────────┘
   ent(];1)] each folders
|length error
|   ent(];1)    ]each folders
   ent(];1) each folders
|domain error
|   ent(];1)    each folders
   ent ];1 each folders
|domain error
|   ent];1     each folders
   ent ];.1 each folders
|rank error: ent
|       ent];.1 each folders
   ent ];.1 ] each folders
|rank error: ent
|       ent];.1]each folders
   (ent ];.1 ]) each folders
┌┬┬┬┬┬┬─┬─┬┬┬┬─┬┬┬┬┬┬─┬┬┬┬─┬┬┬┬─┬┬┬┬┬┬┬─┬┬┬─┬┬┬┬┬┬┬┬┬─┬┬─┬┬┬─┬┬┬─┬┬┬┬┬┬┬─┐
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
└┴┴┴┴┴┴─┴─┴┴┴┴─┴┴┴┴┴┴─┴┴┴┴─┴┴┴┴─┴┴┴┴┴┴┴─┴┴┴─┴┴┴┴┴┴┴┴┴─┴┴─┴┴┴─┴┴┴─┴┴┴┴┴┴┴─┘
   (ent (];.1) ]) each folders
┌┬┬┬┬┬┬─┬─┬┬┬┬─┬┬┬┬┬┬─┬┬┬┬─┬┬┬┬─┬┬┬┬┬┬┬─┬┬┬─┬┬┬┬┬┬┬┬┬─┬┬─┬┬┬─┬┬┬─┬┬┬┬┬┬┬─┐
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
├┼┼┼┼┼┼─┼─┼┼┼┼─┼┼┼┼┼┼─┼┼┼┼─┼┼┼┼─┼┼┼┼┼┼┼─┼┼┼─┼┼┼┼┼┼┼┼┼─┼┼─┼┼┼─┼┼┼─┼┼┼┼┼┼┼─┤
│││││││ │ ││││ ││││││ ││││ ││││ │││││││ │││ │││││││││ ││ │││ │││ │││││││ │
└┴┴┴┴┴┴─┴─┴┴┴┴─┴┴┴┴┴┴─┴┴┴┴─┴┴┴┴─┴┴┴┴┴┴┴─┴┴┴─┴┴┴┴┴┴┴┴┴─┴┴─┴┴┴─┴┴┴─┴┴┴┴┴┴┴─┘
   (ent ];.1 ]) folders
|rank error: ent
|       (ent];.1])folders
   (ent ];.1 ]) folders
|rank error: ent
|       (ent];.1])folders
   ls
$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k

   
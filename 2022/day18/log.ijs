   
   read=:{{cutopen 1!:1 <'/home/deck/projects/adventofcode/2022/',y,'.input'}}
   ]v=:read 'd18t1'
┌─────┬─────┐
│1,1,1│2,1,1│
└─────┴─────┘
   >v
1,1,1
2,1,1
   0".>v
111 211
   > @2". each v
2
   0". each v
┌───┬───┐
│111│211│
└───┴───┘
   $@0". each v

   #@0". each v
1
   1+0". each v
|domain error
|   1    +0".each v
   >: each 0". each v
┌───┬───┐
│112│212│
└───┴───┘
   boxopen v
┌─────┬─────┐
│1,1,1│2,1,1│
└─────┴─────┘
   ;._1 ',',each v
|syntax error
|       ;._1',',each v
   ;._1 ',',v
|domain error
|   ;._1','    ,v
   (;._1 ',',])each v
|syntax error
|   (    ;._1',',])each v
   ([:;._1 ',',])each v
|domain error
|       ([:;._1',',])each v
   ;._1 ',1,2,2'
|syntax error
|       ;._1',1,2,2'
   ];._1 ',',each v
┌──────┐
│,2,1,1│
└──────┘
   (<;._1 ',',])each v
|domain error
|       (<;._1',',])each v
   (];._1 ',',)each v
|syntax error
|   (];._1    ',',)each v
   {{(];._1 ',',y)}}each v
┌─┬─┐
│1│2│
│1│1│
│1│1│
└─┴─┘
   0". each >{{(];._1 ',',y)}}each v
┌┬┐
└┴┘
   0". each >{{(];._1 ',',y)}}each v
┌─┐
│1│
├─┤
│1│
├─┤
│1│
└─┘

┌─┐
│2│
├─┤
│1│
├─┤
│1│
└─┘
   >0". each >{{(];._1 ',',y)}}each v
1
1
1

2
1
1
   
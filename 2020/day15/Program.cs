using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=15;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = new int[][] {
    new int[] {0,3,6},
    new int[]{1,3,2},
    new int[]{2,1,3},
    new int[]{1,2,3},
    new int[]{2,3,1},
    new int[]{3,2,1},
    new int[]{3,1,2},
    new int[]{2,0,1,9,5,19}
    };

//var input=lines[0];
foreach (var input in lines)
{
    var game =new Dictionary<int,int>();
    int j=0;
    int i = 0;
    int lastnumber=0;
    for (; i < input.Length -1; i++, j++)
    {
        game.Add(input[i],i);
        //Console.WriteLine($"{i+1} {input[i]} {i}");
    }
    lastnumber=input[i]; //last input
    for (;j+1<30000000;j++)
    //for (;j+1<2020;j++)
    //for (;j<10;j++)
    {
        //Console.Write($"{j+1} {lastnumber}");
        if (game.ContainsKey(lastnumber))
        {
            var lastindex=game[lastnumber];
            game[lastnumber]=j;
            lastnumber=j-lastindex;
            //Console.Write($" --> {lastindex}");
        }
        else
        {
            game.Add(lastnumber,j);
            lastnumber=0;
            //Console.Write($" --> new");
        }
        //Console.WriteLine($" --> {lastnumber}");
        if (j+1==2019)
        {
            long solution1=lastnumber;
            Console.WriteLine($"Day{day} part 1 solution for {string.Join(",",input)} is : {solution1}"); 
        }
    }
    long solution2=lastnumber;
    Console.WriteLine($"Day{day} part 2 solution for {string.Join(",",input)} is : {solution2}");
}


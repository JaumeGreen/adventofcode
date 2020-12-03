using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

Console.WriteLine("Day3 Advent of code 2020");

var lines = File.ReadAllLines(@"..\day3.input").ToArray();
var sizelin = lines[0].Count();
var slope = new int[] {1,3,5,7};
var curpos = new int[5] {0,0,0,0,0};
var solution=new long[5] {0,0,0,0,0};

for (var i=1;i<lines.Count();i++)
{
    if (i%2==0)
    {
        curpos[4]+=1;
        curpos[4]%=sizelin;
        if (lines[i][curpos[4]]=='#')
            solution[4]++;
    }
    
    for (var j=0;j<slope.Count();j++)
    {
        curpos[j]+=slope[j];
    }

    for (int k = 0; k < solution.Count()-1; k++)
    {
        curpos[k]%=sizelin;
        if (lines[i][curpos[k]]=='#')
            solution[k]++;
        
    }
}

Console.WriteLine($"Day3 part 1 solution is : {solution[1]}");
var pp = solution[0]*solution[1]*solution[2]*solution[3]*solution[4];
foreach (var sol in solution)
{
Console.WriteLine(sol);    
}
//622314392 no
Console.WriteLine($"Day3 part 2 solution is : {pp}");

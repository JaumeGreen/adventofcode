using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

Console.WriteLine("Day1 Advent of code 2020");
var lines = File.ReadAllLines(@"..\day1.input").Select(Int32.Parse);
foreach (var val in lines)
{
    if (lines.Contains(2020-val))
    {
        Console.WriteLine($"Day1 part 1 solution is : {val*(2020-val)}");
        break;
    }
}
var arr = lines.ToArray();
foreach (var val in lines.Select((value,i)=>new{i,value}))
{
    for (int i = val.i;i<lines.Count();i++)
    {
        var partial = val.value + arr[i];
        if (lines.Contains(2020-partial))
        {
            Console.WriteLine($"Day2 part 1 solution is : {val.value*arr[i]*(2020-partial)}");
            Environment.Exit(0);
        }
    }
}

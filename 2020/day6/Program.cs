using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=0;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day6.input");

var ans = new HashSet<char>();
var solution1=0;
var solution2=0;
var ans2 = new HashSet<char>();
var new2 = true;
foreach (var item in lines)
{
    if (string.IsNullOrEmpty(item))
    {
        solution1+=ans.Count;
        ans.Clear();
        solution2+=ans2.Count;
        ans2.Clear();
        new2 = true;
    }
    else
    {
        ans.UnionWith(item);
        if (new2)
            ans2.UnionWith(item);
        else
            ans2.IntersectWith(item);
        new2=false;
    }
}

solution1+=ans.Count;
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

solution2+=ans2.Count;
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

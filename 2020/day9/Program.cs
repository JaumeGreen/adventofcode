using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=9;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day9.input").Select(x=>Int64.Parse(x)).ToArray();
var preamble = 25;

long solution1=0;
for (int i=preamble;i<lines.Length;i++)
{
    var keys = lines.Skip(i-preamble).Take(preamble).ToArray();
    bool notFound=true;
    for (int j = 0; notFound && j < keys.Length-1 ; j++)
    {
        for (int k = j+1; notFound && k < keys.Length; k++)
        {
            if (keys[j]+keys[k]==lines[i])
            {
                notFound=false;
            }
        }        
    }
    if (notFound)
    {
        solution1=lines[i];
        break;
    }
}

Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

bool found = false;
var skip = 0;
var take = 1;
while(!found && skip + take < lines.Length)
{
    var value = lines.Skip(skip).Take(take).Sum();
    if (value == solution1)
        break;
    if (value>solution1)
    {
        skip++;
        take--;
    }
    if (value<solution1)
        take++;
}

var solution2=lines.Skip(skip).Take(take).Max()+lines.Skip(skip).Take(take).Min();
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

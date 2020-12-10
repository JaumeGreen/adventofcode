using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=10;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day10.input").Select(x=>Int32.Parse(x)).ToList();
lines.Sort();

var ones =0;
var threes = 0;
var prev = 0;
for (int i = 0; i < lines.Count; i++)
{
    if (prev+1==lines[i])
        ones++;
    if (prev+3==lines[i])
        threes++;
    prev=lines[i];
}
threes++;
var solution1=ones*threes;
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

long solution2=1;
var graph = lines.Select(x=>new {value=x, ways=solution2}).ToArray();

long count =0;
for (int i = lines.Count-2; i >=0 ; i--)
{
    count =0;
    count+=graph.FirstOrDefault(x=>x.value==lines[i]+1)?.ways ?? 0;
    count+=graph.FirstOrDefault(x=>x.value==lines[i]+2)?.ways ?? 0;
    count+=graph.FirstOrDefault(x=>x.value==lines[i]+3)?.ways ?? 0;
/*    Console.Write($"{lines[i]}->{count}       ");
    if (i%5==0)Console.WriteLine("");*/
    graph[i]=new {value=lines[i], ways=count};
}
count =0;
count+=graph.FirstOrDefault(x=>x.value==1)?.ways ?? 0;
count+=graph.FirstOrDefault(x=>x.value==2)?.ways ?? 0;
count+=graph.FirstOrDefault(x=>x.value==3)?.ways ?? 0;
//Console.WriteLine($"0->{count}");
solution2 = count;
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

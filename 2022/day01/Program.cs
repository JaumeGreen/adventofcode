using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

Console.WriteLine("Day1 Advent of code 2022");
var lines = File.ReadAllLines(@"../day01.input");
var carry = new List<List<Int64>>();
var cur = new List<Int64>();
foreach (var lin in lines)
{
    if (String.IsNullOrEmpty(lin))
    {
        carry.Add(cur);
        cur = new List<Int64>();
    }
    else
    {
        cur.Add(Int64.Parse(lin));
    }
}
carry.Add(cur);

Int64 m1=0;
Int64 m2=0;
Int64 m3=0;
foreach (var elf in carry)
{
    var c=elf.Sum();
    if(c>m1)
    {
        m3=m2;
        m2=m1;
        m1=c;
    }
    else if(c>m2)
    {
        m3=m2;
        m2=c;
    }
    else if(c>m3)
    {
        m3=c;
    }
}
Console.WriteLine(m1+m2+m3);


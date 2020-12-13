using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Numerics;
var day=13;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day13.input");

var time = Int64.Parse(lines[0]);
var parsebuses = lines[1].Split(',').ToList();
parsebuses.RemoveAll("x".Equals);
var buses = parsebuses.Select(Int64.Parse).ToArray();
var diferences = buses.Select(x=>x-time%x).ToArray();

var min = diferences[0];
var index =0;
for (int i = 1; i < diferences.Count(); i++)
{
    if (diferences[i]<min)
    {
        index=i;
        min=diferences[i];
    }
}

long solution1=min*buses[index];
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

var numbers = lines[1].Split(',').Select((x,i)=>new {mod=x, index=i}).ToList();
numbers.RemoveAll(x=>"x".Equals(x.mod));


//CRT resolution thanks to https://www.youtube.com/watch?app=desktop&v=zIFehsBHB8o
BigInteger n = 1;
foreach (var item in buses)
    n*=item;
//Console.WriteLine(n);
BigInteger solution2=0;
for (int i = 0; i < numbers.Count(); i++)
{
    var module = Int32.Parse(numbers[i].mod);
    var bi = module-numbers[i].index;
    var ni = n/module;
    var xi = CRT(ni,bi,module);
    solution2+= bi*ni*xi;
    //Console.WriteLine($"({numbers[i].index}) {ni} * {xi} = {bi} mod {module} -> {ni*xi} % {module} -> {(ni*xi)%module}");
    //Console.WriteLine(solution2);
    /*foreach (var item in buses)
    {
        Console.Write($"    {item} -> {solution2%item}");
    }*/
    //Console.WriteLine();
}
//solution2*=Int32.Parse(numbers[0].mod);
solution2%=n;
/*foreach (var item in buses)
{
    Console.WriteLine($"{item} -> {solution2%item}");
}*/
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

BigInteger CRT (BigInteger mult, int residue, int module)
{
    for (int i = 1; i < module; i++)
    {
        if (mult*i%module==1)
            return i;
    }
    return module;
}
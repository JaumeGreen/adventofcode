using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

Console.WriteLine("Day2 Advent of code 2020");
var validPasswords1=0;
var validPasswords2=0;
var lines = File.ReadAllLines(@"..\day2.txt");
/*var lines = new List<string> (){
    "1-3 a: abcde",
    "1-3 b: cdefg",
    "2-9 c: ccccccccc"
    };*/
foreach (var line in lines)
{
    var data = line.Split(' ');
    var times = data[0].Split('-');
    var min = Int32.Parse(times[0]);
    var max = Int32.Parse(times[1]);
    var what = data[1][0];
    var present = data[2].Count(c=>c==what);
    if ( present >=min && present <=max)
        validPasswords1++;
    if ((data[2][min-1]==what || data[2][max-1]==what) && data[2][min-1]!=data[2][max-1])
        validPasswords2++;
}
Console.WriteLine($"Day2 part 1 solution is : {validPasswords1}");
Console.WriteLine($"Day2 part 2 solution is : {validPasswords2}");

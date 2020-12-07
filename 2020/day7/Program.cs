using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=7;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day7.input");

//var regx = new Regex (@"((?:\w+\W){2})bags contain(?: ?([0-9])? ((?:\w+\W){2})bags?,?)+\.");
var findColor = new Regex(@"([0-9])? ?((?:\w+\W){2})bags?");

/*foreach (var line in lines)
{
    var ff = string.Join(",", groups.Values);
    if (partition[1].StartsWith("no"))
    {
        Console.WriteLine($"{line} with *{ff}* contains no bags");
        continue;
    }

    Console.WriteLine($"{line} with *{ff}* contains bags");
    var parts = partition[1].Split(",");
    foreach (var bag in parts)
    {
        var fb = findColor.Match(bag);
        var gb = fb.Groups;
        var gg = string.Join(",", gb.Values);
        Console.WriteLine($"    {bag} with *{gg}* contains no bags");
    }
}*/

var rules = lines.ToDictionary(x=>GetColor(x), y=>GetContents(y));

var finalBags = new HashSet<string>();
var tempBags = new HashSet<string>();
tempBags.UnionWith(rules.Where(kvp=>kvp.Value.ContainsKey("shiny gold")).Select(kvp=>kvp.Key));
finalBags.UnionWith(tempBags);
var count = -1;
/*Console.WriteLine($" keys = '{string.Join("', '",rules?.SelectMany(x=>x.Value?.Keys))}'");
Console.WriteLine($"{string.Join(",",rules.Where(kvp=>kvp.Value.ContainsKey("shiny gold")).Select(kvp=>kvp.Key))} ??");
Console.WriteLine($"Found {tempBags.Count} containers: {string.Join(",", tempBags)} for shiny gold bags");*/

while (finalBags.Count!=count && tempBags.Any())
{
//    Console.WriteLine($"{finalBags.Count}");
    count = finalBags.Count();
    var temp = new HashSet<string>();
    foreach(var color in tempBags)
    {
        temp.UnionWith(rules.Where(kvp=>kvp.Value.ContainsKey(color)).Select(kvp=>kvp.Key));
  //      Console.WriteLine($"Found {temp.Count} containers: {string.Join(",", temp)} for '{color}' bags");
    }
    tempBags=temp;
    finalBags.UnionWith(tempBags);
}

var solution1=finalBags.Count;
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

var memoization = new Dictionary<string,int>();

var solution2=CountContents("shiny gold")-1; //substract the golden one
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

string GetColor(string line)
{
    var partition = line.Split(" contain ");
    var finds = findColor.Match(partition[0]);
    var groups = finds.Groups;
    return groups[2].Value.Trim();
}

Dictionary<string,int> GetContents(string line)
{
    var partition = line.Split(" contain ");
    var ans = new Dictionary<string,int>();
    if (partition[1].StartsWith("no"))
        return ans;
    var parts = partition[1].Split(",");
    foreach (var bag in parts)
    {
        var fb = findColor.Match(bag);
        var gb = fb.Groups;
        ans.Add(gb[2].Value.Trim(), Int32.Parse(gb[1].Value));
    }
 /*   Console.WriteLine($"{line}->");
    foreach (var item in ans)
    {
        Console.WriteLine($"     '{item.Key}' '{item.Value}'");
    }*/
    return ans;
}

int CountContents(string color)
{
    if (memoization.ContainsKey(color))
        return memoization[color];
    
    var count = 1;
    //Console.WriteLine($"Calculating {color}");
    foreach (var item in rules[color])
    {
        var itemcolor = CountContents(item.Key);
        var thisbag = (item.Value*itemcolor);
        //Console.WriteLine($" {item.Key} always contains {itemcolor}. In this case {thisbag}");
        count+=thisbag;
    }
    return count;
}
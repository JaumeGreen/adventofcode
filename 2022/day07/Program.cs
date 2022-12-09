using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

Console.WriteLine("Day07 Advent of code 2022");
var lines = File.ReadAllLines(@"../day07.input");
//var lines = File.ReadAllLines(@"../d07t1.input");
Folder root = new(){name="/"};
Folder cur = root;
string curname="";

foreach (var lin in lines)
{
    if (lin.StartsWith("$ cd /")) cur=root;
    if (lin.StartsWith("$ cd .."))
    {
        cur = cur.parent??cur;
        continue;
    }
    if (lin.StartsWith("$ ls"))
    {
        continue;
    };
    if (lin.StartsWith("$ cd ")) 
    {
        curname = lin.Substring(5);
        //Console.WriteLine(lin);
        var n = cur.folders.FirstOrDefault(i=>string.Equals(i.name, curname));
        if (n==default(Folder))
        {
            n=new(){parent=cur, name = curname};
            //Console.WriteLine($"{curname}");
        }
        cur.folders.Add(n);
        cur = n;
        continue;
    };
    if (lin.StartsWith("dir ")) 
    {
        //cur.folders.Add(lin.Substring(4));
        continue;
    }
    var vals = lin.Split(" ");
    cur.files.Add(new Archive(){
        size=Int64.Parse(vals[0]),
        name=vals[1]});
}

curname="/";
var sum =CalcSize(root);

Console.WriteLine($"part1 {sum}");
var free = 70000000-root.size;
var need = 30000000-free;
Console.WriteLine($"total 70000000 current {free} need {need}");
Console.WriteLine($"part2 {BestFit(root,need,70000000)}");
// too low 5521360
//         6400111

long CalcSize(Folder f)
{
    long temp =0;
    if (f.calc) return 0;
    foreach (var sf in f.folders)
        temp+=CalcSize(sf);
    f.size = f.files.Sum(a=>a.size) + f.folders.Sum(sf=>sf.size);
    f.calc = true;
    //Console.WriteLine($"{f.name} {f.size} {temp}");
    return temp+(f.size<=100000?f.size:0);
}
long BestFit(Folder f, long need, long best)
{
    if (f.size<need) return best;
    foreach (var sf in f.folders)
    {
        best = BestFit(sf,need,best);
    }
    if (f.size>need && f.size<best)
        return f.size;
    return best;
}

public class Folder
{
    public List<Folder> folders = new();
    public List<Archive> files = new();
    public long size = 0;
    public string name = "";
    public bool calc=false;
    public Folder? parent = null;
}
public class Archive
{
    public long size = 0;
    public string name = "";
}
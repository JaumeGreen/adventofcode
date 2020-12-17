using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=17;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day17.input");

List<Cell> source=new();
InitSource();

int cycle =0;
Dictionary<Cell,int> visited = new();
for (cycle=0;cycle<6;cycle++)
{
    //ShowMap();
    //Console.WriteLine();
    //Console.WriteLine($"{cycle} {source.Count}");
    List<Cell> newmap = new();
    visited.Clear();
    newmap.AddRange(RemainActive());
    //Console.WriteLine($"{newmap.Count} remain active");
    newmap.AddRange(Activated());
    //Console.WriteLine($"{newmap.Count} are activated");
    source.Clear();
    source = newmap;
}

//ShowMap();
long solution1=source.Count;
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

visited.Clear();
source.Clear();
InitSource();
for (cycle=0;cycle<6;cycle++)
{
    //ShowMap();
    //Console.WriteLine();
    //Console.WriteLine($"{cycle} {source.Count}");
    List<Cell> newmap = new();
    visited.Clear();
    newmap.AddRange(RemainActive4d());
    //Console.WriteLine($"{newmap.Count} remain active");
    newmap.AddRange(Activated());
    //Console.WriteLine($"{newmap.Count} are activated");
    source.Clear();
    source = newmap;
}
long solution2=source.Count;
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

IEnumerable<Cell> GetNeighbours (Cell cell)
{
    for (int i = -1; i <= +1; i++)
        for (int j = -1; j <= +1; j++)
            for (int k = -1; k <= +1; k++)
            {
                if (i==0 && j==0 && k==0) continue;
                yield return cell with {x=cell.x+i,y=cell.y+j,z=cell.z+k};
            }
}

IEnumerable<Cell> GetNeighbours4d (Cell cell)
{
    for (int i = -1; i <= +1; i++)
    for (int j = -1; j <= +1; j++)
    for (int k = -1; k <= +1; k++)
    for (int l = -1; l <= +1; l++)
    {
        if (i==0 && j==0 && k==0 && l==0) continue;
        yield return cell with {x=cell.x+i,y=cell.y+j,z=cell.z+k,w=cell.w+l};
    }
}

IEnumerable<Cell> RemainActive ()
{
    foreach (var cell in source)
    {
        var n = GetNeighbours(cell);
        //Console.WriteLine($"{n.Count()} neighbours {visited.Count}");
        foreach (var ni in n)
            AddVisits(ni);
        var active = n.Count(x=>source.Contains(x));
        //Console.WriteLine($"{active} neighbours active {visited.Count}");
        if (active==2 || active==3 )
            yield return cell;
    }
}
IEnumerable<Cell> RemainActive4d ()
{
    foreach (var cell in source)
    {
        var n = GetNeighbours4d(cell);
        //Console.WriteLine($"{n.Count()} neighbours {visited.Count}");
        foreach (var ni in n)
            AddVisits(ni);
        var active = n.Count(x=>source.Contains(x));
        //Console.WriteLine($"{active} neighbours active {visited.Count}");
        if (active==2 || active==3 )
            yield return cell;
    }
}
void AddVisits(Cell c)
{
    if (source.Contains(c)) return;
    if (visited.ContainsKey(c))
        visited[c]++;
    else
        visited.Add(c,1);
}

IEnumerable<Cell> Activated ()
{
    return visited.Where(x=>x.Value==3).Select(x=>x.Key);
}

void ShowMap()
{
    int minx=source.Min(c=>c.x);
    int miny=source.Min(c=>c.y);
    int minz=source.Min(c=>c.z);
    int maxx=source.Max(c=>c.x);
    int maxy=source.Max(c=>c.y);
    int maxz=source.Max(c=>c.z);
    for (int k = minz; k <= maxz; k++)
    {
        Console.WriteLine($"z={k}");
        for (int j = miny; j <= maxy; j++)
        {
            for (int i = minx; i <= maxx; i++)
                if (source.Contains(new Cell{x=i,y=j,z=k}))
                    Console.Write("#");
                else
                    Console.Write(".");
            Console.WriteLine();
        }
    }
}
void InitSource()
{
    int x=0, y=0, z=0, w=0;
    foreach (var line in lines)
    {
        for (x = 0; x < line.Length; x++)
        {
            if(line[x]=='#')
                source.Add(new Cell {x=x,y=y,z=z,w=w});
        }
        y++;
    }
}
public record Cell
{
    public int x;
    public int y;
    public int z;
    public int w;
}
using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=16;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day16.input");

var line="";
int i = 0;
var limits = new List<int>();
var labels = new List<int>();
var fields = new List<Field>();
for (; i < lines.Count(); i++)
{
    line=lines[i];
    if (string.IsNullOrEmpty(line) || line=="your ticket:") break;
    var current = line.Split(": ")[1].Split(" or ")
                                .SelectMany(x=>x.Split('-'))
                                .Select(Int32.Parse).ToList();
    limits.AddRange(current);
    var label = line.Split(": ")[0];
    fields.Add(new Field {Label=label, 
                          Min1=current[0],Max1=current[1],
                          Min2=current[2],Max2=current[3],
                        });
}
i++;
List<Ticket> tickets = new();

for (; i < lines.Count(); i++)
{
    line=lines[i];
    if (line=="your ticket:") continue;
    if (string.IsNullOrEmpty(line) || line=="nearby tickets:") break;
    
    tickets.Add(new Ticket{ Values=line.Split(',').Select(Int32.Parse).ToList() });
}
i++;

long solution1=0;

for (; i < lines.Count(); i++)
{
    line=lines[i];
    if (line=="nearby tickets:") continue;
    if (string.IsNullOrEmpty(line)) break;
    var numbers = line.Split(',').Select(Int32.Parse);
    var linevalid = true;
    foreach (var num in numbers)
    {
        var valid = ValidateNum(num);
        //Console.WriteLine($" -> {valid}");
        if (!valid)
        {
            solution1+=num;
            linevalid=false;
        }
    }
    if (linevalid)
        tickets.Add(new Ticket{ Values=line.Split(',').Select(Int32.Parse).ToList() });
    //Console.WriteLine();
}

Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

var columns = fields.Count();
List<List<Field>> fieldPerColumn = new();

for (int j = 0; j < columns; j++)
{
    fieldPerColumn.Add(new List<Field>());
    fieldPerColumn[j].AddRange(fields);
    List<Field> toremove = new();
    for (int k = 0; k < tickets.Count; k++)
    {
        foreach (var f in fieldPerColumn[j])
        {
            if (toremove.Contains(f)) continue;
            if (!f.Valid(tickets[k].Values[j])) toremove.Add(f);
        }
        foreach (var item in toremove)
        {
            fieldPerColumn[j].Remove(item);
        }
    }
}

var countgood = 0;
while (fieldPerColumn.Any(x=>x.Skip(1).Any()))
{
    List<Field> toremove = new();
    var temp = fieldPerColumn.Count(x=>!x.Skip(1).Any());
    if (temp==countgood) break;

    foreach (var f in fieldPerColumn.Where(x=>!x.Skip(1).Any()))
    {
        toremove.Add(f.First());
    }

    foreach (var f in fieldPerColumn)
    {
        //Console.Write($"{f.Count()}   ");
        if (!f.Skip(1).Any()) continue;
        foreach (var item in toremove)
        {
            f.Remove(item);
        }
    }

    //Console.WriteLine();
}

long solution2=1;
for (int j = 0; j < fieldPerColumn.Count; j++)
{
    if (fieldPerColumn[j].First().Label.StartsWith("departure"))
        solution2*=tickets[0].Values[j];
}
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

bool ValidateNum(int number)
{
    for (int j = 0; j < limits.Count(); j+=2)
    {
        //Console.Write($" {number}<{limits[j]}?{number<limits[j]} {number}<={limits[j+1]}?{number<limits[j+1]}");
        if (number<limits[j]) continue;
        if (number<=limits[j+1]) return true;
    }
    return false;
}

public record Field
{
    public string Label {get;init;}
    public int Min1  {get;init;}
    public int Min2  {get;init;}
    public int Max1  {get;init;}
    public int Max2  {get;init;}
    public bool Valid(int value)
    {
        if (value >=Min1 && value <=Max1) return true;
        if (value >=Min2 && value <=Max2) return true;
        return false;
    }
}
public record Ticket
{
    public List<int> Values {get;init;}

}
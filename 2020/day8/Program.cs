using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=8;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day8.input").Select(x=>ParseLine(x.Split(" "))).ToArray();

int ic = 0;
int acc= 0;
Show($"{lines.Count()} instructions");
while (lines[ic].executed!=true)
{
    lines[ic].executed=true;
    Show($"{ic} {lines[ic].operation.ToString()} {lines[ic].operand}");
    switch (lines[ic].operation)
    {
        case Code.nop : ic+=1; continue;
        case Code.acc : acc+=lines[ic].operand; ic+=1; break;
        case Code.jmp : ic+=lines[ic].operand; break;
    }
    Show($"to -> {ic}");
}

var solution1=acc;
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");
Console.WriteLine($"");


var special = lines.Select((ins,ind)=> new {ins,ind})
                 .Where(x=>x.ins.operation is Code.jmp or Code.nop);
Console.WriteLine($"{special.Count()} specials");
foreach (var item in special)
{
    Console.Write($"test{item.ind}->");
    var backup = lines[item.ind];
    if (backup.operation==Code.jmp)
        lines[item.ind] = lines[item.ind] with {operation=Code.nop};
    else
        lines[item.ind] = lines[item.ind] with {operation=Code.jmp};

    foreach (var exec in lines)
    {
        exec.executed=false;
    }
    ic = 0;//lines.Count()-1;
    acc= 0;
    while (ic<lines.Count() && lines[ic].executed!=true)
    {
        lines[ic].executed=true;
        Show($"{ic} {lines[ic].operation.ToString()} {lines[ic].operand}");
        switch (lines[ic].operation)
        {
            case Code.nop : ic+=1; continue;
            case Code.acc : acc+=lines[ic].operand; ic+=1; break;
            case Code.jmp : ic+=lines[ic].operand; break;
        }
        Show($"to -> {ic}");
    }
    Console.WriteLine($"ended at {ic}/{lines.Count()} with value {acc}");
    if (ic==lines.Count())
    {
        var solution2=acc;
        Console.WriteLine($"Day{day} part 2 solution is : {solution2}");
        break;
    }
    lines[item.ind]=backup;
}
/*var jumps = lines.Select((ins,ind)=>{var next = ind+ins.operand; return new {ins,ind, next};})
                 .Where(x=>x.ins.operation is Code.jmp or Code.nop);
foreach (var item in jumps)
{
    Show($"jump {item.ins.operation==Code.jmp} from {item.ind} to {item.next}");
}
bool changed = false;
var backtrack = new Stack<Tuple<int,bool>>();
var origins = jumps.Where(x=>x.next==lines.Count());
foreach (var item in origins)
{
    lines[item.ind].curValue=acc;
    backtrack.Push(new Tuple<int, bool>(item.ind, changed));
}
Console.WriteLine($"{lines.Count()} instructions, {backtrack.Count()} possible ends");
while (ic>=0)
{
    Console.Write($"{ic},");
    ShowState(ic);
    bool setprev = false;
    lines[ic].executed=true;

    Show($"{ic} {lines[ic].operation.ToString()} {lines[ic].operand}");

    if (lines[ic].operation==Code.acc)
    {
        Show($"{ic} Increase acc {acc} + {lines[ic].operand} = {acc+lines[ic].operand}");
        acc+=lines[ic].operand;
    }
    
    if (ic==0) break;

    var cic = ic;
    origins = jumps.Where(x=>x.next==cic && x.ins.executed==false);
    foreach (var item in origins)
    {
        Show($"jump {item.ins.operation==Code.jmp} from {item.ind} to {item.next}");
    }

    if (lines[ic-1].operation!=Code.jmp)
    {
        ic-=1;
        setprev=true;
    }
    else if (!changed)
    {
        lines[ic-1].curValue=acc;
        backtrack.Push(new Tuple<int, bool>(ic-1,true));
        Show($"{ic} Inserted one possible change in {ic-1} with acc {lines[ic-1].curValue}");
    }

    if (origins.Any())
    {
        Show("have origins");
        var originDirect = origins.Where(x=>x.ins.operation==Code.jmp);
        if (originDirect.Any())
        {
            if (!setprev)
            {
                ic=originDirect.First().ind;
                originDirect = originDirect.Skip(1);
                setprev = true;
            }
            foreach (var item in originDirect)
            {
                lines[item.ind].curValue=acc;
                backtrack.Push(new Tuple<int, bool>(item.ind, changed));
            }
            Show($"{cic} Inserted {originDirect.Count()} possible changes in {string.Join(",",originDirect.Select(x=>x.ind.ToString()))} with values {string.Join(",",originDirect.Select(x=>lines[x.ind].curValue))}");
        }
        if (!changed)
        {
            originDirect = origins.Where(x=>x.ins.operation==Code.nop);
            foreach (var item in originDirect)
            {
                lines[item.ind].curValue=acc;
                backtrack.Push(new Tuple<int, bool>(item.ind, true));
            }
            Show($"{cic} Inserted {originDirect.Count()} possible changes in {string.Join(",",originDirect.Select(x=>x.ind.ToString()))} with values {string.Join(",",originDirect.Select(x=>lines[x.ind].curValue))}");
        }
    }

    if (!setprev)
    {
        if(!backtrack.Any())
        {
            Console.WriteLine("Error!!!");
            break;
        }
        Show($"{ic} having {acc}, and {changed} we backtrack");
        var next = backtrack.Pop();
        ic=next.Item1;
        changed=next.Item2;
        acc=lines[ic].curValue;
        Console.WriteLine($"Backtrack to {ic}, having {acc}, and {changed}");
    }
    //Show($"  previous {setprev}, index {ic}, acc {acc}, changed {changed}");
}*/

Instruction ParseLine (string[] line)=>
    new Instruction{
        operation = (Code)System.Enum.Parse(typeof(Code),line[0]),
        operand = Int32.Parse(line[1]),
        };

void Show(string message)
{
    //Console.WriteLine(message);
}

void ShowState(int ic)
{
    /*Show("");
    for (var i=0; i<lines.Count(); i++)
    {
        var current = i==ic?"* ":"  ";
        Show($"{i}{current} {lines[i].operation.ToString()} {lines[i].operand}");
    }
    Show($"Changed:{changed}, acc:{acc}");
    Show($"Backtrack state : {backtrack.Count} stored");
    var back = string.Join(",  ",backtrack.Select(x=>$"{x.Item1}=>{x.Item2}"));
    Show(back);*/
}
public enum Code {error, nop, acc, jmp,};
record Instruction
{
    public Code operation {get;init;}
    public int operand {get;init;}
    public bool executed =false;
    public int curValue=0;
}

using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=18;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day18.input");

long solution1=0;

foreach (var item in lines)
{
    //Console.WriteLine(DoOperation(item));
    solution1+=Int64.Parse(DoOperation(item));
}

Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

long solution2=0;
foreach (var item in lines)
{
    //Console.WriteLine();
    //Console.WriteLine($"{item} -> {DoOperationAD(item)}");
    solution2+=Int64.Parse(DoOperationAD(item));
}

Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

string DoOperation (string str)
{
    var lp = str.IndexOf(')');
    if (lp==-1) return Evaluate(str).ToString();
    var pp = str.LastIndexOf('(',lp);
    if (lp==-1 || pp==-1) Evaluate(str).ToString();
    var ev = Evaluate (str.Substring(pp+1,lp-pp-1)).ToString();
    //Console.Write($"{pp} || {lp} || {str.Substring(0,pp)} || {str.Substring(lp)} ->");
    var temp = str.Substring(0,pp) + ev + str.Substring(lp+1,str.Length-lp-1);
    return DoOperation(temp);
}

string DoOperationAD (string str)
{
    var lp = str.IndexOf(')');
    if (lp==-1) return EvaluateAD(str).ToString();
    var pp = str.LastIndexOf('(',lp);
    if (lp==-1 || pp==-1) EvaluateAD(str).ToString();
    var ev = EvaluateAD (str.Substring(pp+1,lp-pp-1)).ToString();
    var temp = str.Substring(0,pp) + ev + str.Substring(lp+1,str.Length-lp-1);
    //Console.WriteLine($"{pp} || {lp} || {str.Substring(0,pp)} || {str.Substring(lp)} -> {temp}");
    return DoOperationAD(temp);
}

long Evaluate (string ops)
{
    var items = ops.Split(' ');
    long op1=Int64.Parse(items[0]);
    long op2=0;
    Operation operation = Operation.none;
    for (int i=1; i<items.Length;i++)
    {
        if (i%2==0)
        {
            op2=Int64.Parse(items[i]);
            switch (operation)
            {
                case Operation.mul: op1*=op2; break;
                case Operation.sum: op1+=op2; break;
                default:break;
            }
        }
        else
        {
            if (items[i].StartsWith("+")) operation=Operation.sum;
            else operation=Operation.mul;
        }
    }
    return op1;
}

long EvaluateAD (string ops)
{
    var items = ops.Split(' ').Select(ParseItem).ToList();
    ShowAll(items);
    while ( items.Any(x=> {if (x is Operation o) if (o==Operation.sum) return true; return false;}))
    {
        for (int i = 0; i < items.Count(); i++)
        {
            if (items[i] is not Operation o) continue;
            if (o!=Operation.sum) continue;
            items[i-1]=(long)items[i-1]+(long)items[i+1];
            items.RemoveAt(i+1);
            items.RemoveAt(i);
            break;
        }
        ShowAll(items);
    }
    long op1=(long)items[0];
    long op2=0;
    for (int i=1; i<items.Count();i++)
    {
        if (i%2==0)
        {
            op2=(long)items[i];
            op1*=op2;
        }
        else
        {
        }
    }
    //Console.WriteLine($"->{op1}");
    return op1;
}

object ParseItem (string str)
{
    if (str.Contains("+"))
        return Operation.sum;
    if (str.Contains("*"))
        return Operation.mul;
    return Int64.Parse(str);
}

void ShowAll(List<object> collection)
{
    /*foreach (var item in collection)
    {
        if (item is Operation o)
        {
            var op = o==Operation.mul?"*":"+";
            Console.Write($" {op} ");
        }
        else Console.Write((long)item);
    }
    Console.WriteLine();*/
}
enum Operation {none, mul, sum};
using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=14;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day14.input");
var memory = new Dictionary<int,long>();
Int64 ones=0;
Int64 zeroes=0b111111111111111111111111111111111111;

foreach (var item in lines)
{
    ShowM($"LINE {item}");
    if (item.StartsWith("mask"))
    {
        var un = string.Join("",item.Substring(7).Select(x=>'X'==x?'0':x));
        var ze = string.Join("",item.Substring(7).Select(x=>'X'==x?'1':x));
        ones = Convert.ToInt64(un,2);
        zeroes = Convert.ToInt64(ze,2);
        Show("ones",ones);
        Show("zeroes",zeroes);
    }
    else
    {
        var value = Int64.Parse(item.Substring(item.IndexOf('=')+2));
        Show($"value from input  ",value);
        value|=ones;
        Show($"value after ones  ",value);
        value&=zeroes;
        Show($"value after zeroes",value);
        var pos = Int32.Parse(item.Substring(4,item.IndexOf(']')-4));
        if (!memory.ContainsKey(pos))
        {
            memory.Add(pos,value);
            Show($"memory[{pos}] new",value);
        }
        else
        {
            Show($"memory[{pos}] original",value);
            memory[pos]=value;
            Show($"memory[{pos}] modified",value);
        }
    }
}

long solution1=memory.Values.Sum();
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");
Console.WriteLine();

var memory2 = new Dictionary<long,long>();
ones=0;
var masksZ = new List<int>();
string mm="";

foreach (var item in lines)
{
    ShowM($"LINE {item}");
    //Console.WriteLine($"LINE {item}");
    if (item.StartsWith("mask"))
    {
        if (masksZ.Any()) masksZ.RemoveRange(0,masksZ.Count());
        var maskstr = item.Substring(7);
        mm=maskstr;
        //X as set to 0
        var un = string.Join("",maskstr.Select(x=>'X'==x?'0':x));
        Console.Write(1);
        ones = Convert.ToInt64(un,2);
        Show($"ones (x<-0)  ",ones);
        masksZ = maskstr.Select((x,i)=>new {x,i}).Where(x=>'X'==x.x).Select(x=>x.i).ToList();
    }
    else
    {
        var value = Int64.Parse(item.Substring(item.IndexOf('=')+2));
        Show($"value from input  ",value);
        var pos = Int64.Parse(item.Substring(4,item.IndexOf(']')-4));
        Show($"pos from input  ",pos);
        pos|=ones;
        Show($"pos after ones  ",pos);
        var strpos=Convert.ToString(pos,2);
        while(strpos.Length<36) strpos='0'+strpos;
        var limit = 1<<masksZ.Count;
        for (int i=0;i<limit;i++)
        {
            ShowM($"iteration {i}/{limit}");
            var mask=Convert.ToString(i,2);
            while(mask.Length<masksZ.Count) mask='0'+mask;
            int k=0;
            var m="";
            ShowM($"pos base  {strpos}");
            ShowM($"mask      {mask}");
            for (int j=0;j<36;j++)
            {
                if (!masksZ.Contains(j))
                    m+=strpos[j];
                else
                    m+=mask[k++];
                //ShowM($"    {j} {k} {m}");
            }
            ShowM("1234567890123456789012345678901234567890");
            ShowM($"{strpos}");
            ShowM($"{m}");
            ShowM($"{mm}");
            //Console.WriteLine(2);
            //Console.WriteLine($"{m}");
            var npos = Convert.ToInt64(m,2);
            //Console.Write(3);
            Show($"pos after X  ",npos);
            if (!memory2.ContainsKey(npos))
            {
                memory2.Add(npos,value);
                Show($"memory[{npos}] new",value);
            }
            else
            {
                Show($"memory[{npos}] original",value);
                memory2[npos]=value;
                Show($"memory[{npos}] modified",value);
            }
        }
    }
}

long solution2=memory2.Values.Sum();;
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

void Show(string label, long number)
{
    //Console.WriteLine($"{label} {number} {Convert.ToString(number,2)}");
}
void ShowM(string message)
{
    //Console.WriteLine(message);
}

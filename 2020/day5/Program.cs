using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=0;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\day5.input");
  /*          new List<string>() {"BFFFBBFRRR",
            "FFFBBBFRRR",
            "BBFFBBFRLL",
            "FBFBBFFRLR",
            };*/

var li = lines.Select(x=> new {board=x,row=CalculateRow(x), seat=CalculateSeat(x)})
              .Select(x=> new {board=x.board,row=x.row, seat=x.seat, id = CalculateID(x.row, x.seat)});

//foreach (var item in li)
{
    //Console.WriteLine($"{item.board} {item.row} {item.seat} {item.id}");
}

var solution1=li.Max(x=>x.id);
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

var ord = li.ToList();
ord.Sort((x,y)=>x.id.CompareTo(y.id));
var prev = ord[0].id;
for (int i = 1; i < ord.Count(); i++)
{
    if (ord[i].id==prev+2) break;
    prev = ord[i].id;
}

var solution2=prev+1;
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

int CalculateID (int row, int seat) => row*8+seat;
int CalculatePosition (IEnumerable<char> indexes, int min, int max)
{
    foreach (var item in indexes)
    {
        var top = (max-min)/2+min;
        var bottom = ((max+1-min)/2)+min;
        if (GoLow(item)) max=top;
        else min=bottom;
        //Console.Write($"{item}:{min},{max}*");
    }
    //Console.WriteLine($"->{min}");
    return min;
}
int CalculateRow(string board)=>CalculatePosition(board.Take(7), 0, 127);
int CalculateSeat(string board)=>CalculatePosition(board.Skip(7), 0, 7);
bool GoLow(char letter)=>
    letter switch 
    {
        'F' or 'L' => true,
        _ => false
    };
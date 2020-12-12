using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=12;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day12.input").Select(x=>{
    Enum.TryParse(x.Substring(0,1), out Direction dir);
    var val = Int32.Parse(x.Substring(1));
    if (dir is Direction.L or Direction.R) val/=90;
    return new {dir = dir, val = val};
    });

long north=0;
long south=0;
long east=0;
long west=0;
var cardinal = Direction.E;
foreach (var item in lines)
{
    switch (item.dir)
    {
      case Direction.E:east+=item.val; break;
      case Direction.N:north+=item.val; break;
      case Direction.W:west+=item.val; break;
      case Direction.S:south+=item.val; break;
      case Direction.L:cardinal= (Direction) (((int)cardinal+item.val+32)%4); break;
      case Direction.R:cardinal= (Direction) (((int)cardinal-item.val+32)%4); break;
      case Direction.F: switch (cardinal)
                    {
                        case Direction.E:east+=item.val; break;
                        case Direction.N:north+=item.val; break;
                        case Direction.W:west+=item.val; break;
                        case Direction.S:south+=item.val; break;
                    };break;
    };
    //Console.WriteLine ($"{item.dir} {item.val} {north} {south} {east} {west} {cardinal}");
}

long solution1=(Math.Abs(north-south)+ Math.Abs(east-west));
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");


var waypoint = new long[2] {10,1};
var position = new long[2] {0,0};
foreach (var item in lines)
{
    switch (item.dir)
    {
      case Direction.E:waypoint[0]+=item.val; break;
      case Direction.N:waypoint[1]+=item.val; break;
      case Direction.W:waypoint[0]-=item.val; break;
      case Direction.S:waypoint[1]-=item.val; break;
      case Direction.L:Rotate(false, item.val); break;
      case Direction.R:Rotate(true, item.val); break;
      case Direction.F: position[0]+=item.val*waypoint[0]; position[1]+=item.val*waypoint[1]; break;
    };
    //Console.WriteLine ($"{item.dir} {item.val} waypoint{{{waypoint[0]},{waypoint[1]}}} position{{{position[0]},{position[1]}}}");
}

//51437 too high
long solution2=Math.Abs(position[0])+ Math.Abs(position[1]);
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

void Rotate(bool clockwise, int val)
{
    //Console.Write($"{clockwise} {val} waypoint{{{waypoint[0]},{waypoint[1]}}}=>");
    val%=4;
    while (val>0)
    {
        var temp = waypoint[0];
        waypoint[0]=waypoint[1];
        waypoint[1]=temp;

        //Already changed the axes, need to change the sign
        if (clockwise) waypoint[1]*=-1; 
        else waypoint[0]*=-1;
        //Console.Write($"waypoint{{{waypoint[0]},{waypoint[1]}}},");
        val--;
    }
    //Console.WriteLine();
}

enum Direction {E=0,N=1,W=2,S=3,L,R,F};


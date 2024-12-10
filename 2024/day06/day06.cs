using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
var day=6;

Console.WriteLine($"Day{day} Advent of code 2024");

//var lines = File.ReadAllLines(@"../day06.test4");
var lines = File.ReadAllLines(@"../day06.input");
char[][] map = lines.Select(x=>x.ToCharArray()).ToArray();
int xguard=-1, yguard=-1;
bool found = false;
int ylim = map.Length;
int xlim = map[0].Length;
int visited = 1; int bucle = 0;

List<(int,int)> obstructions = new List<(int, int)>();
for (int y=0; !found && y<ylim;y++)
    for (int x=0; x<xlim; x++)
        if (map[y][x]=='^') { xguard=x; yguard=y; found = true; break;}
Console.WriteLine($"Guard in {yguard} {xguard}. Map is {map.Length} {map[0].Length}");

var facing = Direction.N;
map[yguard][xguard]='x';
while (inside(xguard, yguard)) {
    check(xguard,yguard,facing);
    (xguard,yguard,facing)=move(xguard,yguard,facing);
}
Console.WriteLine($"Guard in {yguard} {xguard} facing {facing}. Visited {visited}. Created {bucle} loops in {obstructions.Count} positions.");
//396 looops low
//4948 high
//1966 or 2097 not right Created 2097 loops in 1966 positions.

Direction rotate(Direction d)=>d switch {
        Direction.N=> Direction.E,
        Direction.S=> Direction.W,
        Direction.E=> Direction.S,
        Direction.W=> Direction.N
};
bool inside(int x, int y)=>x>=0&&x<xlim&&y>=0&&y<ylim;
(int,int) advance (int x, int y, Direction d) => d switch {
    Direction.N => (x,y-1),
    Direction.S => (x,y+1),
    Direction.E => (x+1,y),
    Direction.W => (x-1,y)
};
(int,int,Direction) move (int x, int y, Direction d) {
    int newx, newy;

    (newx, newy) = advance (x, y, d);

    if (inside(newx, newy)) {
        if (map[newy][newx]=='#') { return (x,y,rotate(d));}
        else if (map[newy][newx]!='x') {visited++;map[newy][newx]='x';}
    }
    return (newx,newy,d);
}
void check (int x, int y, Direction d) {
    int ox,oy;
    (ox,oy)=advance (x,y,d);
    if(!inside(ox,oy) || map[oy][ox]=='#' || map[oy][ox]=='x') return;
    char back = map[oy][ox];
    map[oy][ox]='#';
    Direction newd = rotate(d);

    List<Direction>[,] dirmap= new List<Direction>[ylim,xlim];
    for (int yy=0;yy<ylim;yy++)
        for (int xx=0; xx<xlim; xx++)
            dirmap[yy,xx]=new List<Direction>();

    long ss=0;
    int nx=x, ny=y;
    while (inside(nx,ny)) {
        int nnx, nny;
        (nnx,nny)=advance (nx,ny,newd);

        if (inside(nnx, nny)) {
            if (map[nny][nnx]=='#') newd=rotate(newd);
            else {
                nx=nnx;
                ny=nny;
            }
            if (dirmap[ny,nx].Contains(newd)) {
                bucle++;
                if (!obstructions.Contains((ox,oy)))
                    obstructions.Add((ox,oy));
                map[oy][ox]=back;
                return;
            }
            else {
                dirmap[ny,nx].Add(newd);
            }
        } else break;
    }
    map[oy][ox]=back;
    return;
}
//(int,int,Direction) move2 (int x, int y, Direction d) {
//    int newx, newy;
//
//    (newx, newy) = advance (x, y, d);
//
//    if (inside(newx, newy)) {
//        if (map[newy][newx]=='#') { return (x,y,rotate(d));}
//        if (!dirmap2[newy,newx].Contains(d)) dirmap2[newy,newx].Add(d);
//    }
//    return (newx,newy,d);
//}
//void print (){
//    for (int y=0; y<ylim;y++)
//    {
//        for (int x=0; x<xlim; x++)
//        {
//            Console.Write(map[y][x]);
//        }
//        Console.WriteLine();
//    }
//}
//void printsp (){
//    for (int y=0; y<2;y++)Console.WriteLine();
//}
//void printcorners(){
//    for (int i=0;i<corners.Count;i++)
//    {
//        Console.WriteLine($"Corner {i} is {corners[i].Item1},{corners[i].Item2}");
//    }
//}
//void cleanup(List<((int,int),Direction)> added) {
//    foreach (((int,int),Direction) t in added){
//        dirmap[t.Item1.Item1,t.Item1.Item2].Remove(t.Item2);
//    }
//}
enum Direction {none=-1,E=0,N=1,W=2,S=3};

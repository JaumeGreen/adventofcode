using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
var day=11;

Console.WriteLine($"Day{day} Advent of code 2020");

var lines = File.ReadAllLines(@"..\\day11.input").ToArray();
int rows = lines.Length;
int columns = lines[0].Length;
var seats = new int[rows,columns];
for (int i = 0; i < rows; i++)
{
    for (int j = 0; j < columns; j++)
    {
        if (lines[i][j]=='L')
            seats[i,j]=2; //directly seat everyone
        else
            seats[i,j]=0;
    }
}

var seatsActual = new int[rows,columns];
Copy(seats,seatsActual);
//ShowSeats(seatsActual,"actual");
bool different = true;
int cc=0;
while (different && cc<10)
{
    //cc++;
    var seatsTemp = new int[rows,columns];
    var seatsOcupation = new int[rows,columns];
    different = false;
    for (int i = 0; i < rows; i++)
    {
        for (int j = 0; j < columns; j++)
        {
            if (seatsActual[i,j]==0)
            { 
                seatsOcupation[i,j]=0;
                //Console.Write('_');
                continue;
            }
            var count = CountAdjacent(i,j);
            seatsOcupation[i,j]=count;
            if (seatsActual[i,j]==2 && count>=4)
            {
                //Console.Write('x');
                seatsTemp[i,j]=1;
                different = true;
            }
            else if (seatsActual[i,j]==1 && count==0)
            {
                //Console.Write('|');
                seatsTemp[i,j]=2;
                different = true;
            }
            else seatsTemp[i,j]=seatsActual[i,j];
        }
    }
    //Console.WriteLine(different);
    //ShowSeats(seatsTemp,"seatsTemps");
    Copy(seatsTemp,seatsActual);
    //ShowSeatsDirect(seatsOcupation,"ocupació");
    //ShowSeats(seatsActual,"actual");
}

long solution1=0;
for (int i = 0; i < rows; i++)
{
    for (int j = 0; j < columns; j++)
    {
        if (seatsActual[i,j]==2) solution1++;
    }
}
Console.WriteLine($"Day{day} part 1 solution is : {solution1}");

Copy(seats,seatsActual);
//ShowSeats(seatsActual,"actual");
different = true;
cc=0;
while (different && cc<10)
{
    //cc++;
    var seatsTemp = new int[rows,columns];
    var seatsOcupation = new int[rows,columns];
    different = false;
    for (int i = 0; i < rows; i++)
    {
        for (int j = 0; j < columns; j++)
        {
            if (seatsActual[i,j]==0)
            { 
                seatsOcupation[i,j]=0;
                continue;
            }
            var count = CountVisible(i,j);
            seatsOcupation[i,j]=count;
            if (seatsActual[i,j]==2 && count>=5)
            {
                seatsTemp[i,j]=1;
                different = true;
            }
            else if (seatsActual[i,j]==1 && count==0)
            {
                seatsTemp[i,j]=2;
                different = true;
            }
            else seatsTemp[i,j]=seatsActual[i,j];
        }
    }
    Copy(seatsTemp,seatsActual);
}

long solution2=0;
for (int i = 0; i < rows; i++)
{
    for (int j = 0; j < columns; j++)
    {
        if (seatsActual[i,j]==2) solution2++;
    }
}
Console.WriteLine($"Day{day} part 2 solution is : {solution2}");

int CountAdjacent(int i,int j)
{
    int result = 0;
    //Console.WriteLine("");
    for (int k = i-1; k <= i+1; k++)
    {
        for (int l = j-1; l <= j+1; l++)
        {
            if (k==i && l==j) continue;
            if (k<0 || k>=rows) continue;
            if (l<0 || l>=columns) continue;
            //char m = seatsActual[k,l]==0?'.':seatsActual[k,l]==1?'L':'#';
            //Console.Write(m);
            if (seatsActual[k,l]==2) result++;
        }        
    //Console.WriteLine("");
    }
    //Console.Write(result);
    return result;
}

void ShowSeats(int[,] seatstoshow, string title)
{
    Console.WriteLine("");
    Console.WriteLine(title);
    for (int i = 0; i < rows; i++)
    {
        for (int j = 0; j < columns; j++)
        {
            char k = seatstoshow[i,j]==0?'.':seatstoshow[i,j]==1?'L':'#';
            Console.Write(k);
        }
        Console.WriteLine("");
    }
}

void ShowSeatsDirect(int[,] seatstoshow, string title)
{
    Console.WriteLine("");
    Console.WriteLine(title);
    for (int i = 0; i < rows; i++)
    {
        for (int j = 0; j < columns; j++)
        {
            Console.Write(seatstoshow[i,j]);
        }
        Console.WriteLine("");
    }
}

void Copy(int[,] or, int[,] des)
{
    for (int i = 0; i < rows; i++)
        for (int j = 0; j < columns; j++)
            des[i,j] = or[i,j];
}

int CountVisible(int i,int j)
{
    int result = 0;
    for (int k = -1; k <= +1; k++)
    {
        for (int l = -1; l <= +1; l++)
        {
            if (k==0 && l==0) continue;
            var row = i+k;
            var column = j+l;
            while (true)
            {
                if (row<0 || row>=rows) break;
                if (column<0 || column>=columns) break;
                if (seatsActual[row,column]==2) {result++; break;}
                if (seatsActual[row,column]==1) break;
                row+=k;
                column+=l;
            }
        }        
    }
    return result;
}

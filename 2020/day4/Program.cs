using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

Console.WriteLine("Day4 Advent of code 2020");

var lines = File.ReadAllText(@"..\day4.input")
            .Replace("\n\n",",")
            .Replace("\n"," ")
            .Split(",",StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries)
            .Select(x=> x.Split(" ",StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries))
            ;
var answer1 = lines.Count(x=>x.Length==8 || (x.Length==7 && !x.Any(y=>y.StartsWith("cid"))));
Console.WriteLine($"Day4 part 1 solution is : {answer1}");

var passports = lines.Select(x=> x.ToDictionary(x=>x.Substring(0,3), y=>y.Substring(4)));
bool ValidateDict(Dictionary<string,string> dic)
{
    //Console.WriteLine("");
    //foreach(var kvp in dic)
    //    Console.Write($"{kvp.Key}:{kvp.Value} ");
    //Console.WriteLine("");
    if (dic.Keys.Count()==8 || ( dic.Keys.Count()==7 && !dic.ContainsKey("cid")))
    {//too lazy to negate
    }
    else return false;

    //Console.WriteLine("right number of keys");

    int byr;
    int iyr;
    int eyr;
    bool valid = Int32.TryParse(dic["byr"],out byr);
    valid &= Int32.TryParse(dic["iyr"],out iyr);
    valid &= Int32.TryParse(dic["eyr"],out eyr);
    
    if (!valid) return false;
    if (byr <1920 || byr>2002) return false;
    //Console.WriteLine("valid byr");
    if (iyr <2010 || iyr>2020) return false;
    //Console.WriteLine("valid iyr");
    if (eyr <2020 || eyr>2030) return false;
    //Console.WriteLine("valid years");

    if (!dic["hgt"].EndsWith("cm") && !dic["hgt"].EndsWith("in"))
        return false;

    //Console.WriteLine("valid unit of height");
    int hgt;
    valid = Int32.TryParse(dic["hgt"].Substring(0,dic["hgt"].Length-2),out hgt);
    if (!valid) return false;
    //Console.WriteLine($"height {hgt}");
    if (dic["hgt"].EndsWith("cm") && (hgt <150 || hgt>193)) return false;
    if (dic["hgt"].EndsWith("in") && (hgt <59 || hgt>76)) return false;
    //Console.WriteLine("valid height");

    var exp = new Regex("#[0-9a-f]{6}");
    if (!exp.IsMatch(dic["hcl"]) || dic["hcl"].Length!=7) return false;
    //Console.WriteLine("valid hair colours");

    var ecl = new string[]{"amb", "blu", "brn", "gry", "grn", "hzl", "oth"};
    if (!ecl.Contains(dic["ecl"])) return false;
    //Console.WriteLine("valid eye colours");

    exp = new Regex("[0-9]{9}");
    if (!exp.IsMatch(dic["pid"]) || dic["pid"].Length!=9) return false;
    //Console.WriteLine("valid passport id");

    return true;    
};

Console.WriteLine($"Day4 part 2 solution is : {passports.Count(ValidateDict)}");

my int64 $result =0;
my int64 $result2 =0;

my %colours = red=>Int(12), green=>Int(13), blue=>Int(14);


for '2023/day02.input'.IO.lines -> $line {
    my @what = split(" ",$line);
    my $gamenumber = Int(@what[1]~~/\d*/);
    @what = @what[2..*]:delete; #remove first 2 elements 
    my $good=True;
    for @what -> $num, $col {
        $good=False if Int(%colours{$col~~/\w+/}) < Int($num);
        last if not($good);
    }
    $result+=$gamenumber if $good;
}

for '2023/day02.input'.IO.lines -> $line {
    my @what = split(" ",$line);
    my $gamenumber = Int(@what[1]~~/\d*/);
    @what = @what[2..*]:delete; #remove first 2 elements 
    my %linecol;
    for @what -> $num, $col {
        if %linecol{$col~~/\w+/}:exists {
            %linecol{$col~~/\w+/}=Int($num) if Int(%linecol{$col~~/\w+/}) < Int($num);;
        } else {
            %linecol{$col~~/\w+/}=Int($num);
        }
    }
    my $power = 1;
    for %linecol.kv -> $key, $val { $power*=$val }

    $result2+=$power;
}

say "part 1 "~$result;
say "part 2 "~$result2;

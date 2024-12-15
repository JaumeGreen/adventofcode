use MONKEY-SEE-NO-EVAL;
my $result =0;
my $result2 =0;

my @lines =  '2024/day03.input'.IO.lines;
my $regex = rx/ 'mul('\d*','\d*')'|'do()'|'don\'t()'/;
my $enabled = True;

for @lines ->$line {
    my @found = $line.match($regex, :exhaustive);
    for @found -> $find {
        if $find eq 'do()' {$enabled = True;}
        elsif $find eq 'don\'t()' {$enabled = False;}
        elsif $enabled {$result += EVAL $find;}        
    }
}

say $result;
sub mul(int64 $a, int64 $b) {
    return $a*$b;
}

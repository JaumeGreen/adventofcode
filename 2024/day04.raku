my $result =0;
my $result2 =0;

my @lines =  '2024/day04.input'.IO.lines;
my @mapt = @lines.map(->$l { $l.split("",:skip-empty) } );
my $regex = rx/ 'XMAS'|'SAMX'/;
my @found = @lines.match($regex, :exhaustive);
my $maxi=@mapt[0].elems;
my $maxj=@mapt.elems;
$result=@found.elems;

sub findletter (str $letter, int $i, int $j) {
    if $i < 0 || $j < 0 || $i >= $maxi || $j>= $maxj {return False;}
    if @mapt[$j][$i] eq $letter {return True;}
    return False;
}

for [0..^$maxj] -> $j {
    for [0..^$maxi] ->$i {
        if @mapt[$j][$i] eq 'X' {
            if findletter('M', $i-1, $j-1) && findletter('A', $i-2, $j-2) && findletter('S', $i-3, $j-3) {$result++;}
            if findletter('M', $i-1, $j+1) && findletter('A', $i-2, $j+2) && findletter('S', $i-3, $j+3) {$result++;}
            if findletter('M', $i+1, $j-1) && findletter('A', $i+2, $j-2) && findletter('S', $i+3, $j-3) {$result++;}
            if findletter('M', $i+1, $j+1) && findletter('A', $i+2, $j+2) && findletter('S', $i+3, $j+3) {$result++;}
            if findletter('M', $i, $j-1) && findletter('A', $i, $j-2) && findletter('S', $i, $j-3) {$result++;}
            if findletter('M', $i, $j+1) && findletter('A', $i, $j+2) && findletter('S', $i, $j+3) {$result++;}
        }
    }
}

say $result;

for [0..^$maxj] -> $j {
    for [0..^$maxi] ->$i {
        if @mapt[$j][$i] eq 'A' {
            my $found;
            $found = 0;
            if findletter('M', $i-1, $j-1) && findletter('S', $i+1, $j+1) {$found++;}
            if findletter('M', $i+1, $j-1) && findletter('S', $i-1, $j+1) {$found++;}
            if findletter('M', $i+1, $j+1) && findletter('S', $i-1, $j-1) {$found++;}
            if findletter('M', $i-1, $j+1) && findletter('S', $i+1, $j-1) {$found++;}
            if $found > 1 {$result2++;}
        }
    }
}
say $result2;

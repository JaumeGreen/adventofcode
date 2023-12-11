my $result =0;
my int64 $result2 =0;

my @lines =  '2023/day09.test'.IO.lines;

for @lines -> $line {
    my @line = $line.split(" ",:skip-empty);
    my @instabilities;


    while @line.SetHash.elems!=1 {
        @instabilities.push(@line.clone);
        for 1..^@line.elems -> $i {
            @line[$i-1]=@line[$i]-@line[$i-1];
        }
        @line = @line[0..*-2]:delete; #remove last element
    }
    @instabilities.push(@line.clone);
    
    my $val=0;
    my $valleft=0;

    for 1..@instabilities.elems -> $i {
        my $row = @instabilities.elems-$i;
        $val+=@instabilities[$row][*-1];
        $valleft=@instabilities[$row][0]-$valleft;
    }

    $result+=$val;
    $result2+=$valleft;
}

say "part 1 "~$result;
say "part 2 "~$result2;

my $result =0;
my int64 $result2 =0;
my $debug = False;
#my $debug = True;

my @lines =  '2023/day11.input'.IO.lines;
my @map = @lines.map(->$l { $l.split("",:skip-empty) } );

my @extrarows;
for 0..^@map.elems {
    @extrarows.push($_) if not @map[$_].contains("#");
}
my @extracolumns;
for 0..^@map[0].elems -> $j {
    my $found = False;
    for 0..^@map.elems -> $i {
        $found=True  if @map[$i][$j]==="#";
    }
    @extracolumns.push($j) if not $found;
}
say @extrarows if $debug;
say @extracolumns if $debug;

sub fixrow ($row) {
    my $inc = 0;
    for @extrarows {
        $inc++ if $row > $_;
    }
    return $row+$inc;
}
sub fixcolumns ($column) {
    my $inc = 0;
    for @extracolumns {
        $inc++ if $column > $_;
    }
    return $column+$inc;
}
my @galaxies;
for 0..^@map.elems -> $i {
    for 0..^@map[0].elems -> $j {
        @galaxies.push([fixrow($i),fixcolumns($j)]) if @map[$i][$j]==="#";
    }
}
say @galaxies if $debug;
sub distance ($a, $b) {
    return abs($a[0]-$b[0])+abs($a[1]-$b[1]);
}
for 0..^@galaxies.elems -> $i {
    for ($i+1)..^@galaxies.elems -> $j {
        $result+=distance(@galaxies[$i],@galaxies[$j]);
    }
}

my $space = 1000000-1; #1 already exists. i.e. 1->10 = 9 more;
sub fixrow2 ($row) {
    my $inc = 0;
    for @extrarows {
        $inc++ if $row > $_;
    }
    return $row+($inc*$space);
}
sub fixcolumns2 ($column) {
    my $inc = 0;
    for @extracolumns {
        $inc++ if $column > $_;
    }
    return $column+($inc*$space);
}
my @galaxies2;
for 0..^@map.elems -> $i {
    for 0..^@map[0].elems -> $j {
        @galaxies2.push([fixrow2($i),fixcolumns2($j)]) if @map[$i][$j]==="#";
    }
}
say @galaxies2 if $debug;
for 0..^@galaxies2.elems -> $i {
    for ($i+1)..^@galaxies2.elems -> $j {
        $result2+=distance(@galaxies2[$i],@galaxies2[$j]);
    }
}

say "part 1 "~$result;
say "part 2 "~$result2;

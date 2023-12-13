my $result =0;
my $result2 =0;

my @lines =  '2023/day13.input'.IO.lines;
my @map;
my @amap;
my @amaps;
my @maps;
for @lines {
    if $_==="" {
        @maps.push(@map.clone);
        @amaps.push(@amap.clone);
        @map=[];
        @amap=[];
        next;
    }
    @map.push($_);
    @amap.push($_.split("",:skip-empty));
}
@maps.push(@map.clone);
@amaps.push(@amap.clone);
#say @maps[0];
for @maps -> $map {
    #my $map=@maps[1];
    my $ysize = $map.elems;
    my $xsize = $map[0].chars;

    my $good = False;
    my $ref = -1;
    my $i=1;
    $i++;
    for 1..^$ysize -> $i {
        if $map[$i-1] eq $map[$i] {
            #check the rest of the simmetries
            $good = True;
            for 1..^($ysize-$i) -> $j {
                last if $i-1-$j < 0;
                if $map[$i+$j] ne $map[$i-1-$j] {
                    $good = False;
                    last;
                }
            }
            $ref = $i if $good;
            last if $good;
        }
    }
    if $good {
        #say "reflection on row ",$ref;
        $result+=($ref)*100;
    } else {
        $good = False;
        my $ref = -1;
        for 1..^$xsize -> $i {
            my $eq = True;
            for 0..^$ysize -> $j {
                if $map[$j].substr($i-1,1) ne $map[$j].substr($i,1) {
                    $eq=False;
                    last;
                }
            }
            if $eq {
                #check the rest of the simmetries
                $good = True;
                for 1..^($xsize-$i) -> $j {
                    $eq = True;
                    for 0..^$ysize -> $k {
                        last if $i-1-$j < 0;
                        if $map[$k].substr($i+$j,1) ne $map[$k].substr($i-1-$j,1) {
                            $eq=False;
                            last;
                        }
                    }
                    if not $eq {
                        $good = False;
                        last;
                    }
                }
                $ref = $i if $good;
                last if $good;
            }
        }
        if $good {
            #say "reflection on column ",$ref;
            $result+=$ref;
        }
    }
}

say "part 1 "~$result;

#Sad part is that I wrote the above code with less bugs (and less time solving problems) than the one below.
#If I run the below code with $maxDiff=0 it solves the first part, but I'm leaving the previous alive.

sub compareRows($map,$row1,$row2) {
    my $diff = 0;
    for 0..^$map[$row1].elems -> $i {
        $diff++ if $map[$row1][$i] ne $map[$row2][$i];
    }
    return $diff;
}
sub compareColumns($map,$col1,$col2) {
    my $diff = 0;
    for 0..^$map.elems -> $i {
        $diff++ if $map[$i][$col1] ne $map[$i][$col2];
    }
    return $diff;
}

for @amaps -> $amap {
    my $ysize = $amap.elems;
    my $xsize = $amap[0].elems;

    my $ref = -1;
    my $diff = 0;
    my $maxDiff = 1;
    my $i=1;
    $i++;
    for 1..^$ysize -> $i {
        $diff = compareRows($amap,$i-1,$i);
        #say "Row $i has $diff";
        next if $diff > $maxDiff;
        #say "cnt";

        for 1..^($ysize-$i) -> $j {
            last if $i-1-$j < 0;
            $diff += compareRows($amap,$i+$j,$i-1-$j);
            #say "    after "
            last if $diff > $maxDiff;
        }
        
        $ref = $i if $diff == $maxDiff;
        last if $diff == $maxDiff;
    }
    if $diff == $maxDiff {
        #say "reflection on row ",$ref," ",($ref)*100;
        $result2+=($ref)*100;
    } else {
        $ref = -1;
        
        for 1..^$xsize -> $i {
            $diff = compareColumns($amap,$i-1,$i);
            next if $diff > $maxDiff;

            for 1..^($xsize-$i) -> $j {
                last if $i-1-$j < 0;
                $diff += compareColumns($amap,$i+$j,$i-1-$j);
                last if $diff > $maxDiff;
            }
            
            $ref = $i if $diff == $maxDiff;
            last if $diff == $maxDiff;
        }
        if $diff == $maxDiff {
            #say "reflection on column ",$ref," ",$ref;
            $result2+=$ref;
        }
    }
}
say "part 2 "~$result2;

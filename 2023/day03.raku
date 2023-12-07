my int64 $result =0;
my int64 $result2 =0;

sub toarr($a) { $a.trim.split("",:skip-empty) };
my @map =  '2023/day03.input'.IO.lines.map(&toarr);

my $factor = @map[0].elems;
my %numbers is SetHash;

for 0..^@map.elems -> $i {
    for 0..^@map[0].elems -> $j {
        #say @map[$i;$j],$i,$j when not "1234567890.".contains(@map[$i;$j]);
        if not "1234567890.".contains(@map[$i;$j]) {
            for $i-1..$i+1 ->$y {
                for $j-1..$j+1 ->$x {
                    next if $y < 0 or
                        $y >= @map.elems or
                        $x  < 0 or 
                        $x >= @map[0].elems;
                    if "1234567890".contains(@map[$y;$x]) {
                        my $key = $y*$factor+$x;
                        #say $y,",",$x," = ",$key," -> ", %numbers{$key}, (not %numbers{$key});
                        # it's a number. check the limits
                        if not %numbers{$key} {
                            #find total positions
                            my $k = $x;
                            $k-- while $k>=0 && "1234567890".contains(@map[$y;$k]);
                            my $start = ++$k;
                            %numbers{$y*$factor+$k++}++ while $k < @map[0].elems and "1234567890".contains(@map[$y;$k]);
                            my $end = --$k;
                            #get number
                            my $part = Int(@map[$y;$start..$end].join);
                            #say $part;
                            #say %numbers.keys.sort," ", %numbers{22}," ", %numbers{23};
                            $result += Int($part);
                        } #Otherwise it already exists
                    }
                }
            }
        }
    }
}

for 0..^@map.elems -> $i {
    for 0..^@map[0].elems -> $j {
        #say @map[$i;$j],$i,$j when not "1234567890.".contains(@map[$i;$j]);
        if "*".contains(@map[$i;$j]) {
            my %numbers = SetHash.new;
            my @gears;
            for $i-1..$i+1 ->$y {
                for $j-1..$j+1 ->$x {
                    next if $y < 0 or
                        $y >= @map.elems or
                        $x  < 0 or 
                        $x >= @map[0].elems;
                    if "1234567890".contains(@map[$y;$x]) {
                        my $key = $y*$factor+$x;
                        #say $y,",",$x," = ",$key," -> ", %numbers{$key}, (not %numbers{$key});
                        # it's a number. check the limits
                        if not %numbers{$key} {
                            #find total positions
                            my $k = $x;
                            $k-- while $k>=0 && "1234567890".contains(@map[$y;$k]);
                            my $start = ++$k;
                            %numbers{$y*$factor+$k++}++ while $k < @map[0].elems and "1234567890".contains(@map[$y;$k]);
                            my $end = --$k;
                            #get number
                            my $part = Int(@map[$y;$start..$end].join);
                            #say $part;
                            #say %numbers.keys.sort," ", %numbers{22}," ", %numbers{23};
                            @gears.push(Int($part));
                        } #Otherwise it already exists
                    }
                }
            }
            $result2+=@gears[0]*@gears[1] when @gears.elems==2;
        }
    }
}

say "part 1 "~$result;
say "part 2 "~$result2;

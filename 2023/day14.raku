my $result =0;
my $result2 =0;

enum Legend <Empty Roll Fix>;
my @lines =  '2023/day14.input'.IO.lines;
#my @mapt = @lines.map(->$l { $l.split("",:skip-empty) } );
my @map;
my $i=0;
for @lines -> $line {
    for 0..^$line.chars -> $j {
        given $line.substr($j,1) {
            when "O" {
                @map[$i][$j] = Roll;
            }
            when "#" {
                @map[$i][$j] = Fix;
            }
            default {
                @map[$i][$j] = Empty;
            }
        }
    }
    $i++;
}

my $numrows = @map.elems;
my $numcols = @map[0].elems;

sub moveUp (@map) {
    for 0..^$numrows -> $i {
        for 0..^$numcols -> $j {
            #find movable thing
            next if  Roll != @map[$i][$j];
            #say "found at $i $j";
            #move up until it moves no more.
            my $pos = $i;
            for 1..$i -> $k {
                if Empty ==  @map[$i-$k][$j] {
                    $pos-- ;
                }
                else {
                    last;
                }
            }
            @map[$i][$j]=Empty;
            @map[$pos][$j]=Roll;
            #say "moved from $i to $pos";
        }
    }
    return @map; 
}
sub moveLeft (@map) {
    for 0..^$numrows -> $i {
        for 0..^$numcols -> $j {
            #find movable thing
            next if  Roll != @map[$i][$j];
            #move left until it moves no more.
            my $pos = $j;
            for 1..$j -> $k {
                if Empty ==  @map[$i][$j-$k] {
                    $pos-- ;
                }
                else {
                    last;
                }
            }
            @map[$i][$j]=Empty;
            @map[$i][$pos]=Roll;
        }
    }
    return @map;
}
sub moveDown (@map) {
    for 1..$numrows -> $i {
        for 0..^$numcols -> $j {
            #find movable thing
            next if  Roll != @map[$numrows-$i][$j];
            #move down until it moves no more.
            my $pos = $numrows-$i;
            for $numrows-$i+1..^$numrows -> $k {
                if Empty ==  @map[$k][$j] {
                    $pos++ ;
                }
                else {
                    last;
                }
            }
            @map[$numrows-$i][$j]=Empty;
            @map[$pos][$j]=Roll;
        }
    }
    return @map;
}
sub moveRight (@map) {
    for 0..^$numrows -> $i {
        for 1..$numcols -> $j {
            #find movable thing
            next if  Roll != @map[$i][$numcols-$j];
            #move right until it moves no more.
            my $pos = $numcols-$j;
            for $numcols-$j+1..^$numcols -> $k {
                if Empty ==  @map[$i][$k] {
                    $pos++ ;
                }
                else {
                    last;
                }
            }
            @map[$i][$numcols-$j]=Empty;
            @map[$i][$pos]=Roll;
        }
    }
    return @map;
}
sub cicle(@map) {
    @map = moveUp(@map);
    @map = moveLeft(@map);
    @map = moveDown(@map);
    @map = moveRight(@map);
    return @map;
}
sub calculateNorth (@map) {
    my $val=0;
    for 0..^$numrows -> $i {
        for 0..^$numcols -> $j {
            $val+=$numrows-$i if Roll == @map[$i][$j];
            #say "Add {$numrows-$i} because @map[$i][$j]" if Roll == @map[$i][$j];
        }
        #say "line $i acc $val";
    }
    return $val;
}

$result=calculateNorth(moveUp(@map));

@map=[];
$i=0;
for @lines -> $line {
    for 0..^$line.chars -> $j {
        given $line.substr($j,1) {
            when "O" {
                @map[$i][$j] = Roll;
            }
            when "#" {
                @map[$i][$j] = Fix;
            }
            default {
                @map[$i][$j] = Empty;
            }
        }
    }
    $i++;
}

sub strmap (@map) {
    @map.Str.subst("Empty",".",:g).subst("Fix","#",:g).subst("Roll","O",:g).subst(" ","",:g);
}

sub drawmap (@map) {
    for @map {
        say $_.subst("Empty",".",:g).subst("Fix","#",:g).subst("Roll","O",:g).subst(" ","",:g);
    }
}

sub keymap (@map) {
    my $val=0;
    for 0..^$numrows -> $i {
        for 0..^$numcols -> $j {
            given @map[$i][$j] {
                when Roll {
                    $val+=100*$j*($i+1);
                }
                when Fix {
                    $val+=1*$j*($i+1);
                }
                default {
                }
            }
        }
        $val*=10000;
    }
    return $val;
}
#for 1..^1000000000 { #already done 1;
my $iterations = 1000000000;
#my @thing = @map;
my %dict = SetHash.new;
my  @dict;
my $pos = 0;

for 0..^400 { 
    @map = cicle(@map);
    #say "$pos {%dict{keymap(@map)}:exists} && {$pos < 200} {keymap(@map)}";
    last if %dict{keymap(@map)}:exists; #fake repeats under this value
    $pos++;
    %dict{keymap(@map)} = $pos;
    @dict.push(calculateNorth(@map));
}

#drawmap(@map);
# I'm at $pos, previous repeat is at %dict{$key}
# total $pos-%dict{$key}-1
# so total-%dict{$key} to reach the first repeat /cicle length then find the right one
#say "repeat in pos {%dict{keymap(@map)}} for $iterations after reaching $pos";
$iterations-=%dict{keymap(@map)};
my $cicle = $pos-%dict{keymap(@map)}-1;
#say "the cicle is $cicle long for $iterations, and that leaves us a remainder of {$iterations mod $cicle}";
$iterations = $iterations mod $cicle ;
#say "initial pos was %dict{keymap(@map)}, current pos is {%dict{keymap(@map)}+$iterations}";
$iterations = %dict{keymap(@map)}+$iterations+1;
#say "geting the pos around $iterations -> {$iterations-1}, $iterations, {$iterations+1}";
#say "results can be -1 {@dict[$iterations-1]}" if @dict[$iterations-1].defined;
#say "results can be =0 {@dict[$iterations]}"if @dict[$iterations].defined;
#say "results can be +1 {@dict[$iterations+1]}"if @dict[$iterations+1].defined;
#say "result is 104815";
#for %dict{keymap(@map)}..^$pos -> $i {
#    #say @dict[$i];
#    say "[$i]={@dict[$i]} vs 104815" if @dict[$i].defined;
#}
$result2=@dict[$iterations] if @dict[$iterations].defined;

say "part 1 "~$result;
say "part 2 "~$result2;

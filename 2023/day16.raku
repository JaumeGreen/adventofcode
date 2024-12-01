my $result =0;
my $result2 =0;

my @lines =  '2023/day16.test'.IO.lines;
my @map = @lines.map(->$l { $l.split("",:skip-empty) } );

enum Cardinal <Left Up Right Down None>;
my @dirs;
@dirs.push([Right, 0, 0]); # initial 

my $ysize = @map.elems;
my $xsize = @map[0].elems;


sub getNextDir($curdir, $y, $x) {
    #my $curdir = $d;
    my $tile = @map[$y][$x];
    given $tile {
        when "|" {
            given $curdir {
                when Left {
                    return [Up,Down];
                }
                when Right {
                    return [Up,Down];
                }
                when Up {
                    return Up;
                }
                when Down {
                    return Down;
                }
            }
        }
        when "-" {
            given $curdir {
                when Left {
                    return Left;
                }
                when Right {
                    return Right;
                }
                when Up {
                    return [Left,Right];
                }
                when Down {
                    return [Left,Right];
                }
            }
        }
        when "/" {
            given $curdir {
                when Left {
                    return Down;
                }
                when Right {
                    return Up;
                }
                when Up {
                    return Right;
                }
                when Down {
                    return Left;
                }
            }
        }
        when "\\" {
            given $curdir {
                when Left {
                    return Up;
                }
                when Right {
                    return Down;
                }
                when Up {
                    return Left;
                }
                when Down {
                    return Right;
                }
            }
        }
        default {
            return $curdir;
        }
    }
}

sub moveLight($curdir, $y, $x) {
    my @cd;
    #evaluate on current cell
    #my $curdir = $d;
    @cd = getNextDir($curdir, $y, $x);
    my @points;
    for @cd {
        my $cx = $x;
        my $cy = $y;
        #move to next cell
        $cx-- if $_ == Left;
        $cx++ if $_ == Right;
        $cy-- if $_ == Up;
        $cy++ if $_ == Down;
        @points.push([$_,$cy,$cx]);
    }
    return @points;
}

sub isValidPos($y, $x) {
    return $y < $ysize &&           $x < $xsize &&           $y >= 0 &&           $x >= 0;
}

my %occupy;
my %diris;
my $count;
repeat until @dirs.elems==0 {
    $count++;
    my @next;
    #my $d = Right;
    #my $y=0;
    #my $x=0;
    say "[{@dirs.elems}] <- {@dirs}";
    for @dirs -> [$d, $y, $x] {
        say "  $d $y $x";
        my $nd;my $ny;my $nx;
        %occupy{$y*$xsize+$x}++;
        %diris{$y*$xsize+$x}++;
        my @foll = moveLight($d, $y, $x);
        for @foll -> [$nd, $ny, $nx] {
            say "   -> $nd $ny $nx";
            @next.push([$nd,$ny,$nx]) if isValidPos($ny,$nx);
        }
    }
    @dirs = @next;
    last if $result == %occupy.elems;
    $result = %occupy.elems;
    last when $count>=100;
}

for 0..^$ysize -> $y {
    my $line="";
    for 0..^$xsize -> $x {
        if %occupy{$y*$xsize+$x} {
            $line = $line~"#";
        } else {
            $line = $line~".";
        }
    }    
    say $line;
}
#$result = %occupy.elems;

say "part 1 "~$result;
say "part 2 "~$result2;

my $result =0;
my $result2 =0;

my @lines =  '2023/day10.input'.IO.lines;
my @map = @lines.map(->$l { $l.split("",:skip-empty) } );

my $ysize = @map.elems;
my $xsize = @map[0].elems;
my $y;
my $x;

for 0..^$ysize -> $row {
    for 0..^$xsize -> $column {
        if @map[$row][$column]==='S' {
            $y=$row;
            $x=$column;
            last;
        }
    }
}

say $x," ", $y," ", $xsize," ", $ysize;
enum Cardinal <Left Up Right Down None>;
# We have the Start, we can navigate
sub getDir ($x, $y) {
    if $x > 0 {
        my $next = @map[$y][$x-1];
        if $next==='F' ||
        $next==='L' ||
        $next==='-' {
            return Left;
        }
    }
    if $x < $xsize-1 {
        my $next = @map[$y][$x+1];
        if $next==='7' ||
        $next==='J' ||
        $next==='-' {
            return Right;
        }
    }
    if $y > 0 {
        my $next = @map[$y-1][$x];
        if $next==='F' ||
        $next==='7' ||
        $next==='|' {
            return Up;
        }
    }
    if $y < $ysize-1 {
        my $next = @map[$y][$x+1];
        if $next==='L' ||
        $next==='J' ||
        $next==='|' {
            return Down;
        }
    }
}
enum Colors <Black Red Blue White>;
my @colorMap;
for 0..$ysize -> $row { #one line more, explained below
    for 0..^$xsize -> $column {
        @colorMap[$row;$column] = White;
    }
}
@colorMap[$y;$x] = Black;

sub getNextDir ($x, $y, $curDir) {
    my $tile = @map[$y][$x];
    if $curDir==Down {
        @colorMap[$y][$x-1] = Red if $x > 0 && @colorMap[$y][$x-1]!=Black;
        @colorMap[$y][$x+1] = Blue if $x < $xsize-1 && @colorMap[$y][$x+1]!=Black;
        @colorMap[$y+1][$x] = Red if $tile==='L' && $y < $ysize-1 && @colorMap[$y+1][$x]!=Black;
        @colorMap[$y+1][$x] = Blue if $tile==='J' && $y < $ysize-1 && @colorMap[$y+1][$x]!=Black;
        
    }
    if $curDir==Up {
        @colorMap[$y][$x-1] = Blue if $x>0 && @colorMap[$y][$x-1]!=Black;
        @colorMap[$y][$x+1] = Red if $x < $xsize-1 && @colorMap[$y][$x+1]!=Black;
        @colorMap[$y-1][$x] = Blue if $tile==='F' && $y > 0 && @colorMap[$y-1][$x]!=Black;
        @colorMap[$y-1][$x] = Red if $tile==='7' && $y > 0 && @colorMap[$y-1][$x]!=Black;
    }
    if $curDir==Left {
        @colorMap[$y-1][$x] = Red if $y > 0 && @colorMap[$y-1][$x]!=Black;
        @colorMap[$y+1][$x] = Blue if $y < $ysize-1 && @colorMap[$y+1][$x]!=Black;
        @colorMap[$y][$x-1] = Red if $tile==='F' && $x>0 && @colorMap[$y][$x-1]!=Black;
        @colorMap[$y][$x-1] = Blue if $tile==='L' && $x>0 && @colorMap[$y][$x-1]!=Black;
    }
    if $curDir==Right {
        @colorMap[$y-1][$x] = Blue if $y > 0 && @colorMap[$y-1][$x]!=Black;
        @colorMap[$y+1][$x] = Red if $y < $ysize-1 && @colorMap[$y+1][$x]!=Black;
        @colorMap[$y][$x+1] = Blue if $tile==='7' && $x < $xsize-1 && @colorMap[$y][$x+1]!=Black;
        @colorMap[$y][$x+1] = Red if $tile==='J' && $x < $xsize-1 && @colorMap[$y][$x+1]!=Black;
    }
    return None when $tile==='S';
    return Down when ($tile==='F' and $curDir==Left) ||
                     ($tile==='7' and $curDir==Right) ||
                     ($tile==='|' and $curDir==Down);
    return Up   when ($tile==='L' and $curDir==Left) ||
                     ($tile==='J' and $curDir==Right) ||
                     ($tile==='|' and $curDir==Up);
    return Left when ($tile==='J' and $curDir==Down) ||
                     ($tile==='7' and $curDir==Up) ||
                     ($tile==='-' and $curDir==Left);
    return Right when ($tile==='F' and $curDir==Up) ||
                     ($tile==='L' and $curDir==Down) ||
                     ($tile==='-' and $curDir==Right);
}

my $dir = getDir($x,$y);
say $dir;
repeat until @map[$y][$x]==='S' {
    $x-- if $dir == Left;
    $x++ if $dir == Right;
    $y-- if $dir == Up;
    $y++ if $dir == Down;
    $result++;
    @colorMap[$y;$x] = Black;
    $dir = getNextDir($x,$y,$dir);
    #say $x," ", $y," ", $result," ", $dir;
}

enum State <Start Whites Reds Blues Nones>;
my $found = False;
my $good = Nones;
for 0..$ysize -> $row {
    my $state = Start;
    for 0..^$xsize -> $column {
        #say $state, " ", @colorMap[$row][$column], $found, $good;
        given @colorMap[$row][$column] {
            when White {
                if $state==Reds && $good!=Blue {
                    @colorMap[$row][$column]=Red;
                }
                if $state==Blues && $good!=Red {
                    @colorMap[$row][$column]=Blue;
                }
            }
            when Black {$state = Nones}
            when Red {
                if $state==Start && !$found {
                    $found = True;
                    $good = Blue;
                }
                $state=Reds;
            }
            when Blue {
                if $state==Start && !$found {
                    $found = True;
                    $good = Red;
                }
                $state=Blues;
            }
        }
        #last;
    }
    #last;
}

say $good;
my $ch="+";
$ch="." if $good==Red;
for @colorMap ->$row {
    my $line = $row.join('')
        .subst(/White/," ", :g)
        .subst(/Black/,"#", :g)
        .subst(/Blue/,"+", :g)
        .subst(/Red/,".", :g)
        ;
    #say 
    my $temp = $line.match(:g,$ch).elems;
    $result2+=$temp;
}

# Open vscode. visually examine if + or . are outside
# in my case .
# substitute ". " with ".." until all done.
# count . in file :D
say "part 1 "~$result/2;
say "part 2 "~$result2;

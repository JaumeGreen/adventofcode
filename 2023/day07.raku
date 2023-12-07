my int64 $result =0;
my int64 $result2 =0;

my @lines =  '2023/day07.input'.IO.lines;
my @hands = @lines.map(->$l { $l.split(" ",:skip-empty) } );

my @values = ['A', 'K', 'Q', 'J', 'T', '9', '8', '7', '6', '5', '4', '3', '2'];
sub value ($a) {
    for 0..^@values.elems {
        return $_ if $a===@values[$_];
    }
    return -1;
}

sub compareValue ($a, $b) {
    my @a=$a[0].split("",:skip-empty);
    my @b=$b[0].split("",:skip-empty);
    for 0..^5 {
        my $valA = value(@a[$_]);
        my $valB = value(@b[$_]);
        return Order::More if $valA < $valB;
        return Order::Less if $valA > $valB;
    }
    return Order::Same;
}

sub type ($a) {
    my $bag = bag $a[0].split("",:skip-empty);
    my $three=False;
    my $pair =False;
    for $bag.sort({-.value}).map({ $_.value }) -> $howmany {
        return 7 when $howmany==5;
        return 6 when $howmany==4;
        $three = True when $howmany==3;
        return 5 when $three && $howmany==2;
        return 3 when $pair && $howmany==2;
        $pair = True when $howmany==2;
    }
    return 4 when $three;
    return 2 when $pair;
    return 1;
}

sub compareType ($a,$b) {
    my $typeA = type($a);
    my $typeB = type($b);
    return Order::More if $typeA > $typeB;
    return Order::Less if $typeA < $typeB;
    return compareValue($a,$b);
}

my @valuesJoker = ['A', 'K', 'Q', 'T', '9', '8', '7', '6', '5', '4', '3', '2', 'J'];
sub valueJoker ($a) {
    for 0..^@valuesJoker.elems {
        return $_ if $a===@valuesJoker[$_];
    }
    return -1;
}

sub compareValueJoker ($a, $b) {
    my @a=$a[0].split("",:skip-empty);
    my @b=$b[0].split("",:skip-empty);
    for 0..^5 {
        my $valA = valueJoker(@a[$_]);
        my $valB = valueJoker(@b[$_]);
        return Order::More if $valA < $valB;
        return Order::Less if $valA > $valB;
    }
    say "SAME ", $a, " & ", $b;
    return Order::Same;
}

sub typeJoker ($a) {
    my $bag = bag $a[0].split("",:skip-empty);
    my $joker = $bag{'J'};
    my $three=False;
    my $pair =False;
    for $bag.sort({-.value}).map({ $_.key, $_.value }) -> ($what, $count) {
        my $howmany = $count+$joker;
        return 7 when $howmany==5 || $howmany==10; #5 jokers
        next when $what==='J';
        return 6 when $howmany==4;
        when $howmany==3 {
            $three = True;
            $joker=0;
        }
        return 5 when $three && $howmany==2;
        return 3 when $pair && $howmany==2;
        when $howmany==2 {
            $pair = True;
            $joker = 0;
        }
    }
    return 4 when $three;
    return 2 when $pair;
    return 2 when $pair;
    return 1;
}

sub compareTypeJoker ($a,$b) {
    my $typeA = typeJoker($a);
    my $typeB = typeJoker($b);
    return Order::More if $typeA > $typeB;
    return Order::Less if $typeA < $typeB;
    return compareValueJoker($a,$b);
}

#my @play = @hands.sort(&compareType);
#for 0..^@play.elems ->$i {
#    $result+=@play[$i][1]*($i+1);
#}

my @play = @hands.sort(&compareTypeJoker);
for 0..^@play.elems ->$i {
    #say @play[$i][0];
    $result2+=@play[$i][1]*($i+1);
}

say "part 1 "~$result;
say "part 2 "~$result2;
#251332551 too high
#251335042
my int64 $result =1;
my int64 $result2 =0;

my @lines =  '2023/day06.input'.IO.lines;
my @times = @lines[0].split(":")[1].split(" ",:skip-empty).map(->$val {Int($val)});
my @distances = @lines[1].split(":")[1].split(" ",:skip-empty).map(->$val {Int($val)});

sub iswin ($sp,$time,$dist) {$sp*($time-$sp) > $dist}
for 0..^@times.elems -> $i {
    my $start=0;
    my $end=@times[$i];
    for 1..^@times[$i] -> $speed {
        if $speed*(@times[$i]-$speed) > @distances[$i] {
            $start=$speed ;
            last;
        }
    }
    for $start..^@times[$i] -> $speed {
        if $speed*(@times[$i]-$speed) <= @distances[$i] {
            $end=$speed-1 ;
            last;
        }
    }
    $result*=$end-$start+1;
}

my $time = Int(@times.join());
my $distance = Int(@distances.join());

my $st=0;
my $en=$time;
my $pos = ($en-$st) div 2;

while $st <= $en {
    $pos = $st + ($en-$st) div 2;
    last when iswin($pos,$time,$distance) && not iswin($pos-1,$time,$distance);
    if iswin($pos,$time,$distance) {
        $en=$pos-1;
    } else {
        $st=$pos+1;
    }
}
my $start = $pos;
$st=0;
$en=$time;
while $st <=$en {
    $pos = $st + ($en-$st) div 2;
    #say $st, " ", $pos, " ", $en, " ", iswin($pos,$time,$distance);
    last when iswin($pos,$time,$distance) && not iswin($pos+1,$time,$distance);
    if iswin($pos,$time,$distance) {
        $st=$pos+1;
    } else {
        $en=$pos-1;
    }
}
my $end = $pos;
$result2=$end-$start+1;
#say $pos, iswin($pos,$time,$distance) ,iswin($pos+1,$time,$distance);
say "part 1 "~$result;
say "part 2 "~$result2;

# 1 2 2 2 2 1
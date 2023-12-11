my $result =0;
my $result2 =0;

my @lines =  '2023/day05.input'.IO.lines;
my @seeds = @lines[0].split(":")[1].split(" ",:skip-empty).map(->$val {Int($val)});
my @seeds2;
for @seeds -> $seed1,$seed2 {
    @seeds2.push([$seed1,$seed1+$seed2]);
}

@seeds2 = @seeds2.sort;

sub translate(@seeds, @trans) {
    for @seeds <-> $seed {
        for @trans -> [$destination, $source, $rangelength] {
            my $diff = $seed-$source;
            if $diff >=0 && $diff < $rangelength {
                $seed = $destination+$diff;
                last;
            }
        } 
    }
    return @seeds;
}

my @transtable;
for 2..^@lines.elems -> $i {
    when @lines[$i].chars == "" {
        @seeds = translate(@seeds,@transtable);
        @transtable = [] ;
    }
    when @lines[$i].contains(":") {
        next;
    }
    @transtable.push(@lines[$i].split(" ",:skip-empty).map(->$val {Int($val)}));
}

@seeds = translate(@seeds,@transtable);
$result= @seeds.min;


sub translate2(@seeds, @trans) {
#    say "translate2 ", @seeds2;
#    say "using ", @trans;
    my @result;
    
    for @seeds -> $seed {
        my $curseed = $seed;
#        say "    current seed ",$curseed;
        my $extra=True;
        for @trans -> [$destination, $source, $rangelength] {
#            say "        current seed ",$curseed;
#            say "        tr ", $destination, " ",$source," ", $rangelength;
            next if $curseed[1] < $source;
            next if $curseed[0] > $source + $rangelength;
            $extra=False;
            @result.push([$curseed[0], $source-1]) if $curseed[0] < $source;
#            say "        pushed ", $curseed[0], ",", $source-1 if $curseed[0] < $source;

            my $topdiff = min($curseed[1],$source + $rangelength)-$source;
            my $botdiff = max($curseed[0],$source)-$source;
            @result.push([$destination+$botdiff, $destination+$topdiff]);
#            say "        pushed ", $destination+$botdiff, ",", $destination+$topdiff;
            last if $curseed[1] <= $source + $rangelength;
            $extra=True;
            $curseed = [$source + $rangelength+1, $curseed[1]];
#            say "        extra ",$curseed;
        } 
        @result.push($curseed.clone) if $extra;
#        say "r",@result;
    }
    return @result.sort;
}

my @totaltrans;
@transtable=[];
for 2..^@lines.elems -> $i {
    when @lines[$i].chars == "" {
        @totaltrans.push(@transtable.clone.sort);
        @transtable = [] ;
    }
    when @lines[$i].contains(":") {
        next;
    }
    @transtable.push(@lines[$i].split(" ",:skip-empty).map(->$val {Int($val)}));
}
@totaltrans.push(@transtable.clone.sort);

for @totaltrans -> @curtrans {
    @seeds2 = translate2(@seeds2,@curtrans);
}
#say my @ctr = @totaltrans[0];
#@seeds2 = translate2(@seeds2,@ctr);
#say @seeds2;
$result2= @seeds2.min;

say "part 1 "~$result;
say "part 2 "~$result2;

# 1 2 2 2 2 1
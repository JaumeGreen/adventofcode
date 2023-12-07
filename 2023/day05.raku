my int64 $result =0;
my int64 $result2 =0;

my @lines =  '2023/day05.input'.IO.lines;
my @seeds = @lines[0].split(":")[1].split(" ",:skip-empty).map(->$val {Int($val)});
#my @seeds2 = for @seeds->[$seed1,$seed2] {};    

say @seeds;

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

#my @transtable;
#for 2..^@lines.elems -> $i {
#    when @lines[$i].chars == "" {
#        @seeds = translate(@seeds,@transtable);
#        @transtable = [] ;
#    }
#    when @lines[$i].contains(":") {
#        next;
#    }
#    @transtable.push(@lines[$i].split(" ",:skip-empty).map(->$val {Int($val)}));
#}
#@seeds = translate(@seeds,@transtable);
#say @seeds;
#$result= @seeds.min;

say "part 1 "~$result;
say "part 2 "~$result2;

# 1 2 2 2 2 1
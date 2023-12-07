my int64 $result =0;
my int64 $result2 =0;

my @lines =  '2023/day04.input'.IO.lines;

for @lines -> $line {
    my @card = $line.split(":")[1].split("|");
    my %win=@card[0].split(" ",:skip-empty).SetHash;
    my %play=@card[1].split(" ",:skip-empty).SetHash;
    my %prizes = %win ∩ %play;
    $result += 2**(%prizes.elems-1) when %prizes.elems>0;
}

my @cards[@lines.elems];
for 0..^@lines.elems -> $i {
    @cards[$i]=1;
}

for 0..^@lines.elems -> $i {
    my @card = @lines[$i].split(":")[1].split("|");
    my %win=@card[0].split(" ",:skip-empty).SetHash;
    my %play=@card[1].split(" ",:skip-empty).SetHash;
    my $won = (%win ∩ %play).elems;
    my $curr=$i+1;
    @cards[$curr++]+=@cards[$i] while $won-- > 0 && $curr < @lines.elems;
}
$result2 = @cards.sum;

say "part 1 "~$result;
say "part 2 "~$result2;

# 1 2 2 2 2 1
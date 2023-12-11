my $result =0;
my int64 $result2 =0;

my @lines =  '2023/day08-3.test'.IO.lines;
my @path = @lines[0].subst(/L/,0, :g)
                    .subst(/R/,1, :g)
                    .split("",:skip-empty);

my %graph;
for @lines[2..*] ->$line {
    my @vals = $line.match(/\w+/,:g);
    %graph{@vals[0]}=[@vals[1],@vals[2]];
}

my $node = 'AAA';
my $pos = 0;

while $node ne 'ZZZ' {
    $node = %graph{$node}[@path[$pos]];
    $result++;
    $pos++;
    $pos=0 when $pos == @path.elems;
}

my %graph2;
for @lines[2..*] ->$line {
    my @vals = $line.match(/\w+/,:g);
#    %graph{@vals[0]}=[@vals[1],@vals[2], newSetHash ]; #pos #totalpos
}


say "part 1 "~$result;
say "part 2 "~$result2;

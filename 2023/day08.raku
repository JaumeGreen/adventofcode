my $result =0;
my $result2 =1;

my @lines =  '2023/day08.input'.IO.lines;
my @path = @lines[0].subst(/L/,0, :g)
                    .subst(/R/,1, :g)
                    .split("",:skip-empty);

my @part2;
my %graph;
for @lines[2..*] ->$line {
    my @vals = $line.match(/\w+/,:g);
    %graph{@vals[0]}=[@vals[1],@vals[2]];
    @part2.push(@vals[0]) if $line.match(/^^\w+A/,:g);
}

my $node = 'AAA';
my $pos = 0;

while $node ne 'ZZZ' {
    $node = %graph{$node}[@path[$pos]];
    $result++;
    $pos++;
    $pos=0 when $pos == @path.elems;
}

#my @iter;
for @part2 -> $start {
    #say $start;
    my $node = $start;
    my $pos = 0;
    my $total = 0;
#    my %graph2 = %graph.clone;
#    my @ends;
#WTF? No need to find cicles?
    until $node.match(/^^\w+Z/,:g) {
        #say "    ",$node," ", $pos," ",$total;
        $node = %graph{$node}[@path[$pos]];
        $total++;
        $pos++;
        $pos=0 when $pos == @path.elems;
    }
    $result2 = $result2 lcm $total;
#    until %graph2{$node}[2]{$pos} {
#        #say "    ",$node," ", $pos," ",$total;
#        %graph{$node}[2]{$pos}=$total;
#        @ends.push([$node,$pos,$total]) if $node.match(/^^\w+Z/,:g);
#        $node = %graph{$node}[@path[$pos]];
#        $total++;
#        $pos++;
#        $pos=0 when $pos == @path.elems;
#    }
#    $result2 = $result2 lcm @ends[0][2];
#    @iter.push([$node,$pos,$total,@ends.clone]);
}


say "part 1 "~$result;
say "part 2 "~$result2;

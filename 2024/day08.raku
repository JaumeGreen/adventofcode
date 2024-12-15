my $result1 = 0;
my $result2 = 0;
my @lines =  '2024/day08.input'.IO.lines.map(->$l { $l.split("",:skip-empty)});
my Array %antenas = SetHash.new;

my $rlim = @lines.elems;
my $clim = @lines[0].elems;

for 0..^$rlim -> $row {
    for 0..^$clim -> $column {
        if @lines[$row][$column] ne '.' {
            unless %antenas{@lines[$row][$column]}:exists {
                %antenas{@lines[$row][$column]} = Array.new()
            }
            %antenas{@lines[$row][$column]}.push(($row,$column));
        }
    }
} 

my %interferences = SetHash.new;
my %antinodes = SetHash.new;
for %antenas -> $entry {
    for 0..^$entry.value.elems -> $fixed {
        for ($fixed+1)..^$entry.value.elems -> $next {
            interferences($entry.value[$fixed], $entry.value[$next]);
            antinodes($entry.value[$fixed], $entry.value[$next]);
        }
    }
}

sub coordDifference ($a, $b) {
    return ($a[0]-$b[0],$a[1]-$b[1]);
}

sub interferences ($a, $b) {
    my $diff = coordDifference($a,$b);
    # as we are always getting this from the "first" antena we can directly use the difference to calculate the positions
    addinterferences(firstinterferences($a,$diff));
    addinterferences(secondinterferences($b,$diff));
}
sub antinodes ($a, $b) {
    my $diff = coordDifference($a,$b);
    # as we are always getting this from the "first" antena we can directly use the difference to calculate the positions
    addantinodes($a,$diff, &firstantinodes);
    addantinodes($b,$diff, &secondantinodes);
}
sub addinterferences($point) {
    unless $point[0] < 0 || $point[0] >= $rlim || $point[1] < 0 || $point[1] >= $clim {
        %interferences{$point}=True;
    }
}
sub addantinodes($antena, $diff, $function) {
    my $it =1;
    my $point = $antena;
    repeat {
        %antinodes{$point}=True;
        $point = $function($antena, $diff, $it++);
    } until $point[0] < 0 || $point[0] >= $rlim || $point[1] < 0 || $point[1] >= $clim ;
}
sub firstinterferences($a, $diff) {
    return ($a[0]+$diff[0], $a[1]+$diff[1]);
}
sub secondinterferences($b, $diff) {
    return ($b[0]-$diff[0], $b[1]-$diff[1]);
}
sub firstantinodes($a, $diff, $it) {
    return ($a[0]+$diff[0]*$it, $a[1]+$diff[1]*$it);
}
sub secondantinodes($b, $diff, $it) {
    return ($b[0]-$diff[0]*$it, $b[1]-$diff[1]*$it);
}


say %interferences.elems;
say %antinodes.elems;

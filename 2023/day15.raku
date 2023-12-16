my $result =0;
my $result2 =0;

my $lines =  '2023/day15.input'.IO.lines;
my @lines = $lines.split(",",:skip-empty).map(->$l { $l.split("",:skip-empty) } );

sub gethash ($str) {
    my @codes = $str.map(->$l { $l.ord } );
    my $res = 0;
    for @codes {
        $res+=$_;
        $res*=17;
        $res = $res mod 256;
    }
    return $res;
}
$result = @lines.map(->$l { gethash($l) } ).sum;

my @label = $lines.split(",",:skip-empty).map(->$l { ($l~~/\w+/) } );
my @box = @label.map(->$l { $l.split("",:skip-empty) }) .map(->$l { gethash($l) } );
my @operation = $lines.split(",",:skip-empty).map(->$l { $l~~/[\=|\-]/ });
my @focal = $lines.split(",",:skip-empty).map(->$l { $l~~/\d+/ } );

#my $i=0;
my @boxes;
for 0..^@label.elems -> $i {
    my $exists = @boxes[@box[$i]]:exists;
    my $box = @boxes[@box[$i]];
    my $label = @label[$i];
    given @operation[$i] {
        when "=" {
            my $inserted = False;
            if $exists {
                for 0..^$box.elems -> $j {
                    if $box[$j][0] eq $label {
                        $box[$j][1] = @focal[$i];
                        $inserted = True;
                        last;
                    }
                }
            }
            @boxes[@box[$i]].push([$label,@focal[$i]]) if not $inserted;
        }
        when "-" {
            if $exists {
                for 0..^$box.elems -> $j {
                    if $box[$j][0] eq $label {
                        $box.splice($j,1);
                        last;
                    }
                }
            }
        }
    }
}

for 0..^256 -> $i {
    next if not @boxes[$i].defined;
    next if @boxes[$i].elems==0;
    my $order=1;
    for @boxes[$i] -> @lenses {
        for @lenses -> $lens {
            #say "label $lens[0] focus {$i+1} $order $lens[1] {($i+1)*$order*$lens[1]}";
            $result2+=($i+1)*$order*$lens[1];
            $order++;
        }
    }
}
say "part 1 "~$result;
say "part 2 "~$result2;

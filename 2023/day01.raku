my int64 $result =0;
my int64 $result2 =0;
sub numbers ($str)  {return $str~~/[\D*(\d)]*/;}
sub transnumbers ($str) {
    return $str
        .subst(/one/,"o1e", :g)
        .subst(/two/,"t2o", :g)
        .subst(/three/,"t3e", :g)
        .subst(/four/,"f4r", :g)
        .subst(/five/,"f5e", :g)
        .subst(/six/,"s6x", :g)
        .subst(/seven/,"s7n", :g)
        .subst(/eight/,"e8t", :g)
        .subst(/nine/,"n9e", :g);
}
sub value (@arr) {return @arr[0]*10+@arr[*-1];}

for '2023/day01.input'.IO.lines -> $line {
    # Do something with $line 
    my $stnum = numbers($line);
    $result += value($stnum[0]);

    $stnum = numbers(transnumbers($line));
    $result2 += value($stnum[0]);
    say ($line, "=>", transnumbers($line), "=>", $stnum[0], "=>", value($stnum[0]));
}
say $result;
say $result2;

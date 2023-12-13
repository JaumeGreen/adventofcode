use Memoize;
#use trace;
my $result =0;
my $result2 =0;

my @lines =  '2023/day12.input'.IO.lines;
my @record = @lines.map(->$l { $l.split(" ",:skip-empty) } );

#for @record -> [$visual, $numeric] {
#    #my $visual = @record[5][0];
#    #my $numeric = @record[5][1];
#    my @numeric = $numeric.split(",",:skip-empty);
#    my $sep="[\\.|\\?]+";
#    my $exp="";
#
#    for 0..^@numeric.elems -> $i {
#        $exp = $exp~$sep if $i>0;
#        $exp = $exp~"[\\#|\\?]**{@numeric[$i]}";
#    }
#    my $reg = /<$exp>/;
#    my $fix = $visual.match(/\#/,:ex).elems;
#    my @matches = $visual.match($reg,:ex);
#    my $count=0;
#    for @matches {
#        $count++ if $fix==$_.match(/\#/,:ex).elems;
#    }
#    say $count," in ",$visual," <- ",$numeric;
#    #say $visual.match($reg,:ex);
#    $result+=$count;
#}
#
#say "part 1 "~$result;

sub verifySpring($str,$next) {
    #my $str = $springs.substr($i,$cur);
    return False if $next==="#";
    return False if $str.contains(".");
    return True;
}
memoize(&verifyMap);
sub verifyMap($springs,@code) {
    #say $springs,@code;
    #my $springs=$vis;
    #my @code = @numeric;
    #my $springs=$down;
    #my @code = @code[1..*];
    #my $springs="??#?...?##???";
    #my @code =[1,4]; #2, not 4
    my $size = $springs.chars;

    if @code.elems==0 {
        return 0 if $springs.contains("#");
        #say "--->found ",$springs,@code;
        return 1;
    }
    return 0 if $size==0;
    my $cur = @code[0];
    my $i=0;
    $i++ while $i < $size && $springs.substr($i,1)===".";
    return 0 if $i>=$size;
    my $count=0;
    #say "-->last ",$i when @code.elems==1;
    while $i+$cur <= $size {
        #say "------>",$i;
        #say "--> ",$i,"+",$cur,"=",$i+$cur," vs ",$size when @code.elems==1;
        return 0 if $i+$cur > $size;
        my $next = "";
        $next=$springs.substr($i+$cur,1) if $i+$cur < $size;
        my $chop = $springs.substr($i,$cur);
        until verifySpring($chop,$next) {
            return $count when $springs.substr($i,1)==="#";
            $i++ ;
            $next = "";
            $next=$springs.substr($i+$cur,1) if $i+$cur < $size;
            $chop = $springs.substr($i,$cur);
            last if $i+$cur > $size || $chop.chars < $cur;
        }
        last if $i+$cur > $size || $chop.chars < $cur;
        my $down = "";
        if $i+$cur+1 < $size {
            $down=$springs.substr($i+$cur+1);
        }
        #say " from ",$springs,@code, " at ",$i," ",$cur,"->",$down," ",@code[1..*];
        my $found = verifyMap($down,@code[1..*]);
        $count+=$found;
        #$springs=$springs.substr($i+$cur);
        #@code = @code[1..*];
        last when $springs.substr($i,1)==="#";
        $i++;
    }
    return $count;
}
    

for @record -> [$visual, $numeric] {
    #my $visual = @record[1][0];
    #my $numeric = @record[1][1];
    my $vis = $visual~'?'~$visual~'?'~$visual~'?'~$visual~'?'~$visual;
    my $num = $numeric~","~$numeric~","~$numeric~","~$numeric~","~$numeric;
    #say $vis, " ", $num;
    my @numeric = $num.split(",",:skip-empty);
    my $count = verifyMap($vis,@numeric);
    #say $count," in ",$visual," <- ",$numeric;
    $result2+=$count;
}

say "part 2 "~$result2;


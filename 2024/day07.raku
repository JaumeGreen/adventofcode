my $result1 = 0;
my $result2 = 0;
my @lines =  '2024/day07.input'.IO.lines;
my @calibrations = @lines.map(->$l { $l.split(": ",:skip-empty).split(" ",:skip-empty) } );
#say @calibrations.raku;

for @calibrations -> @cal {
    my Int @calb;
    for 0..^@cal.elems -> $i {
        @calb[$i] = @cal[$i].Int;
    }
    #IsValid(@calb);
    IsValid2(@calb);
}

say '1 ',$result1;
say '2 ',$result2;

sub IsValid (Int @calibration) {
    my $numbers = @calibration.elems -1;
    # for N numbers there are 2^N-1 possible operators combinations.
    # we'll encode them in binary.
    for 0..^2**($numbers-1) -> $operators {
        #if CalibrationOk ($operators, @calibration) {return True;}
        my @mask = ("00000000000000000000000000000000000000000000"~Str($operators.base(2))).substr(*-($numbers-1)).split("",:skip-empty);
        my $val = @calibration[1];
        for 2..^@calibration.elems -> $index {
            if @mask[$index-2] eq '0' {$val+=@calibration[$index];}
            else {$val*=@calibration[$index];}
            #say @calibration[0].Int,'=',$val,'+*',@mask[$index-2],' ',@calibration[$index];
        }
        if @calibration[0].Int==$val {$result1+=$val;return True;}
    }
    return False;
}

sub IsValid2 (Int @calibration) {
    my $numbers = @calibration.elems -1;
    # for N numbers there are 2^N-1 possible operators combinations.
    # we'll encode them in binary.
    for 0..^3**($numbers-1) -> $operators {
        #say $operators;
        #if CalibrationOk ($operators, @calibration) {return True;}
        my @mask = ("00000000000000000000000000000000000000000000"~Str($operators.base(3))).substr(*-($numbers-1)).split("",:skip-empty);
        my $val = @calibration[1];
        #say @mask.raku;
        for 2..^@calibration.elems -> $index {
            #say '--',$val,' op ',@mask[$index-2],' ',@calibration[$index];
            if @mask[$index-2] eq '0' {$val+=@calibration[$index];}
            elsif @mask[$index-2] eq '1' {$val=(Str($val)~Str(@calibration[$index])).Int;}
            else {$val*=@calibration[$index];}
            #say '++',$val;
        }
        if @calibration[0].Int==$val {$result2+=$val;return True;}
        #last;
    }
    #say 'bad ', @calibration[0];
    return False;
}

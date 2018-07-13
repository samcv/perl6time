my %hash;
my int $num := 1000000;
my int $i   := 0;
#my $num_ops := 0;
while $i < $num {
    nqp::bindkey(%hash, $i, 1);
    $i := $i + 1;
    #$num_ops := $num_ops + 1;
}
my @array := (2, 3, 4, 5, 6);
for @array {
    $i := 0;
    while $i < $num {
        nqp::deletekey(%hash, $i);
        $i := $i + $_;
        #$num_ops := $num_ops + 1;
    }
    $i := 0;
    while $i < $num {
        nqp::bindkey(%hash, $i, 1);
        $i := $i + $_;
        #$num_ops := $num_ops + 1;
    }
}
#say($num_ops);

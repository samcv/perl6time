my %hash;
# 100,000
my int $num := 10_000_000;
my @array2;
my int $i   := 0;
#my $num_ops := 0;
while $i < $num {
    nqp::push(@array2,$i);
    #nqp::bindkey(%hash, $i, 1);
    $i := $i + 1;
    #$num_ops := $num_ops + 1;
}
my @array := (2, 3, 4, 5, 6);
for @array {
    $i := 0;
    while $i < $num {
        nqp::atpos(@array2, $i);
        $i := $i + $_;
        #$num_ops := $num_ops + 1;
    }
    $i := 0;
    while $i < $num {
        nqp::bindpos(@array2, $i, 1);
        $i := $i + $_;
        #$num_ops := $num_ops + 1;
    }
}
#say($num_ops);

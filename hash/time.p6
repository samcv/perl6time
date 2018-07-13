my %hash;
my Int $num = 1000000;
my $num_ops = 0;
for ^$num -> $i {
    %hash{$i} = 1;
    $num_ops++;
}
my @array := (2, 3, 4, 5, 6);
for (2, 3, 4, 5, 6) -> $interval {
    for 0, $interval ... $num - 1 -> $i {
        %hash{$i}:delete;
        $num_ops++;
    }
    for 0, $interval ... $num - 1 -> $i {
        %hash{$i} = 1;
        $num_ops++;
    }
}
say $num_ops;

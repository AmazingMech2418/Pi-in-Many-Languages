use v6;
my $p = 3;
my $s = 1;
my $a = 2;
for 1..150000 {
  $p += $s*(4/($a*($a*($a+3)+2)));
  $a += 2;
  $s = -$s
}
say "pi = $p";

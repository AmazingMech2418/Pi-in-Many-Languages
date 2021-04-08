my ($atan, $sign, $a, $pi) = (0, 1, 2, 3);
while (1) {
    ($pi, $sign, $atan, $a) = ($pi + $sign * (4 / ($a * ($a * ($a + 3) + 2))), $sign * -1, $atan + $sign / ($a - 1), $a + 2);
    print "@{[ sprintf('Nilakantha: %32s', $pi) ]} Arctan: @{[ $atan * 4 ]}\n";
}

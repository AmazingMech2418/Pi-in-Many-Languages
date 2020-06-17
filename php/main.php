<?php
$p = 3;
$s = 1;
$a = 2;
function iterate() {
  global $p, $a, $s;
  $p += $s*(4/($a*($a*($a+3)+2)));
  $a += 2;
  $s = -$s;
}
for($i = 0; $i < 150000; $i++) {
  iterate();
}
echo "pi = $p\n";
?>

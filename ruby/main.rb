$pi = 3
$a = 2
$s = 1
def iterate()
  $pi += $s*(4.0/($a*($a*($a+3.0)+2.0)))
  $a += 2
  $s = -$s
end

150000.times do
  iterate()
end

puts "pi = #$pi"

set p 3.0
set a 2.0
set s 1.0

proc iterate {} {
  global p
  global a
  global s
  set p [expr $p + $s * (4 / ($a * ($a * ($a + 3) + 2)))]
  set a [expr $a + 2.0]
  set s [expr -$s]
}

for {set i 0} {$i < 150000} {incr i} {
  iterate
}
puts "pi = [expr $p]"

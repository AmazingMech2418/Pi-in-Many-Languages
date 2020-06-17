var
  p: float = 3.0
  a: float = 2.0
  s: float = 1.0

proc iterate() =
  p += s * (4 / (a * (a * (a + 3) + 2)))
  a += 2.0
  s = -s

for _ in 0..150000:
  iterate()

echo "pi = ", p

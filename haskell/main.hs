a 0 = 2.0
a x = a (x-1) + 2.0
s 0 = 1.0
s x = 0.0 - s (x-1)
p 0 = 3.0
p x = p(x-1) + s(x-1)*(4/(a(x-1)*(a(x-1)*(a(x-1)+3)+2)))
main = do
  putStr "pi = "
  putStrLn(show(p(150000)))

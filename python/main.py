atan, sign, a, pi = 0, 1, 2, 3
while True:
  pi, sign, atan, a = pi+sign*(4/(a*(a*(a+3)+2))), sign*-1, atan+sign/(a-1), a+2
  print(f'Nilakantha: {pi} {" "*(31-len("Nilakantha: "+str(pi)))} Arctan: {atan*4}')

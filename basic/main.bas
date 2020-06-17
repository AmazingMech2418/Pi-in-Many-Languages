PI = 3
S = 1
FOR A = 2 TO 300000 STEP 2
PI = PI + S*(4/(A*(A*(A+3)+2)))
S = -S
NEXT A
PRINT "pi = " + STR$(PI)

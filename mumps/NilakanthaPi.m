main
    s pi=3
    s sign=1
    f a=2:2:300000 d
    . s pi=pi+(sign*(4/(a*(a*(a+3)+2))))
    . s sign=-sign
    w "pi = ",pi,!

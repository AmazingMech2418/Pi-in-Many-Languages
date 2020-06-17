variable cntr
variable p
variable s
3.0e p f!
1.0e s f!
2.0e cntr f!
: iter
  4e cntr f@ 3e f+ cntr f@ f* 2e f+ cntr f@ f* f/ s f@ f* p f@ f+ p f!
  s f@ -1e f* s f!
  cntr f@ 2e f+ cntr f!
;
: l 100000 0 do iter loop ;
l
." pi = " p f@ f. cr

; Define variables
(define p 3.0)
(define  a 2.0)
(define s 1.0)

; Define iterate function
(define (iterate)
  (set! p (+ p (* s (/ 4 (* a (+ 2 (* (+ a 3) a)))))))
  (set! a (+ 2.0 a))
  (set! s (- 0.0 s))
)

; Run loop
(let loop ((i 0))
  (if (<= i 150000)
    (loop (+ i 1) (begin 
      (iterate)
      )
    )
  )
)

; Print result
(print "pi = " p)

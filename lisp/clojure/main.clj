; I am wrapping the code in a do statement to eliminate unnecessary returns
(do
; Define variables
(def p 3.0)
(def a 2.0)
(def s 1.0)

; Define iterate function
(defn iterate []
  (def p (+ p (* s (/ 4 (* a (+ 2 (* (+ a 3) a)))))))
  (def a (+ 2 a))
  (def s (- 0 s))
)

; Run loop
(dotimes [i 150000]
  (iterate)
)

; Print result
(print "pi =" p))

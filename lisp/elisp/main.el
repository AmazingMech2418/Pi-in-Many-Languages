; Define variables
(defvar p 3.0)
(defvar a 2.0)
(defvar s 1.0)

; Define iterate function
(defun iterate ()
  (setq p (+ p (* s (/ 4 (* a (+ 2 (* (+ a 3) a)))))))
  (setq a (+ 2 a))
  (setq s (- 0 s))
)

; Run loop
(dotimes (i 150000)
  (iterate)
)
(iterate)

; Print result
(message "pi = %S" p)

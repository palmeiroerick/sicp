;; Create a function that adds two integers without using the sum operation

(define (+ x y)
  (cond
   ((= x 0) y)
   ((= y 0) x)
   ((> x 0) (+ (-1+ x) (1+ y)))
   ((< x 0) (+ (1+ x) (-1+ y)))))

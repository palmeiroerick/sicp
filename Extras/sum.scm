;; Create a function that adds two integers without using the sum operation

(define (+ x y)
  (cond
   ((= x 0) y)
   ((= y 0) x)

   ((and (> x 0) (> y 0)) (+ (-1+ x) (1+ y)))
   ((and (> x 0) (< y 0)) (+ (-1+ x) (1+ y)))

   ((and (< x 0) (> y 0)) (+ (1+ x) (-1+ y)))
   ((and (< x 0) (< y 0)) (+ (1+ x) (-1+ y)))))

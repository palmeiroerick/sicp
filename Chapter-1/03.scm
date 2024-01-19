(define (func a b c)
  ;; (define (max x y) (if (or (> x y) (= x y)) x y))
  
  ;; (define (min x y) (if (or (< x y) (= x y)) x y))
  
  (define n1 (max a b))
  
  (define n2 (max (min a b) c))
  
  (+ (* n1 n1) (* n2 n2)))

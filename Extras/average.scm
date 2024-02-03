;; Create a function that takes two number and return the avarage of these
;; numbers

(define (avarage x y)
  (define result (/ (+ x y) 2))
  (if (= (denominator result) 1)
      result
      (exact->inexact result)))

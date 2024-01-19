;; Exercise 1.3: Define a procedure that takes three numbers as arguments and
;; returns the sum of the squares of the two larger numbers.

;; Sum of Squares

(define (sum-of-squares x y) (+ (* x x) (* y y)))

;; Solution 1

(define (sum-larger-squares1 a b c)
  (define x (max a b))
  (define y (max (min a b) c))
  (sum-of-squares x y))

;; Solution 2

(define (sum-larger-squares2 a b c)
  (cond 
   ((and (<= a b) (<= a c)) (sum-of-squares b c))
   ((and (<= b a) (<= b c)) (sum-of-squares a c))
   (else (sum-of-squares a b))))

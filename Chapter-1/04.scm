;; Exercise 1.4: Observe that our model of evaluation allows
;; for combinations whose operators are compound expres-
;; sions. Use this observation to describe the behavior of the
;; following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; As operators can be compound expressions, the if statement
;; determines the operator based on the value of b:
;; - If b > 0, the operator is +;
;; - If b < 0 or b = 0, the operator is -.

;; Create a function that determines whether a given year is a leap year.

(define (divisible-by? dividend divisor)
  (= (remainder dividend divisor) 0))

(define (leap-year? year)
  (if (or (divisible-by? year 400)
          (and (divisible-by? year 4)
               (not (divisible-by? year 100))))
      (string-append (number->string year) " is a leap year.")
      (string-append (number->string year) " isn't a leap year.")))

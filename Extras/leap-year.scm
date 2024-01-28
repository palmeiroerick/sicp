;; Create a program that determine whether a given year is a leap year.

(define (divisible-by? dividend divisor)
  (= (remainder dividend divisor) 0))

(define (leap-year? year)
  (cond
   ((divisible-by? year 400) #t)
   ((and (divisible-by? year 4)
         (not (divisible-by? year 100))) #t)
   (else #f)))

(newline)

(display "Enter a year: ")
(define year (read))

(newline)

(if (leap-year? year)
    (display (string-append (number->string year) " is a leap year."))
    (display (string-append (number->string year) " isn't a leap year.")))

(newline)

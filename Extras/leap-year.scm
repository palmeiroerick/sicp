;; Create a program that determine whether a given year is a leap year.

(define (divisible-by? dividend divisor)
  (= (remainder dividend divisor) 0))

(define (leap-year? year)
  (cond
   ((divisible-by? year 400) #t)
   ((and (divisible-by? year 4)
         (not (divisible-by? year 100))) #t)
   (else #f)))

(define (year-input)
  (define year (read))
  (if (and (number? year) (> year 0))
      year
      (begin
        (display "Enter a valid value: ")
        (year-input))))

(newline)

;; (define year (read))

(display "Enter a year: ")
(define year (year-input))

(newline)

(if (leap-year? year)
    (display (string-append (number->string year) " is a leap year."))
    (display (string-append (number->string year) " isn't a leap year.")))

(newline)

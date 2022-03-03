#lang sicp

(define (even? n)
  (= (remainder n 2) 0 ))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (*russian-peasant a b)
  (russian-peasant-iter a b 0))

(define (russian-peasant-iter a b acc)
  (or (= b 1) (= b -1) (+ acc (double acc))
        ((even? b) (russian-peasant-iter (double a) (halve b) acc))
        (else (russian-peasant-iter a (- a 1) (+ acc a)))))))

(*log 120 347)
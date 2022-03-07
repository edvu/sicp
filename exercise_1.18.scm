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
  (cond ((= b 1) (+ acc a))
        ((= b -1) (+ acc a))
        ((even? b) (russian-peasant-iter (double a) (halve b) acc))
        (else (russian-peasant-iter (double a) (halve (- b 1)) (+ acc a)))))

(*russian-peasant 120 347)

(* 120 347)

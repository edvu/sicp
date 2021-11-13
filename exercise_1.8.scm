#lang sicp

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cbrt-iter (improve guess x) x)))

(define (square x) (* x x))

(define (improve guess x)
  (/ (approximate x guess) 3))

(define (approximate x y)
  (+ (/ x (square y)) (* 2 y)))

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess))
     0.00000000000001))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(cbrt 1000000)
(* 100 100 100)
  
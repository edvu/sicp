#lang sicp

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

;;;(define (small-enough-fraction prev-guess next-guess)
  ;;;(< (abs (- next-guess prev-guess)) 0.0000001)) 

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess))
     0.00000000001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;;; older (sqrt 400) 20.000000000298428, result 20
;;; older (sqrt 16) 4.000000636692939, result 4

(sqrt 123456789012345)
(sqrt 16)
#lang sicp

;;; n < 3 == n
;;; n >= 3 == f(n-1) + 2f(n-2)+ 3f(n-3)

;;; recursive process

(define (func-recursive n)
  (cond ((< n 3) n)
        (else (+ (func-recursive (- n 1)) (* 2 (func-recursive (- n 2))) (* 3 (func-recursive (- n 3)))))))

(func-recursive 10)
(func-recursive 30)

;;; iterative process

(define (func-iterative n)
  (func-iter 2 1 0 n))

(define (func-iter a b c count)
  (if (< count 3) a
      (func-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

(func-iterative 10)
(func-iterative 30)
  
  
  

#lang sicp

;;; linear iteration
(define (expt b n)
  (expt-iter b n 1))
(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                 (- counter 1)
                 (* b product))))
;;; recursive iteration with successive squaring
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))

;;; (b n/2 ) 2 = (b 2 ) n/2
;;; exponent n, base b, state variable a

(define (successive-iterative-squaring b n)
  (square-iter b n 1))

(define (square-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (square-iter (square b) (/ n 2) (/ (* b a) n)))
        (else (square-iter b (- n 1) (/ (* b a) n)))))

(fast-expt 8 3)
(successive-iterative-squaring 8 3)
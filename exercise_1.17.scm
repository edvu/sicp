#lang sicp

;;; linear recursive process which requires O(n) steps and O(n) space
(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

;;;(* 120 10000000) takes too long

;;; linear iteration process which requires O(n) steps and 0(1) space
(define (*iter a b)
  (mult-iter a b 0))
(define (mult-iter a counter product)
  (if (= counter 0)
      product
      (mult-iter a
                 (- counter 1)
                 (+ a product))))


(*iter 120 347)

;;; linear iteration process which requires O(logb n) steps and O(1) space

(define (even? n)
  (= (remainder n 2) 0 ))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (*log a b)
  (mult-iter a b 0))

(define (mult-log-iter a b acc)
  (cond ((= b 0) acc)
        ((even? b) (mult-log-iter a (- a 2) (+ acc (double a))))
        (else (mult-log-iter a (- a 1) (+ acc a)))))

(*log 120 347)
                         
  



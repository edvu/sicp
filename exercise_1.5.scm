#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

 #|
     Applicative order evaluation. First evaluate arguments, then apply.
(test 0 (p))

0 evalutes to 0, (p) will evaluate to (p), therefore creating an infinite loop.

(test 0 (p))
(test 0 (p))
...

 |#


#|
   Normal order evaluation. Will not evaluate operands until their values are actually needed.
(test 0 (p))

(if (= 0 0)
      0
      (p))

(if #t 0 (p))

Since the if results to #t, (p) will not be evaluated and infinite loop will not occur.

|#
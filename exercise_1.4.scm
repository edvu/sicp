#lang sicp

;;;if b is less than 0, then sum a and b. Else divide a from b
(define (a-plus-abs-b a b)
  ((if (< b 0) + -) a b))

(a-plus-abs-b 5 -1);;;4
(a-plus-abs-b 5 2);;;3
#lang sicp

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-squares-two-larger-nums first second third)
  (cond ((and (>= first second) (>= second third)) (sum-of-squares first second))
        ((and (>= first second) (>= third second)) (sum-of-squares first third))
        (else (sum-of-squares second third))
  )
)

(sum-squares-two-larger-nums 1 4 3)
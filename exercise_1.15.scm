#lang sicp

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(sine 12.15)


#|

a. Procedure p is applied 5 times when (sine 12.15) is evaluated.

b. Number of steps (size complexity) and order of growth in space (space complexity) is Θ(logb n).
This is because the angle is getting divided by three at each step until it becomes less than 0.1. Growth in space and the number
of steps increase at this same rate - the space required is the number of deferred calls to p (a sort of Java Stack)
while the number of steps is the required number of calls.

|#

(/ 12.15 3) 
(/ (/ (/ (/ 4.05 3) 3.0) 3.0) 3)
#lang sicp

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

(define phi (/ (+ 1 (sqrt 5)) 2))

(define psi (/ (- 1 (sqrt 5)) 2))

(define (^ base power)
  (define (base-iter power acc)
    (if (= power 0)
          acc
          (base-iter (- power 1) (* acc base))))
  (base-iter power 1))

(define (f n)
  (/ (^ phi n) (sqrt 5)))


;;; Part one
(f 1) ;;; 0.7236067977499789
(fib 1) ;;; 1
;;; 0.72 ≈ 1

(f 2) ;;; 1.1708203932499368
(fib 2) ;;; 1
;;; 1.17 ≈ 1

(f 3) ;;; 1.8944271909999157
(fib 3) ;;; 2
;;; 1.89 ≈ 2

(f 25) ;;; 75024.99999733426 
(fib 25) ;;; 75025
;;; 75024.99 ≈ 75025

;;; Therefore it can be proved that fib(n) is the closest positive integer to f(n)

;;; Part two

(define (fib-other n)
  (/ (- (^ phi n) (^ psi n)) (sqrt 5)))

;;; base case
(fib 0) ;;; 0
(fib-other 0) ;;; 0

;;; induction step
(fib 1) ;;; 1
(fib-other 1) ;;; 1.0

(fib 2) ;;; 1
(fib-other 2) ;;; 1.0

(fib 25) ;;; 75025
(fib-other 25) ;;; 75025.00000000004

;;; Using math induction we can see that fib(n) = fib-other(n) for every natural number because base case and induction step prove the statement to be correct

;;; ----------------------------------------------------------------------------------------------------------------------------------------------------------
#|
Mathematical proof

Fib(n)=(φ^n - ψ^n)/√5

Fib(0) = 0
Fib(1) = 1
Fib(n) = Fib(n-1) + Fib(n-2)

φ^2=φ+1

phi
φ=(1+√5)/2≈1.6180

psi
ψ=(1−√5)/2

Math induction - part two

Use induction and the definition of the Fibonacci numbers to prove that Fib(n)=(φ^n−ψ^n)/√5.

Base case
Fib(0) = 0 and therefore statement (φ^0 - ψ^0)/√5 should be equal to 0

(φ^n - ψ^n)/√5 = (((1+√5)/2)^0 - ((1-√5)/2)^0) / √5 = (1-1)/√5 = 0

Induction case
Fib(1) = 1 and therefore statement (φ^1 - ψ^1)/√5 should be equal to 1

(φ^n - ψ^n)/√5 = (((1+√5)/2)^1 - ((1-√5)/2)^1) / √5 = (1,618033989^1 - (−0,618033989)^1) / √5 =
(0,618033989+1,618033989) / √5 = 1

Using base and induction cases we can conclude that Fib(n)=(φ^n - ψ^n)/√5 is correct


Closest integer - part one
Prove that Fib(n) is the closest integer to φ^n/√5, where φ=(1+√5)/2

We proved that Fib(n)=(φ^n - ψ^n)/√5, so (ψ^n)/√5 = φ^n/√5 - Fib(n)

|#




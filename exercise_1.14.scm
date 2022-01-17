#lang sicp

(define (count-change amount) (cc amount 5))
(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
(- kinds-of-coins 1))
(cc (- amount
(first-denomination
kinds-of-coins))
kinds-of-coins)))))
(define (first-denomination kinds-of-coins)
(cond ((= kinds-of-coins 1) 1)
((= kinds-of-coins 2) 5)
((= kinds-of-coins 3) 10)
((= kinds-of-coins 4) 25)
((= kinds-of-coins 5) 50)))

(count-change 11)

#|

 In general, the number of steps (size complexity) required by a tree-recursive process will be propor-
 tional to the number of nodes in the tree, while the order of growth (space complexity) will
 be proportional to the maximum depth of the tree.

 In this exercise the maximum depth of the tree is when doing the change of amount n using only pennies.
 Therefore, the order of growth of space will be Θ(n).

 Number of steps (size complexity) is Θ(n^5) and this could be considered a very slow process because of many repetitions
across the nodes.

|#
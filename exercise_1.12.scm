#lang sicp

(define (pascal row col)
  (cond ((or (<= col 0) (> col row)) 0)
        ((= row 1) 1)
        (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))
        ))

;;; 1
(pascal 1 1)
;;; 2
(pascal 3 2)
;;; 3
(pascal 4 3)
;;; 4
(pascal 5 2)
;;; 10
(pascal 6 4)
;;; 20
(pascal 7 4)
;;; 21
(pascal 8 6)
;;; 70
(pascal 9 5)
;;; 1
(pascal 9 9)
;;; 56
(pascal 9 6)
;;; 0
(pascal 9 10)
;;; 0
(pascal 0 1)




#lang sicp

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b(remainder a b ))))

#|

GCD(206,40)
   GCD(40, (remainder 206, 40)
      GCD((remainder 206, 40)
          (remainder 40 (remainder 206, 40))
         GCD((remainder 40 (remainder 206, 40))
                           (remainder (remainder 206, 40) (remainder 40 (remainder 206, 40))
            GCD((remainder (remainder 206, 40) (remainder 40 (remainder 206, 40))
                                                              (remainder (remainder 40 (remainder 206, 40)) (remainder (remainder 206, 40) (remainder 40 (remainder 206, 40))

Remainder operations in normal order evaluation is called 21 times.
Operands are not evaluated until their values are needed, basically substituting operand expressions for parameters
until it obtained an expression involving only primitive operators, and would then perform the evaluation
--------------------------------------------------------------------------------------------------------
Remainder operation in applicative order evaluation is called 4 times.
Interpreter first evaluates the operator and operands and then applies the resulting procedure to the
resulting arguments

GCD(206,40)
   (GCD 40 (remainder 206,40))
       (GCD 40 6)
           (GCD 6 (remainder 40 6))
               (GCD 6,4)
                   (GCD 4 (remainder 6 4)
                       (GCD 4 2)
                           (GCD 2 (remainder 4 2) 
                                 (GCD 2 0)
                            
           = 2
|#

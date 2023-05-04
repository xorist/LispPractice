; lisp procedures are written in prefix notation.

; arithmetic -

;; addition
(+ 2 2)

;; subtraction
(- 4 2)

;; multiplicaiton
(* 2 2)

;; division
(/ 4 2)

; expressions can be nested.

(+ (* 2 4) (- 12 4))

#|

1. Write the Lisp expressions for the following maths expressions, and try evaluating them:

2*3 + 7*8

3*4*5

-1 * 2 + 3

|#

(+ (* 2 3) (* 7 8))

(* 3 4 5)

(* -1 (+ 2 3))

; 2. Write an expression that will give a random dice throw from 1 to 6.

(+ 1 (random 6))
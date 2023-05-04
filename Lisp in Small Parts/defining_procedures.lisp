; You can define procedures and they will then have the same status as other built-in procedures such as + and list.

(defun average (a b)
    (/ (+ a b) 2))

(average 10 20)

; arguments are evaluated prior to the procedure

(average (* 2 7) (* 8 8))

; procedures can be without parameters

(defun dice ()
    (+ 1 (random 6)))

(dice)

#|
1. Square a number
Define a procedure square that returns the square of a number. Check that:

(square 7)
gives 49.
|#

(defun square (x)
    (* x x))

(square 7)

#|
2. Find the nth triangular number
Define a procedure triangular that gives the nth triangular number defined as n(n+1)/2, and check that:

(triangular 10)
gives 55.
|#

(defun triangular (n)
    (/ (* n (+ n 1)) 2))

(triangular 10)

#|
3. Find the result of throwing two dice
Define a procedure two-dice that returns the total result of throwing two dice.
|#

(defun two-dice ()
    (+ (dice) (dice)))

(two-dice)
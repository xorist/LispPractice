; converting dollars to pounds
(defun convert (dollars) (* dollars 0.61))

(convert 100)

; "dollars" is a local variable, we can call it whatever we want and it acts as a box to hold any value we want to convert to pounds.

; define a variable to use for the exchange rate
(defparameter exchange-rate 0.61)

; redefine convert to use the exchange rate variable

(defun convert (dollars) (* dollars exchange-rate))

(convert 100)

; a common convention is to use asterisks (*) on either side of a global variable to help you remember that the variable is global. i.e. *exchange-rate*

; to change the value of a variable you can use setf.

(setf exchange-rate 0.7)

(convert 100)

; you can utilize let* to create variables that are only existing within the body of the procedure.

(defun average (1stnum 2ndnum)
    (let* ((sum (+ 1stnum 2ndnum))
           (result (/ sum 2)))
           result))

; the asterisk is a more geenral version of let. We will worry about that later.

#|
1. Convert between km and miles
Define a variable using defparameter to represent:

1 kilometer = 0.621371192 miles

Use this to define two procedures, convert-km and convert-miles, that convert miles to km and km to miles, and check that 80 km converts to about 50 miles.
|#

(defparameter kmtomrate 0.621371192)

(defun convert-km-to-m (km) (* km kmtomrate))

#|
2. Find the average of three numbers
Define a procedure average3 that finds the average of three numbers.

Check that:

(average3 21 7 8)
gives 12.
|#

(defun average3 (num1 num2 num3)
    (let* ((sum (+ num1 num2 num3)) (result (/ sum 3))) result))

#|
3. Cube the sum of two numbers
Here's a procedure cubesum that calculates (a + b) x (a + b) x (a + b):

(defun cubesum (a b)
  (* (+ a b) (+ a b) (+ a b)))
Use let* to write it so (a + b) is only calculated once.

Check that:

(cubesum 3 4)
gives 343.
|#

(defun cubesum (a b)
    (let* ((sum (+ a b)) (result (* sum sum sum))) result))

#|
4. Substitute values into a quadratic equation
Write a procedure pseudo-primes that substitutes x into the quadratic equation:

x2 - x + 41

Check that:

(pseudo-primes 40)
gives 1601.
|#

(defun pseudo-primes (x)
    (+ (- (* x x) x) 41))


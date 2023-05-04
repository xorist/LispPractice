; An example of a procedure is +, an example of an expression is (+ 1 2 3). Lisp evaluates arguments in an expression from left to right.

#|

Let's look at a more complicated example: (/ (- 7 1) (- 4 2)). The sequence is:

Evaluate (- 7 1) giving 6
Evaluate (- 4 2) giving 2
Evaluate (/ 6 2) giving 3
Return 3

|#

; to prevent evaluation, use the "quote" operator.

(quote (* 1 2))

; or the ' shorthand

'(* 1 2)

; you can quote arguments in certain expressions
(list '(- 1 3) (- 8 4))

; eval evaluates an expression passed as an argument
(eval '(+ 1 2))

; some things evaluates to it's self, so you don't need to quote it.
12
()

#|
1. Predict what the following Lisp expressions will give, and then check your answers by evaluating them:

(list (list 2 3) (list 4 5))
((2 3) (4 5))

(list '(list 2 3) '(list 4 5))
((list 2 3) (list 4 5))

'(list (list 2 3) (list 4 5))
(list (list 2 3) (list 4 5))
|#
; there are several functions for printing in lisp, but the simplest of them is print.
(print 123)

;; 123 will be outputted twice, the first as the effect of the procedure and the second as a result of print.

; here is an example for more clarity
(defun print-and-double (n) (print n) (* n 2))

;; this function if given 12, will print 12 and then print 24.
(print-and-double 12)

; you can print formatted strings with the format procedure. It takes two paramters.
;; The first is either t or nil, t to tell the procedure to print the result, nil to return it as a string.
;; The second is a format string, which tells the format procedure how to print the result.
;; The remaining parameters are the values to be printed.
(format t "The answer is ~a" (* 2 3))

; you can also include ~% in the format string to give a line break.
(format t "The answer is ~a~%" (* 2 3))

; use format to write a story-writing program.
(defun story (name food color)
    (format t "There was once a princess called ~a who liked ~a. One day ~a found some ~a ~a and ate so much that she died. The end." name food name color food))

; use the first .. second, etc procedure to return the first .. second, etc element of a list.
(first '(1 2 3 4 5))

; use the rest procedure to return all but the first element of a list.
(rest '(1 2 3 4 5))

; use the nth procedure to return the nth element of a list.
(nth 2 '(1 2 3 4 5))

; use the length procedure to get the length of a list.
(length '(1 2 3 4 5))

; use the cons procedure to construct a list. The first parameter is an object, and the second is a list. Returns a new list with the object added to the front of the list.
(cons 1 '(2 3 4 5))

;; the object can also be a list it's self.
(cons '(1 2 3) '(4 5 6))

; the append procedure takes any number of lists and joins them all together into a single list.
(append '(1 2 3) '(4 5 6))

; the reverse procedure takes a list and reverses it
(reverse '(1 2 3 4 5))

; write a procedure that inserts an item between the first and second items in the list.
(defun insert (item lst)
    (cons (first lst)
        (cons item
            (rest lst))))

; write a procedure called swap to exchange the first two items of a list.
(defun swap (lst)
    (cons (second lst)
        (cons (first lst)
            (rest (rest lst)))))

; write a procedure to duplicate the first item in the list.
(defun dup (lst)
    (cons (first lst)
        (cons (first lst)
            (rest lst))))

; return a random item from a list
(defun random-elt (lst)
    (nth (random (length lst)) lst))

; return the last item in a list
(defun last-elt (lst)
    (nth (- (length lst) 1) lst))
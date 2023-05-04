; to create a list, simply the items in enclosed brackets
(1 3 82 17 94)

; to create a list of lists, simply enclose each list in brackets
((1 2 3) (4 5 6) (7 8 9))

; an empty list is called nil
()

; use the list procedure to specify a list. This procedure returns a list of arguments.
(list 1 2 3 4 5)

; 1. Write an expression that will construct this list: (1 (2 (3 4)))
(list 1 (list 2 (list 3 4)))

; 2. Write an expression that will construct a list of two random numbers, each from 0 to 9.
(list (random 10) (random 10))

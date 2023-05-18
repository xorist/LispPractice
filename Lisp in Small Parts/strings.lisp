; you can include a double quote in a string by escaping it with a backslash
"He shoauted \"Help!\" and ran away."

; you can use the length procedure to find the length of a string.
(length "hello, there.")

; you can reverse a string with the reverse procedure
(reverse "dog")

; you can concatenate two or more strings together with the concatenate procedure. The second argument must be the data type, in this case a string.
(concatenate 'string "band" "age")

; you can get a subsequence of a string with the subseq procedure. Leaving out the third parameter you will get the rest of the string.
(subseq "averylongword" 5 9)

; piglatin procedure
(defun piglatin (word)
    (concatenate 'string (subseq word 1) (subseq word 0 1) "ay"))

; write a procedure to reverse all but the first and last letters of a word.
(defun midverse (word)
    (concatenate 'string (subseq word 0 1) (reverse (subseq word 1 (- (length word) 1))) (subseq word (- (length word) 1))))

; rotate a strong n places to the left
(defun rotate (word n)
    (concatenate 'string (subseq word n) (subseq word 0 n)))
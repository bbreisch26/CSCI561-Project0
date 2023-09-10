(print "Running Test Cases")

(print "--- Running test case for set-member ---")
(print "(set-member '(1 2) 1) => T")
(print (set-member '(1 2) 1))
(print "(set-member '(1 2) 3) =>  NIL")
(print (set-member '(1 2) 3))

(print "--- Running test case for set-union ---")
(print "(set-union (1 2) (2 4)) -> `(1 2 4)")
(print (set-union '(1 2) '(2 4)))

(print "--- Running test case for set-intersection ---")
(print "(set-intersection (1 2) (2 4)) => '(2)")
(print (set-intersection '(1 2) '(2 4)))

(print "--- Running test case for set-diff ---")
(print "(set-diff (1 2) (2 4)) => (1)")
(print (set-diff '(1 2) '(2 4)))

(print "--- Running test case for boolean-xor ---")
(print "(boolean-xor t nil) => t")
(print (boolean-xor t nil))


(print "--- Running test case for boolean-implies ---")

(print "(boolean-implies nil nil) => t")
(print (boolean-implies nil nil))

(print "--- Running test case for boolean-iff ---")
(print "(boolean-iff t nil) => nil")
(print (boolean-iff t nil))

(print "--- Running test case for boolean-eval ---")
(print "(boolean-eval (and t nil)) => nil")
(print (boolean-eval '(and t nil)))

(print "(boolean-eval (and t (or nil t)) => t")
(print (boolean-eval '(and t (or nil t)))) 

(print "--- Running test case for fold-left ---")
(print "(fold-left #'- 1 '(2 3)) => -4")
(print (fold-left #'- 1 '(2 3)))

(print "--- Running test case for fold-right ---")
(print "(fold-right #'- 1 '(2 3)) => 0")
(print (fold-left #'- 1 '(2 3)))

(print "--- Running test case for merge-sort ---")
(print "(merge-sort '(2 1 5 0) #'<) => '(0 1 2 5)")
(print (merge-sort '(2 1 5 0) #'<)







 

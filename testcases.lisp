(print "Running Test Cases")
(print "------------------------------------------------------------------------------")

(print "--- Running test case for set-member ---")
(print "(set-member '(1 2) 1) => T")
(print (set-member '(1 2) 1))
(print "(set-member '(1 2) 3) =>  NIL")
(print (set-member '(1 2) 3))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for set-union ---")
(print "(set-union (1 2) (2 4)) -> `(1 2 4)")
(print (set-union '(1 2) '(2 4)))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for set-intersection ---")
(print "(set-intersection (1 2) (2 4)) => '(2)")
(print (set-intersection '(1 2) '(2 4)))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for set-diff ---")
(print "(set-diff (1 2) (2 4)) => (1)")
(print (set-diff '(1 2) '(2 4)))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for boolean-xor ---")
(print "(boolean-xor t nil) => t")
(print (boolean-xor t nil))
(print "(boolean-xor nil nil) => nil")
(print (boolean-xor nil nil))
(print "(boolean-xor nil t) => t")
(print (boolean-xor nil t))
(print "(boolean-xor t t) => nil")
(print (boolean-xor t t))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for boolean-implies ---")
(print "(boolean-implies nil nil) => t")
(print (boolean-implies nil nil))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for boolean-iff ---")
(print "(boolean-iff t nil) => nil")
(print (boolean-iff t nil))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for boolean-eval ---")
(print "(boolean-eval (and t nil)) => nil")
(print (boolean-eval '(and t nil)))
(print "(boolean-eval (and t (or nil t)) => t")
(print (boolean-eval '(and t (or nil t))))
(print "(boolean-eval '(and (xor t nil) (not nil) (not (or t nil))) => nil")
(print (boolean-eval '(and (xor t nil) (not nil) (not (or t nil)))))
(print "(boolean-eval '(or (implies t nil) (and t t t) (not t))) => t")
(print (boolean-eval '(or (implies t nil) (and t t t) (not t))))
(print "(boolean-eval '(implies (or nil nil nil nil nil nil nil nil nil nil nil nil nil t) (xor t nil))) => t")
(print (boolean-eval '(implies (or nil nil nil nil nil nil nil nil nil nil nil nil nil t) (xor t nil))))
(print "(boolean-eval '(xor (and t t t t t t t t t nil) (or nil nil nil nil nil nil (not nil)))) => t")
(print (boolean-eval '(xor (and t t t t t t t t t nil) (or nil nil nil nil nil nil (not nil)))))
(print "(boolean-eval '(xor (not nil) (not (and (xor t nil) t))) => t")
(print (boolean-eval '(xor (not nil) (not (and (xor t nil) t)))))
(print "(boolean-eval '(and (implies t t) (not nil) (xor nil t) (iff (not nil) t) t (or (implies t t) nil))) => t")
(print (boolean-eval '(and (implies t t) (not nil) (xor nil t) (iff (not nil) t) t (or (implies t t) nil))))
(print "(boolean-eval '(and (and (and (and (or t nil) t) nil) t) t)) => nil")
(print (boolean-eval '(and (and (and (and (or t nil) t) nil) t) t)))
(print "(boolean-eval '(iff (and (not nil) t t t t (xor nil (not nil))) nil)) => nil")
(print (boolean-eval '(iff (and (not nil) t t t t (xor nil (not nil))) nil)))
(print "(boolean-eval '(and t t) => t")
(print (boolean-eval '(and t t)))
(print "(boolean-eval '(or t nil) => t")
(print (boolean-eval '(or t nil)))
(print "(boolean-eval '(xor t t) => nil")
(print (boolean-eval '(xor t t)))
(print "(boolean-eval '(implies t t) => t")
(print (boolean-eval '(implies t t)))
(print "(boolean-eval '(iff t t) => t")
(print (boolean-eval '(iff t t)))
(print "(boolean-eval '(and)) => t")
(print (boolean-eval '(and)))
(print "(boolean-eval '(or)) => nil")
(print (boolean-eval '(or)))
(print "(boolean-eval '(xor)) => nil")
(print (boolean-eval '(xor)))
(print "(boolean-eval '(implies)) => t")
(print (boolean-eval '(implies)))
(print "(boolean-eval '(iff)) => t")
(print (boolean-eval '(iff)))
(print "(boolean-eval 't) => t")
(print (boolean-eval 't))
(print "(boolean-eval 'nil) => nil")
(print (boolean-eval 'nil))
(print "(boolean-eval '()) => nil")
(print (boolean-eval '()))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for fold-left ---")
(print "(fold-left #'- 1 '(2 3)) => -4")
(print (fold-left #'- 1 '(2 3)))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for fold-right ---")
(print "(fold-right #'- 1 '(2 3)) => 0")
(print (fold-right #'- 1 '(2 3)))
(print "------------------------------------------------------------------------------")

(print "--- Running test case for merge-sort ---")
(print "(merge-sort '(2 1 5 0) #'<) => '(0 1 2 5)")
(print (merge-sort '(2 1 5 0) #'<))

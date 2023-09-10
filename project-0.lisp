(defun TODO (thing)
  (error "Unimplemented: ~A" thing))

;; Return T if item is a member of set.
;; Return NIL if item is not a member of set.
;; The type of set is list.
;;
;; Examples:
;;  (set-member '(1 2) 1) => T
;;  (set-member '(1 2) 3) =>  NIL
(defun set-member (set item)
  (if (null set)
    nil
    (if (= (car set) item)
      T
      (set-member (cdr set) item)
    )
  )
)

;; Return the union of set-1 and set-2.
;; The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;;
;; Examples:
;;   (set-union '(1 2) '(2 4)) => '(1 2 4)
(defun set-union (set-1 set-2)
  (if (null set-1)
    set-2
    (let ((head (car set-1)))
      (set-union (cdr set-1)  (if (set-member set-2 head)
        set-2
        (cons head set-2)
      ))
    ) 
  )
)

;; Return the intersection of set-1 and set-2.
;; The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;;
;; Examples:
;;   (set-intersection '(1 2) '(2 4)) => '(2)
(defun set-intersection (set-1 set-2)
  (if (null set-2) 
    nil
    (labels
      ((set-intersection-inner (set-1 set-2 out)
        (if (null set-1)
          out
          (set-intersection-inner (cdr set-1) set-2 
            (let ((head (car set-1)))
              (if (set-member set-2 head)
                (cons head out)
                out
              )
            )
          )
        )
      ))
      (set-intersection-inner set-1 set-2 nil)
    )
  )
)

;; Return the difference of set-1 and set-2.
;; The result should contain no duplicates.
;; Assume set-1 contains no duplicates and set-2 contains no duplicates.
;;
;; Examples:
;;   (set-diff '(1 2) '(2 4)) => '(1)
(defun set-diff (set-1 set-2)
  (if (null set-2)
    nil
    (labels
      ((set-difference-inner (set-1 set-2 out)
        (if (null set-1)
          out
          (set-difference-inner (cdr set-1) set-2 
            (let ((head (car set-1)))
              (if (set-member set-2 head)
                out
                (cons head out)
              )
            )
          )
        )
      ))
      (set-difference-inner set-1 set-2 nil)
    )
  )
)

;; Return the exclusive or of a and b
;;
;; Examples:
;;  (boolean-xor t nil) => t
;;  (boolean-xor nil nil) => nil
(defun boolean-xor (a b)
  (or (and a (not b))
       (and b (not a))))

;; Return the implication of a and b
;;
;; Examples:
;;  (boolean-implies t nil) => nil
;;  (boolean-implies nil nil) => t
(defun boolean-implies (a b)
  (or (not a)
       b))

;; Return the bi-implication (if and only if) of a and b
;;
;; Examples:
;;  (boolean-iff t nil) => nil
;;  (boolean-iff nil nil) => t
(defun boolean-iff (a b)
  (or (and a b)
      (and (not a)
	   (not b))))

;; Evaluate a boolean expression.
;; Handle NOT, AND, OR, XOR, IMPLIES, and IFF.
;;
;; Examples:
;;  (boolean-eval '(and t nil)) => nil
;;  (boolean-eval '(and t (or nil t)) => t
(defun boolean-eval (exp)
  (cond
    ((equal t exp) t)
    ((equal 'not (car exp))
     (TODO 'boolean-eval-not))
    ;; TODO: Handle other possible cases
    (t
     (TODO 'boolean-eval))))

;; Perform the left fold on the list
;;
;; Examples:
;;   (fold-left #'- 1 '(2 3)) => -4
(defun fold-left (function initial-value list)
  (if (null list)
      initial-value
      (fold-left function (funcall function initial-value (car list)) (cdr list))))


;; Perform the right fold on the list
;;
;; Examples:
;;   (fold-right #'- 1 '(2 3)) => 0
(defun fold-right (function initial-value list)
  (if (null list)
      initial-value
      (funcall function (car list) (fold-right function initial-value (cdr list)))))

;;Helper function to split list
;; Parameters: list -> list to split into two parts
;; Returns two sub lists '((half1) (half2))
;; Splits list based on index, but required a fold-left in order to reverse the first half
(defun merge-split (list)

  ;; n used to accumulate difference in length between list and accum
  (labels ((half (list n half1 half2)
	     (cond
	       ((<= (- n (length half1)) 1)
		;; Have to reverse half1 using fold-left
		(list (fold-left (lambda (x y) (cons y x)) nil half1) half2))
	       (t
		(half (cdr list) (- n 1) (cons (car list) half1) (cdr list))))))
    (half list (length list)  '() '())))

;;Helper function to merge two lists based on predicate
(defun merge-list (list1 list2 predicate)
  (cond
    ;;Edge cases - either both or a single list is empty
    ((and (eq list1 nil) (eq list2 nil)) nil)
    ((eq list1 nil) list2)
    ((eq list2 nil) list1)
    ;; Use predicate to evaluate where to sort list
    ;; Assuming binary-output operator (> and <= cover all cases)
    ((funcall
      predicate (car list1) (car list2))
     (cons (car list1) (merge-list (cdr list1) list2 predicate)))
    ;; ! list1[0] predicate list2[0]
    (t (cons (car list2) (merge-list list1 (cdr list2) predicate))))
  )


;; Perform merge sort on the lists.
;;
;; Parameters:
;;   list: The list to sort
;;   predicate: A function to compare elements of the list
;;
;; Examples:
;;     (merge-sort '(2 1 5 0) #'<) => '(0 1 2 5)
(defun merge-sort (list predicate)
  (cond
    ;; Edge cases - return nil when input is nil
    ((eq list nil) nil)
    ;; List of length 1 is already sorted
    ((eq (length list) 1) list)
    ;;Otherwise split into two halves
    (t
     (let* ((splitted (merge-split list))
	    (sorted1 (merge-sort (first splitted) predicate))
	    (sorted2 (merge-sort (second splitted) predicate)))
       (merge-list sorted1 sorted2 predicate))))
  
  )



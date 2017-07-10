; atom? as defined in the Guidelines for the reader
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

; Toys
(atom? (quote atom))
(atom? (quote turkey))
(atom? (quote 1492))
(atom? (quote u))
(atom? (quote *abc$))

(list? (quote (atom)))
(list? (quote (atom turkey or)))
(list? (quote (atom turkey) or))
(list? (quote ((atom turkey) or)))
(atom? (quote xyz)) ; Because all atoms are S-expressions we verify if it's an atom
(list? (quote (x y z))) ; Because all lists are s-expressions we verify if it's a list
(list? (quote ((x y) z))) ; Because all lists are s-expressions we verify if it's a list
(list? (quote (how are you doing so far)))
(list? (quote (((how) are) ((you) (doing so)) far)))
(list? (quote ()))
(atom? (quote ()))
(list? (quote (() () () ())))
(define l (quote (a b c)))
(car l)
(define l (quote ((a b c) x y z)))
(car l)
(define l (quote hotdog))
(car l)
(define l (quote ()))
(car l)





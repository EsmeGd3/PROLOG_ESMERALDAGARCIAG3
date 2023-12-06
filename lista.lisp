(defun recorre (lista)
(princ (car lista))
(recorre (cdr lista))
)

(recorre '(1 2 3 4 5 ))
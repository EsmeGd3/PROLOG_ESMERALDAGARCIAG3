(defun recorre (lista)
(format t "~A-> % ~A" (car lista) (+ 2 3))
(if lista 
(recorre (cdr lista))
)
)

(recorre '( 1 2 3 4 5 ))
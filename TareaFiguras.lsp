(defun cubo()
(princ "Dame la medida de un lado: ")
(setq lado1(read))
(setq resultadoV (* lado1 lado1 lado1))
(setq resultadoA (* lado1 lado1 (* 6)))
(princ "Volumen del cubo: ")
(write resultadoV)
(terpri)
(princ "Area de superficie del Cubo: ")
(write resultadoA)
)

(defun rectangulo()
(princ "Dame la medida de la anchura: ")
(setq an(read))
(princ "Dame la medida de la base: ")
(setq b(read))
(princ "Dame la medida de la altura: ")
(setq al(read))
(setq resultadoV (* an b al))
(setq resultadoA (* b al ))
(princ "Volumen del rectangulo: ")
(write resultadoV)
(terpri)
(princ "Area de superficie del rectangulo: ")
(write resultadoA)
)

(defun triangulo()
(princ "Dame la medida de la anchura: ")
(setq an(read))
(princ "Dame la medida de la base: ")
(setq b(read))
(princ "Dame la medida de la altura: ")
(setq al(read))
(setq resultadoV (* an b al(/ 3)))
(setq resultadoA (/ (* b al) 2))
(princ "Volumen del triangulo: ")
(write resultadoV)
(terpri)
(princ "Area de superficie del triangulo: ")
(write resultadoA)
)

(defun circulo()
(princ "Dame el radio del circulo: ")
(setq radio (read))
(setq resultadoV (/ (* 4.0 3.14159 (* radio radio radio)) 3.0)) 
(setq resultadoA (* 3.14159 (* radio radio))) 
(princ "Volumen del circulo: ")
(write resultadoV)
(terpri)
(princ "Area de superficie del circulo: ")
(write resultadoA)
)
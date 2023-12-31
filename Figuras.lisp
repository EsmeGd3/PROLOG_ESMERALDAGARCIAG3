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

(defun trapecio()
(princ "Dame la medida de la base mayor del trapecio: ")
(setq bM (read))
(princ "Dame la medida de la base menor del trapecio: ")
(setq bM (read))
(princ "Dame la altura del trapecio: ")
(setq al (read))
(princ "Dame la medida del lado inclinado del trapecio: ")
(setq lI (read))
(setq resultadoA (/ (+ bM bM) 2 (* al))) 
(setq resultadoV (* resultadoA al)) 
(princ "Volumen del trapecio: ")
(write resultadoV)
(terpri)
(princ "Area de superficie del trapecio: ")
(write resultadoA)
)

(defun hexagono()
(princ "Dame la medida de un lado del hexagono: ")
(setq lado (read))
(princ "Dame la altura del hexagonal: ")
(setq al (read))
(setq resultadoA (/ (* 3 (sqrt 3) (* lado lado)) 2))
(setq resultadoV (* resultadoA al)) 
(princ "Volumen del hexagono: ")
(write resultadoV)
(terpri)
(princ "Area base del hexagono: ")
(write resultadoA)
)

(defun cilindro()
(princ "Dame el radio de la base del cilindro: ")
(setq radio (read))
(princ "Dame la altura del cilindro: ")
(setq al (read))
(setq resultadoA (+ (* 2 3.14159 (* radio radio)) (* 2 3.14159 radio al)))
(setq resultadoV (* 3.14159 (* radio radio) al)) 
(princ "Volumen del cilindro: ")
(write resultadoV)
(terpri)
(princ "Area base del cilindro: ")
(write resultadoA)
)

(defun cono()
(princ "Dame el radio de la base del cono: ")
(setq radio (read))
(princ "Dame la altura del cono: ")
(setq al (read))
(setq resultadoA (* 3.14159 radio (+ radio (sqrt (+ (* al al) (* radio radio))))))
(setq resultadoV (/ (* 3.14159 (* radio radio) al) 3)) 
(princ "Volumen del conito: ")
(write resultadoV)
(terpri)
(princ "Area base del conito: ")
(write resultadoA)
)

; ya no se me ocurren mas figuras faltan 2

(defun piramideHexagonal()
(princ "Dame la medida de un lado del hexagonal base: ")
(setq lado (read))
(princ "Dame la altura de la piramide hexagonal: ")
(setq al (read))
(setq areab (/ (* 3 (sqrt 3) (* lado lado)) 2)) ; 
(setq areal (* 6 (/ (* lado lado (sqrt 3)) 4))) ; 
(setq resultadoA (+ areab areal)) ; 
(setq resultadoV (/ (* areab al) 3)) ; 
(princ "Volumen del conito: ")
(write resultadoV)
(terpri)
(princ "Area base del conito: ")
(write resultadoA)
)

(defun piramidePentagonal()
(princ "Dame la medida de un lado del pentagono base: ")
(setq lado (read))
(princ "Dame la altura de la piramide pentagonal: ")
(setq al (read))
(setq areab (/ (* 5 (* lado lado) (/ 1 (tan (/ 3.14159 5)))) 4)) ; 
(setq areal (* 5 (/ (* lado al) 2))) ; 
(setq resultadoA (+ areab areal)) ; 
(setq resultadoV (/ (* areab al) 3)) ; 
(princ "Volumen del conito: ")
(write resultadoV)
(terpri)
(princ "Area base del conito: ")
(write resultadoA)
)

; No se si estan bien los resultados jaja yo digo que chi



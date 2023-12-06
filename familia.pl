padre(juan).
padre(antonio).
padre(Luiso).
padre(eduardo).
madre(Luisa).
padrede(juan, julio).
padrede(juan, jose).
padrede(pedro, juan).
madrede(Luisa, maria).
abuelo(X,Y):- padrede(X,Y) ,padrede(W,Y).
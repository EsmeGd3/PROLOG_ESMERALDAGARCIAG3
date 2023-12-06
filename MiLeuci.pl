leuci:-	
	
	writeln('Hola, mi nombre es Leuci, tu chatbot de ayuda sobre leucemia.'),
    writeln('Por favor, ingresa tu consulta (usar solo minusculas y "." al final):'),
	writeln('Dime lo que quieras saber, como te sientes y te ayudare depende de lo que preguntes.'),	
	readln(Input),
	eliza(Input),!.

eliza(Input):- Input == ['Adios'],
	writeln('Nos vemos, espero haberte ayudado y vuelva pronto.'), !.
eliza(Input):- Input == ['adios'],
	writeln('Nos vemos, espero haberte ayudado y vuelva pronto.'), !.
eliza(Input):- Input == ['adios', '.'],
	writeln('Nos vemos, espero haberte ayudado y vuelva pronto.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Nos vemos, espero haberte ayudado y vuelva pronto.'), !.

	eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),

	% si he llegado aqui es que he
	% hallado el template correcto:

	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.

	
    % Leucemia
	template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'como', estas, '?'], [4]).
    template([estoy, bien, gracias, _], ['Excelente, Dime en que te puedo ayudar?'], []).
    template([bien, gracias, _], ['Excelente, Dime en que te puedo ayudar?'], []).
    template([muy, bien, gracias, _], ['Excelente, Dime en que te puedo ayudar?'], []).
	template([cual, es, tu, nombre, ?, _], ['Mi nombre es leuci, soy una base de conocimientos que fue creada para abrobar la materia de PROLOG, aparte de eso te puedo ayudar brindandote informacion acerca de la Leucemia :3'], []).
	template([cual, es, tu, nombre, _], ['Mi nombre es leuci, soy una base de conocimientos que fue creada para abrobar la materia de PROLOG, aparte de eso te puedo ayudar brindandote informacion acerca de la Leucemia :3'], []).
	template([que, informacion, sabes, sobre, la, leucemia, ?, _], ['Sobre la Leucemia, se acerca de varios temas que te pueden interesar como: Causas y factores de riesgo, Tipos y clasificacion, Sintomas y diagnostico, Tratamientos disponibles, Investigacion y avances medicos, Impacto emocional y apoyo, Prevencion y estilo de vida. ¿Dime que te interesa saber? :3'], []).
	template([que, es, leucemia, ?, _], ['La leucemia es un tipo de cancer que afecta a las celulas sanguineas y a la medula osea, donde se producen estas celulas. Se caracteriza por la produccion descontrolada de celulas sanguineas anormales, que remplazan a las celulas sanguineas normales.'], []).
	template([que, tipos, de, leucemia, hay, ?, _], ['Hay varios tipos de leucemia, siendo los principales la leucemia mieloide aguda (LMA), la leucemia mieloide cronica (LMC), la leucemia linfoblastica aguda (LLA) y la leucemia linfoblastica cronica (LLC).'], []).
    template([que, tratamiento, debo, tomar, si, tengo, leucemia, ?, _], ['El tratamiento especifico de la leucemia depende del tipo exacto de leucemia, la edad del paciente, la salud general y otros factores individuales.'], []).
	template([que, es, quimioterapia, ?, _], ['La quimioterapia es un tratamiento comun para la leucemia y utiliza medicamentos para eliminar o controlar las celulas cancerosas. Puede administrarse por via oral o intravenosa.'], []).
	
    
	% LMA
	template([que, es, leucemia, mieloide, aguda, ?, _], ['Es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
    template([que, es, lma, ?, _], ['La leucemia mieloide aguda (LMA), es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
    template([que, celulas, afecta, la, lma, ?, _], ['La LMA afecta a las celulas mieloides, que normalmente se desarrollarian para convertirse en globulos rojos, globulos blancos y plaquetas.'], []).
    template([cual, es, la, principal, caracteristica, de, la, lma ?, _], ['Es la acumulacion de Celulas Inmaduras por que se caracteriza por la rapida proliferacion de celulas mieloides inmaduras en la medula osea, lo que interfiere con la produccion normal de celulas sanguineas'], []).
    template([cuales, son, los, sintomas, de, la, lma, ?, _], ['Fatiga, Dificultad para respirar, Mayor susceptibilidad a las infecciones, Hematomas y sangrado facil, Dolor en los huesos y articulaciones.'], []).
    template([que , diagnostico, se , realiza, de, la, lma, ?, _], ['Analisis de Sangre, Biopsia de Medula Osea, Citogenetica.'], []).
    
	% LMC
	template([que, es, leucemia, mieloide, aguda, ?, _], ['Es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
    template([que, es, lma, ?, _], ['La leucemia mieloide aguda (LMA), es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
    template([que, celulas, afecta, la, lma, ?, _], ['La LMA afecta a las celulas mieloides, que normalmente se desarrollarian para convertirse en globulos rojos, globulos blancos y plaquetas.'], []).
    template([cual, es, la, principal, caracteristica, de, la, lma ?, _], ['Es la acumulacion de Celulas Inmaduras por que se caracteriza por la rapida proliferacion de celulas mieloides inmaduras en la medula osea, lo que interfiere con la produccion normal de celulas sanguineas'], []).
    template([cuales, son, los, sintomas, de, la, lma, ?, _], ['Fatiga, Dificultad para respirar, Mayor susceptibilidad a las infecciones, Hematomas y sangrado facil, Dolor en los huesos y articulaciones.'], []).
    template([que , diagnostico, se , realiza, de, la, lma, ?, _], ['Analisis de Sangre, Biopsia de Medula Osea, Citogenetica.'], []).
    
	% LLA
	template([que, es, leucemia, mieloide, aguda, ?, _], ['Es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
    template([que, es, lma, ?, _], ['La leucemia mieloide aguda (LMA), es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
    template([que, celulas, afecta, la, lma, ?, _], ['La LMA afecta a las celulas mieloides, que normalmente se desarrollarian para convertirse en globulos rojos, globulos blancos y plaquetas.'], []).
    template([cual, es, la, principal, caracteristica, de, la, lma ?, _], ['Es la acumulacion de Celulas Inmaduras por que se caracteriza por la rapida proliferacion de celulas mieloides inmaduras en la medula osea, lo que interfiere con la produccion normal de celulas sanguineas'], []).
    template([cuales, son, los, sintomas, de, la, lma, ?, _], ['Fatiga, Dificultad para respirar, Mayor susceptibilidad a las infecciones, Hematomas y sangrado facil, Dolor en los huesos y articulaciones.'], []).
    template([que , diagnostico, se , realiza, de, la, lma, ?, _], ['Analisis de Sangre, Biopsia de Medula Osea, Citogenetica.'], []).
    
	% LLC
	template([que, es, leucemia, mieloide, aguda, ?, _], ['Es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
    template([que, es, lma, ?, _], ['La leucemia mieloide aguda (LMA), es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
    template([que, celulas, afecta, la, lma, ?, _], ['La LMA afecta a las celulas mieloides, que normalmente se desarrollarian para convertirse en globulos rojos, globulos blancos y plaquetas.'], []).
    template([cual, es, la, principal, caracteristica, de, la, lma ?, _], ['Es la acumulacion de Celulas Inmaduras por que se caracteriza por la rapida proliferacion de celulas mieloides inmaduras en la medula osea, lo que interfiere con la produccion normal de celulas sanguineas'], []).
    template([cuales, son, los, sintomas, de, la, lma, ?, _], ['Fatiga, Dificultad para respirar, Mayor susceptibilidad a las infecciones, Hematomas y sangrado facil, Dolor en los huesos y articulaciones.'], []).
    template([que , diagnostico, se , realiza, de, la, lma, ?, _], ['Analisis de Sangre, Biopsia de Medula Osea, Citogenetica.'], []).
    
   
	% Sintomas

	template([tengo, muchos, s(_), es, sintoma, de, leucemia, ?, _], [flagSintomas], [2]).
	template([si, tengo, un, dolor, de, s(_), es, sintoma, de, leucemia, ?, _], [flagSintomas], [5]).
	template([si, tengo, un, s(_), es, sintoma, de, leucemia, _], [flagSintomas], [3]).
	template([tengo, s(_), es, sintoma, de, leucemia, ?, _], [flagSintomas], [1]).
	template([si, tengo, s(_), es, sintoma, de, leucemia, ?, _], [flagSintomas], [2]).
	template([si, tengo, problemas, de, s(_), es, sintoma, de, leucemia, ?, _], [flagSintomas], [4]).

	% tratamientos
	template([puedo, tomar, s(_), para, la, leucemia, ?, _], [flagMedicamentos], [2]).
	template([puedo, tomar, s(_), ?, _], [flagMedicamentos], [2]).
	

	
	
	% sintomas de Leucemia.

	template([cuales, son, los, sintomas, de, leucemia, ?], ListaResultado, []):-
		findall(Sintomas, sintomas(Sintomas), ListaResultado).

	% Especialista en el area de la enfermedad Leucemia

	template([cuales, son, los, especialistas], ListaResultado, []):-
		findall(Especialistas, especialista(Especialistas), ListaResultado).

	% Medicina para curar la Leucemia

	template([que, medicamento, cura, la, leucemia], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).
	
	template([que, medicamento, puedo, usar], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).
	
	template([que, medicamento, puedo, tomar], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).
	
	template([que, necesito, para, curarme], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).

	template([que, medicamentos, necesito, para, curarme], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).	
	
	template([que, medicamentos, necesito], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).	
	
	template([medicamento], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).
     

	 % error
	template(_, ['Disculpa, no entiendo tu pregunta, puedes volver a escribir por favor, recuerdo poner un "." al final de cada oracion.'], []). 
   


	% Reglas para las flags de la enfermedad

	% Sintomas
		elizaSintomas(X, R):- sintomas(X), R = [si, X, es, muy, probable, que, sea, un, sintoma, de, leucemia].
    	elizaSintomas(X, R):- \+sintomas(X), R = [X, no, es, un, sintoma, de, la, leucemia].
		elizafamSintomas(X,R) :- enfermedadSint(X,Y), R=["si tienes sintoma de", X, "es", Y].	
		enfermedadSint(debilidad, leucemia).
		enfermedadSint(fatiga, leucemia).
		enfermedadSint(perdidapeso, leucemia).
		enfermedadSint(fiebre, leucemia).
		enfermedadSint(sudores, leucemia).
		enfermedadSint(hematomas, leucemia).
		enfermedadSint(problemas_de_encias, leucemia).
		enfermedadSint(problemas_neurologicos, leucemia).
		enfermedadSint(hinchazon, leucemia).
		enfermedadSint(dolor_de_huesos, leucemia).
		enfermedadSint(sangrado_facil, leucemia).
		sintomas(debilidad).
		sintomas(fatiga).
		sintomas(perdidapeso).
		sintomas(fiebre).
		sintomas(sudores).
		sintomas(hematomas).
		sintomas(problemas_de_encias).
		sintomas(problemas_neurologicos).
		sintomas(hinchazon).
		sintomas(dolor_de_huesos).
		sintomas(sangrado:facil).

   


	% Especialista
		elizaEspecialista(X, R):- especialista(X), R = [si, X, es, un, especialista, de, leucemia].
    	elizaEspecialista(X, R):- \+especialista(X), R = [X, no, es, un, especialista, de, leucemia].
		especialista(hematologo_oncologo).
		especialista(patologo).
		especialista(hematologo_oncologo).
		especialista(oncologo_radioterapeuta).
		especialista(especialista_en_trasplante_de_medula_osea).
		
		
	% Medicina
		elizaMedicamento(X, R):- medicinas(X), R = [si, X, es, un, tratamiento, para, curar, la, leucemia].
		elizaMedicamento(X, R):- \+medicinas(X), R = [X, no, es, un, tratamiento, para, curar, la, leucemia].
		medicinas(quimioterapia).
		medicinas(radioterapia).
		medicinas(inmunoterapia).
		medicinas(terapia_dirigida:).
		medicinas(trasplante_de_medula_osea).

	
match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continuo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.


replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.

% Enfermedad

% Eliza Sintomas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintomas,
    elizaSintomas(Atom, R).

replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagfamSintomas,
    elizafamSintomas(Atom, R).
		  
% Eliza Especialistas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagEspecialistas,
    elizaEspecialista(Atom, R).

% Eliza Especialistas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagMedicamentos,
    elizaMedicamento(Atom, R).

% Tipo leucemia Tratamientos


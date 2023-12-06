leuci:-	
	
	writeln('Hola, mi nombre es Leuci, tu chatbot de ayuda sobre leucemia.'),
    writeln('Por favor, ingresa tu consulta (usar solo minúsculas y "." al final):'),
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

	% si he llegado aquí es que he
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
	template([cual, es, tu, nombre, ?, _], ['Mi nombre es leuci, soy una base de conocimientos que fue creada para abrobar la materia de PROLOG, aparte de eso te puedo ayudar brindandote información acerca de la Leucemia :3'], []).
	template([cual, es, tu, nombre, _], ['Mi nombre es leuci, soy una base de conocimientos que fue creada para abrobar la materia de PROLOG, aparte de eso te puedo ayudar brindandote información acerca de la Leucemia :3'], []).
	template([que, informacion, sabes, sobre, la, leucemia, ?, _], ['Sobre la Leucemia, se acerca de varios temas que te pueden interesar como: Causas y factores de riesgo, Tipos y clasificacion, Sintomas y diagnostico, Tratamientos disponibles, Investigacion y avances medicos, Impacto emocional y apoyo, Prevencion y estilo de vida. ¿Dime que te interesa saber? :3'], []).
	template([que, es, leucemia, ?, _], ['La leucemia es un tipo de cancer que afecta a las celulas sanguineas y a la medula osea, donde se producen estas celulas. Se caracteriza por la produccion descontrolada de celulas sanguineas anormales, que remplazan a las celulas sanguineas normales.'], []).
	template([que, tipos, de, leucemia, hay, ?, _], ['Hay varios tipos de leucemia, siendo los principales la leucemia mieloide aguda (LMA), la leucemia mieloide cronica (LMC), la leucemia linfoblastica aguda (LLA) y la leucemia linfoblastica cronica (LLC).'], []).
	
    % error
	template(_, ['Disculpa, no entiendo tu pregunta, puedes volver a escribir por favor, recuerdo poner un "." al final de cada oracion.'], []). 
   
	% Sintomas

	template([si, tengo, dolor, de , s(_), es, sintoma, de, faringitis, _], [flagSintomas], [4]).
	template([si, tengo, s(_), es, sintoma, de, faringitis, _], [flagSintomas], [2]).
	template([si, tengo, una, s(_), es, sintoma, de, faringitis, _], [flagSintomas], [3]).
	template([si, tengo, problemas, s(_), es, sintoma, de, faringitis, _], [flagSintomas], []).
	template([tengo, sintoma, de, s(_)], [flagfamSintomas],[3]).
	

	% Preguntas acerca de medicamentos que puede tomar.

	template([puedo, tomar, s(_), para, la, faringitis, _], [flagMedicamentos], [2]).
	template([puedo, tomar, s(_)], [flagMedicamentos], [2]).
	
	
	% sintomas de faringitis.

	template([cuales, son, los, sintomas], ListaResultado, []):-
		findall(Sintomas, sintomas(Sintomas), ListaResultado).

	% Especialista en el area de la enfermedad faringitis

	template([cuales, son, los, especialistas], ListaResultado, []):-
		findall(Especialistas, especialista(Especialistas), ListaResultado).

	% Medicina para curar la faringitis

	template([que, medicamento, cura, la, faringitis], ListaResultado, []):-
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

	% Comienzo de template para Game of thrones
	
		template([que, es, game, of, thrones, _], ['fue una serie de television de fantasía epica creada por David Benioff y D. B. Weiss. La serie se baso en la serie de novelas "Canción de hielo y fuego" escrita por George R. R. Martin. La primera novela de la serie, "Juego de tronos", sirvio como base para la primera temporada de la serie de television.'],[]).
		template([de, que, trata, game, of, thrones, _], ['"Game of Thrones" es una serie de television que sigue las luchas de varias casas nobles por el control del Trono de Hierro en el continente ficticio de Westeros. La trama esta llena de intrigas politicas, guerras, dragones, magia y personajes complejos. A lo largo de la serie, se exploran temas de poder, traicion y supervivencia en un mundo medieval de fantasia.'],[]).
		template([cual, es, la, trama, principal, de, game, of, thrones, _], ['"Game of Thrones" narra la lucha brutal y compleja entre diversas casas nobles por el Trono de Hierro en los Siete Reinos de Westeros, con elementos de guerra, política, traición y fantasía. La serie destaca por sus giros inesperados y la intrincada red de personajes e intrigas.'],[]).
		template([cual, es, la, trama, secundaria, de, game, of, thrones, _], ['En la trama secundaria, la Guardia de la Noche defiende Westeros de amenazas más allá de la Muralla, como los Caminantes Blancos. Personajes como Jon Snow enfrentan peligros en el norte, añadiendo elementos de fantasía a la historia.'],[]).
		template([cual, es, el, conflicto, central, de, la, serie, _], ['El conflicto central en "Game of Thrones" es la lucha por el Trono de Hierro, que simboliza el dominio sobre los Siete Reinos de Westeros. Múltiples casas nobles, cada una con sus propios intereses y reclamaciones al trono, se enfrentan en una compleja red de intrigas políticas, alianzas cambiantes y conflictos armados. Este conflicto central es la fuerza impulsora detrás de la mayoría de las acciones y eventos en la serie, mientras los personajes luchan por el poder y la supervivencia en un mundo lleno de traiciones y desafíos.'],[]).
	
	% Informacion de las casas

		template([la, casa, s(_), es, de, la, serie, game, of, thrones, _], [flagCasas], [2]).
		template([cuales, son, las, casas, que, existen ], ListaResultado, []):-
		findall(Casas, casas(Casas), ListaResultado).
	
	% Casa de los stark

		template([es, s(_), de, la, casa, de, los, stark, _], [flagStark], [1]).
		template([quien, es, el, hijo, de, s(_)], [flagfamStark],[5]).
		template([que, emblema, representa, la, casa, de, los, stark, _], ['El emblema que representa la casa de los stark es un lobo azul.'],[]).
		template([cuales, son, los, miembros, de, la, casa, stark ], ListaResultado, []):-
			findall(Stark, stark(Stark), ListaResultado).
	
	% Casa de los targaryen

		template([es, s(_), de, la, casa, de, los, targaryen, _], [flagTargaryen], [1]).
		template([quien, es, el, hijo, de, s(_)], [flagfamTargaryen],[5]).
		template([que, emblema, representa, la, casa, de, los, targaryen, _], ['El emblema que representa la casa de los targaryen es un dragon de tres cabezas rojo.'],[]).
		template([cuales, son, los, miembros, de, la, casa, targaryen ], ListaResultado, []):-
			findall(Targaryen, targaryen(Targaryen), ListaResultado).
	
	% Casa de los greyjoy

		template([es, s(_), de, la, casa, de, los, greyjoy, _], [flagGreyjoy], [1]).
		template([quien, es, el, hijo, de, s(_)], [flagfamGreyjoy],[5]).
		template([que, emblema, representa, la, casa, de, los, greyjoy, _], ['El emblema que representa la casa de los greyjoy es un kraken dorado sobre un fondo negro.'],[]).
		template([cuales, son, los, miembros, de, la, casa, greyjoy ], ListaResultado, []):-
			findall(Greyjoy, greyjoy(Greyjoy), ListaResultado).
	
	% Casa de los tyrell

		template([es, s(_), de, la, casa, de, los, tyrell, _], [flagTyrell], [1]).
		template([quien, es, el, hijo, de, s(_)], [flagfamTyrell],[5]).
		template([que, emblema, representa, la, casa, de, los, tyrell, _], ['El emblema que representa la casa de los tyrell es una rosa dorada sobre un campo verde.'],[]).
		template([cuales, son, los, miembros, de, la, casa, tyrell ], ListaResultado, []):-
			findall(Tyrell, tyrell(Tyrell), ListaResultado).
	
	% Casa de los martell

		template([es, s(_), de, la, casa, de, los, martell, _], [flagMartell], [1]).
		template([quien, es, el, hijo, de, s(_)], [flagfamMartell],[5]).
		template([que, emblema, representa, la, casa, de, los, martell, _], ['El emblema que representa la casa de los martell es un sol y una lanza dorados sobre un fondo naranja. '],[]).
		template([cuales, son, los, miembros, de, la, casa, martell ], ListaResultado, []):-
			findall(Martell, martell(Martell), ListaResultado).
	
	% Casa de los lannister

		template([es, s(_), de, la, casa, de, los, lannister, _], [flagLannister], [1]).
		template([quien, es, el, hijo, de, s(_)], [flagfamLannister],[5]).
		template([que, emblema, representa, la, casa, de, los, lannister, _], ['El emblema que representa la casa de los lannister es un leon dorado sobre un campo rojo. '],[]).
		template([cuales, son, los, miembros, de, la, casa, lannister ], ListaResultado, []):-
			findall(Lannister, lannister(Lannister), ListaResultado).

	% Casa de los baratheon

		template([es, s(_), de, la, casa, de, los, baratheon, _], [flagBaratheon], [1]).
		template([quien, es, el, hermano, de, s(_)], [flagfamBaratheon],[5]).
		template([que, emblema, representa, la, casa, de, los, baratheon, _], ['El emblema que representa la casa de los baratheon es un ciervo coronado negro sobre un campo dorado. '],[]).
		template([cuales, son, los, miembros, de, la, casa, baratheon ], ListaResultado, []):-
			findall(Baratheon, baratheon(Baratheon), ListaResultado).

	% Reglas para las flags de la enfermedad

	% Sintomas
		elizaSintomas(X, R):- sintomas(X), R = [si, X, es, muy, probable, que, sea, un, sintoma, de, la, faringitis].
    	elizaSintomas(X, R):- \+sintomas(X), R = [X, no, es, un, sintoma, de, la, faringitis].
		elizafamSintomas(X,R) :- enfermedadSint(X,Y), R=["si tienes sintoma de", X, "es", Y].	
		enfermedadSint(malestargeneral, faringitis).
		enfermedadSint(fiebre, faringitis).
		enfermedadSint(doloraltragar, faringitis).
		enfermedadSint(enrojecimientodelafaringe, faringitis).
		enfermedadSint(gangliosinflamados, faringitis).
		enfermedadSint(infeccion, faringitis).
		enfermedadSint(dolordegarganta, faringitis).
		sintomas(malestargeneral).
		sintomas(fiebre).
		sintomas(doloraltragar).
		sintomas(enrojecimientodelafaringe).
		sintomas(gangliosinflamados).
		sintomas(infeccion).
		sintomas(dolordegarganta).

	% Especialista
		elizaEspecialista(X, R):- especialista(X), R = [si, X, es, un, especialista, de, faringitis].
    	elizaEspecialista(X, R):- \+especialista(X), R = [X, no, es, un, especialista, de, faringitis].
		especialista(otorrinolaringologia).
		
	% Medicina
		elizaMedicamento(X, R):- medicinas(X), R = [si, X, es, un, medicamento, para, curar, la, faringitis].
		elizaMedicamento(X, R):- \+medicinas(X), R = [X, no, es, un, medicamento, para, curar, la, faringitis].
		medicinas(penicilina).
		medicinas(amoxicilina).

	% Reglas para las flags de Game of thrones

	% Casas
		elizaCasa(X, R):- casas(X), R = [si, X, es, una, casa, de, la, serie, de, game, of, thrones].
		elizaCasa(X, R):- \+casas(X), R = [X, no, es, una, casa, de, la, serie].
		casas('stark').
		casas('targaryen').
		casas('greyjoy').
		casas('tyrell').
		casas('martell').
		casas('lannister').
		casas('baratheon').
		casas('snow').

	% Miembros de las casas
		% casa de los stark
		elizaStark(X, R):- stark(X), R = [si, X, es, un, stark, de, la, casa, stark, de, winterfell].
		elizaStark(X, R):- \+stark(X), R = [X, no, es, de, la, casa, de, los, stark].
		familiaStark(X,R) :- padreStark(X,ListaResultado), R=["el hij@ de", X, "es", ListaResultado].
		familiaStark(X,R) :- madreStark(X,ListaResultado), R=["el hij@ de", X, "es", ListaResultado].	
		padreStark(ned, robb).		 
		padreStark(ned, sansa).
		padreStark(ned, arya). 
		padreStark(ned, bran). 
		padreStark(ned, rickon).
		madreStark(catelyn, robb).		 
		madreStark(catelyn, sansa).
		madreStark(catelyn, arya). 
		madreStark(catelyn, bran). 
		madreStark(catelyn, rickon).
		stark('ned').
		stark('catelyn').
		stark('robb').
		stark('sansa').
		stark('arya').
		stark('bran').
		stark('rickon').
	
		% casa de los targaryen
		elizaTargaryen(X, R):- targaryen(X), R = [si, X, es, un, targaryen, de, la, casa, targaryen, ciudad, de, valyria].
		elizaTargaryen(X, R):- \+targaryen(X), R = [X, no, es, de, la, casa, de, los, targaryen].
		familiaTargaryen(X,R) :- padreTargaryen(X,ListaResultado), R=["el hij@ de", X, "es", ListaResultado].
		padreTargaryen(aerys, rhaegar).		 
		padreTargaryen(aerys, viserys).		 
		padreTargaryen(aerys, daenerys).		 
		targaryen('aerys_ll_El_rey_loco').
		targaryen('rhaegar').
		targaryen('viserys').
		targaryen('daenerys').

		% casa de los greyjoy
		elizaGreyjoy(X, R):- greyjoy(X), R = [si, X, es, un, greyjoy, de, la, casa, greyjoy, de, las, islas, de, hierro].
		elizaGreyjoy(X, R):- \+greyjoy(X), R = [X, no, es, de, la, casa, de, los, greyjoy].
		familiaGreyjoy(X,R) :- padreGreyjoy(X,ListaResultado), R=["el hij@ de", X, "es", ListaResultado].
		padreGreyjoy(balon, theon).	
		padreGreyjoy(balon, yara).	
		padreGreyjoy(balon, victarion).	
		greyjoy('balon'). 
		greyjoy('theon'). 
		greyjoy('yara'). 
		greyjoy('victarion'). 

		% casa de tyrell
		elizaTyrell(X, R):- tyrell(X), R = [si, X, es, un, tyrell, de, la, casa, tyrell, de, altojardin].
		elizaTyrell(X, R):- \+tyrell(X), R = [X, no, es, de, la, casa, de, los, tyrell].
		familiaTyrell(X,R) :- padreTyrell(X,ListaResultado), R=["el hij@ de", X, "es", ListaResultado].
		padreTyrell(mace, willas).	
		padreTyrell(mace, garlan).	
		padreTyrell(mace, margaery).	
		padreTyrell(mace, loras).	
		tyrell('mace').
		tyrell('willas').
		tyrell('garlan').
		tyrell('margaery').
		tyrell('loras').

		% casa de los martell
		elizaMartell(X, R):- martell(X), R = [si, X, es, un, martell, de, la, casa, martell, de, la, region, de, dorne].
		elizaMartell(X, R):- \+martell(X), R = [X, no, es, de, la, casa, de, los, martell].
		familiaMartell(X,R) :- padreMartell(X,ListaResultado), R=["el hij@ de", X, "es", ListaResultado].
		padreMartell(doran, arianne).	
		padreMartell(doran, quentyn).	
		padreMartell(doran, trystane).	
		martell('doran').
		martell('arianne').
		martell('quentyn').
		martell('trystane').

		% casa de los lannister
		elizaLannister(X, R):- lannister(X), R = [si, X, es, un, lannister, de, la, casa, lannister, de, la, region, de, casterly, rock].
		elizaLannister(X, R):- \+lannister(X), R = [X, no, es, de, la, casa, de, los, lannister].
		familiaLannister(X,R) :- padreLannister(X,ListaResultado), R=["el hij@ de", X, "es", ListaResultado].
		familiaLannister(X,R) :- madreLannister(X,ListaResultado), R=["el hij@ de", X, "es", ListaResultado].
		padreLannister(tywin, cersei).	
		padreLannister(tywin, jaime).	
		padreLannister(tywin, tyrion).	
		madreLannister(cersei, joffrey).	
		madreLannister(cersei, mycella).	
		madreLannister(cersei, tommen).	
		lannister('tywin').
		lannister('cersei').
		lannister('jaime').
		lannister('tyrion').
		lannister('joffrey').
		lannister('mycella').
		lannister('tommen').

		% casa de los baratheon
		elizaBaratheon(X, R):- baratheon(X), R = [si, X, es, un, baratheon, de, la, casa, baratheon, de, las, tierras, de, la, tormenta].
		elizaBaratheon(X, R):- \+baratheon(X), R = [X, no, es, de, la, casa, de, los, baratheon].
		familiaBaratheon(X,R) :- hermanoBaratheon(X,ListaResultado), R=["el hermano de", X, "es", ListaResultado].
		hermanoBaratheon(robert, stannis).	
		hermanoBaratheon(robert, renly).	
		hermanoBaratheon(stannis, robert).	
		hermanoBaratheon(stannis, renly).	
		hermanoBaratheon(renly, robert).	
		hermanoBaratheon(renly, stannis).	
		baratheon('robert').
		baratheon('stannis').
		baratheon('renly').
		


match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
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

% Game of thrones

% Eliza Casas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagCasas,
    elizaCasa(Atom, R).

% Eliza casa de los stark
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagStark,
    elizaStark(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagfamStark,
	familiaStark(Atom, R).

% Eliza casa de los targaryen
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagTargaryen,
    elizaTargaryen(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagfamTargaryen,
	familiaTargaryen(Atom, R).

% Eliza casa de los greyjoy
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagGreyjoy,
    elizaGreyjoy(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagfamGreyjoy,
	familiaGreyjoy(Atom, R).

% Eliza casa de los tyrell
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagTyrell,
    elizaTyrell(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagfamTyrell,
	familiaTyrell(Atom, R).

% Eliza casa de los martell
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagMartell,
    elizaMartell(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagfamMartell,
	familiaMartell(Atom, R).

% Eliza casa de los lannister
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagLannister,
    elizaLannister(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagfamLannister,
	familiaLannister(Atom, R).

% Eliza casa de los baratheon
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagBaratheon,
    elizaBaratheon(Atom, R).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagfamBaratheon,
	familiaBaratheon(Atom, R).
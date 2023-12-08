% inico del chatbot leuci
leuci:-	
	
	writeln('Hola, mi nombre es Leuci, exsoldado convertida en escritora de cartas y tambien tu chatbot de ayuda sobre leucemia.'),
    writeln('Por favor, ingresa tu consulta (usar solo minusculas y "." al final):'),
	writeln('Tambien se acerca del anime Violet Evergarden'),
	writeln('Dime lo que quieras saber y te ayudare depende de lo que preguntes :3'),	
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


% procesamiento de consultas
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
		template([hola, soy, s(_), '.'], ['Hola', 0, 'como', estas, '?'], [2]).
		template([estoy, bien, gracias, _], ['Excelente, Dime en que te puedo ayudar?'], []).
		template([bien, gracias, _], ['Me da gusto que sea asi, Dime en que te puedo ayudar?'], []).
		template([muy, bien, gracias, _], ['Me da gusto que sea asi, Dime en que te puedo ayudar?'], []).
		template([cual, es, tu, nombre, ?, _], ['Mi nombre es leuci, soy una base de conocimientos que fue creada para abrobar la materia de PROLOG, aparte de eso te puedo ayudar brindandote informacion acerca de la Leucemia :3'], []).
		template([cual, es, tu, nombre, _], ['Mi nombre es leuci, soy una base de conocimientos que fue creada para abrobar la materia de PROLOG, aparte de eso te puedo ayudar brindandote informacion acerca de la Leucemia :3'], []).
		template([que, informacion, sabes, sobre, la, leucemia, ?, _], ['Sobre la Leucemia, se acerca de varios temas que te pueden interesar como: Causas y factores de riesgo, Tipos y clasificacion, Sintomas y diagnostico, Tratamientos disponibles, Investigacion y avances medicos, Impacto emocional y apoyo, Prevencion y estilo de vida. ¿Dime que te interesa saber? :3'], []).
		template([que, es, leucemia, ?, _], ['La leucemia es un tipo de cancer que afecta a las celulas sanguineas y a la medula osea, donde se producen estas celulas. Se caracteriza por la produccion descontrolada de celulas sanguineas anormales, que remplazan a las celulas sanguineas normales.'], []).
		template([que, tipos, de, leucemia, hay, ?, _], ['Hay varios tipos de leucemia, siendo los principales la leucemia mieloide aguda (LMA), la leucemia mieloide cronica (LMC), la leucemia linfoblastica aguda (LLA) y la leucemia linfoblastica cronica (LLC).'], []).
		template([que, tratamiento, debo, tomar, si, tengo, leucemia, ?, _], ['El tratamiento especifico de la leucemia depende del tipo exacto de leucemia, la edad del paciente, la salud general y otros factores individuales.'], []).
		template([como, se, diagnostica, la, leucemia, ?, _], ['El diagnostico involucra analisis de sangre, biopsia de medula osea y pruebas citogeneticas para identificar el tipo y caracteristicas de la leucemia.'], []).
		template([cuales, son, las, opciones, de, tratamiento, para, la, leucemia, ?, _], ['Las opciones de tratamiento incluyen quimioterapia, radioterapia, trasplante de medula osea y medicamentos especificos segun el tipo y la etapa de la leucemia.'], []).
		template([como, afecta, emocionalmente, la, leucemia, a, los, pacientes, y, sus, familias, ?, _], ['La leucemia puede tener un fuerte impacto emocional en pacientes y sus familias debido al proceso de tratamiento, la incertidumbre y los cambios en el estilo de vida. El apoyo emocional es esencial.'], []).
		template([cuales, son, las, medidas, preventivas, para, la, leucemia, ?, _], ['No hay medidas especificas para prevenir la leucemia, pero evitar la exposicion a sustancias quimicas y radiacion puede reducir ciertos riesgos. La deteccion temprana es clave para un mejor pronostico.'], []).
        template([cual, es, el, pronostico, tipico, para, pacientes, con, leucemia, ?, _], ['El pronostico varia segun el tipo y la etapa de la leucemia. Muchos pacientes responden bien al tratamiento, pero la supervivencia a largo plazo depende de varios factores.'], []).
		template([que, es, quimioterapia, ?, _], ['La quimioterapia es un tratamiento comun para la leucemia y utiliza medicamentos para eliminar o controlar las celulas cancerosas. Puede administrarse por via oral o intravenosa.'], []).
		template([que, es, radioterapia, ?, _], ['La radioterapia utiliza radiacion para dañar o destruir celulas cancerosas. Se dirige a areas especificas del cuerpo y es mas comun en leucemias que afectan principalmente a ciertos tejidos.'], []).
		template([que, es, inmunoterapia, ?, _], ['Algunas formas de leucemia responden bien a la inmunoterapia, que utiliza el sistema inmunologico del cuerpo para combatir las celulas cancerosas.'], []).
		template([que, es, terapia, dirigida, ?, _], ['Medicamentos dirigidos especificamente a ciertas moleculas involucradas en el crecimiento y supervivencia celular pueden ser utilizados en el tratamiento de la leucemia.'], []).
		template([que, es, trasplante, de, medula, osea, ?, _], ['En ciertos casos, especialmente en leucemias agudas o resistentes al tratamiento, un trasplante de medula osea puede ser una opcion. Este procedimiento implica reemplazar la medula osea dañada o enferma con celulas madre sanas.'], []).
		template([que, es, itk, ?, _], ['Medicamentos como el imatinib, dasatinib o nilotinib, que son ITK, son la terapia de primera linea para la LMC. Estos medicamentos bloquean las señales quimicas que hacen que las celulas leucemicas crezcan.'], []).
		template([que, es, interferon, ?, _], ['El interferon se utiliza en medicina como tratamiento en diversas enfermedades, y existen diferentes tipos de interferones, como el interferon alfa, beta y gamma. '], []).
		template([para, que, es, el, chatbot, ?, _], ['Es para ayudar a las personas en darles informacion acerca de esta enfermedad, y tambien para acreditar la materia de PROLOG, PONGAME 100 PAro.'], []).
		template([quien, desarrollo, a, leuci, ?, _], ['Quien desarrollo a leuci fue la alumna DALIA ESMERALDA GARCIA DIAZ de la materia PROLOG'], []).

	% violet

		template([que, informacion, sabes, sobre, violet, evergarden, ?, _], ['Sobre Violet Evergarden, puedo proporcionarte informacion sobre la serie de anime "Violet Evergarden". ¿En que aspecto especifico estas interesado? :3'], []).
		template([de, que, trata, violet, evergarden, ?, _], ['"Violet Evergarden" es una serie de anime que sigue la historia de Violet, una exsoldado que busca encontrar su proposito en la vida como escritora de cartas. La serie explora temas de emociones, amor y crecimiento personal.'], []).
		template([temporada, de, violet, evergarden, ?, _], ['"Violet Evergarden" tiene una temporada disponible, con varios episodios que narran la fascinante historia de Violet.'], []).
		template([personajes, de, violet, evergarden, ?, _], ['Los personajes principales de "Violet Evergarden" incluyen a Violet, Gilbert, Claudia y otros que desempeñan roles importantes en la trama. ¿Quieres saber mas sobre algun personaje en particular?'], []).
		template([como, afecta, emocionalmente, violet, evergarden, a, los, espectadores, ?, _], ['La serie "Violet Evergarden" ha conmovido a muchos espectadores debido a su narrativa emocional y a la evolucion del personaje principal. La conexion emocional es una parte fundamental de la experiencia.'], []).
		template([cuales, son, las, recomendaciones, para, ver, violet, evergarden, ?, _], ['Se recomienda ver "Violet Evergarden" en un ambiente tranquilo para disfrutar plenamente de la historia. Preparate para una experiencia emotiva y reflexiva.'], []).
		template([cuantos, episodios, tiene, violet, evergarden, ?, _], ['La serie "Violet Evergarden" tiene un total de 13 episodios en su primera temporada.'], []).
		template([donde, puedo, ver, violet, evergarden, ?, _], ['Puedes ver "Violet Evergarden" en plataformas de transmision de anime como Netflix.'], []).
		template([puedo, ver, violet, evergarden, en, netflix, ?, _], ['Si, "Violet Evergarden" esta disponible en Netflix. Puedes disfrutar de la serie alli.'], []).
		template([cual, es, la, trama, de, violet, evergarden, ?, _], ['La trama de "Violet Evergarden" sigue a Violet, una exsoldado que, despues de la guerra, se embarca en un viaje para comprender el significado de las emociones humanas mientras trabaja como escritora de cartas. ¿Quieres más detalles sobre la historia?'], []).
		template([me, puedes, contar, sobre, los, episodios, de, violet, evergarden, ?, _], ['Los episodios de "Violet Evergarden" te llevan a traves de las experiencias de Violet mientras interactua con diversas personas y descubre el poder de las palabras. Cada episodio es unico y conmovedor.'], []).
		template([cual, es, tu, personaje, favorito, en, violet, evergarden, ?, _], ['Como soy Violet Evergarden, mi personaje favorito es, por supuesto, Violet. ¿Hay algo más sobre la serie que te gustaría saber?'], []).
		template([cual, es, el, genero, de, violet, evergarden, ?, _], ['"Violet Evergarden" pertenece a los generos de drama, fantasia y slice of life. ¿Te gustan esos generos?'], []).
		template([recomiendame, una, serie, parecida, a, violet, evergarden, ?, _], ['Si te gusto "Violet Evergarden", es posible que disfrutes de series como "Clannad" o "Your Lie in April", que también ofrecen historias emotivas y personajes bien desarrollados.'], []).
		template([quiero, saber, mas, sobre, violet, evergarden, ?, _], ['¡Claro! Estoy aqui para ayudarte. ¿Hay algo especifico que te gustaria saber sobre "Violet Evergarden"?'], []).
        template([cuantos, episodios, tiene, violet, evergarden, ?, _], ['La serie "Violet Evergarden" tiene un total de 13 episodios en su primera temporada.'], []).
        template([quien, es, violet, evergarden, ?, _], ['Violet Evergarden es la protagonista de la serie. Inicialmente una exsoldado, se convierte en escritora de cartas mientras busca comprender las emociones humanas.'], []).

    
	% LMA
		template([que, es, leucemia, mieloide, aguda, ?, _], ['Es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
		template([que, es, lma, ?, _], ['La leucemia mieloide aguda (LMA), es un tipo de cancer de la sangre y la medula osea que afecta a las celulas mieloides inmaduras'], []).
		template([que, celulas, afecta, la, lma, ?, _], ['La LMA afecta a las celulas mieloides, que normalmente se desarrollarian para convertirse en globulos rojos, globulos blancos y plaquetas.'], []).
		template([cual, es, la, principal, caracteristica, de, la, lma, ?, _], ['Es la acumulacion de Celulas Inmaduras por que se caracteriza por la rapida proliferacion de celulas mieloides inmaduras en la medula osea, lo que interfiere con la produccion normal de celulas sanguineas'], []).
		template([cuales, son, los, sintomas, de, la, lma, ?, _], ['Fatiga, Dificultad para respirar, Mayor susceptibilidad a las infecciones, Hematomas y sangrado facil, Dolor en los huesos y articulaciones.'], []).
		template([que , diagnostico, se , realiza, de, la, lma, ?, _], ['Analisis de Sangre, Biopsia de Medula Osea, Citogenetica.'], []).
		template([cual, es, la, causa, de, la, lma, ?, _], ['La causa exacta de la leucemia mieloide aguda (LMA) no siempre esta clara, pero suele involucrar cambios geneticos en las celulas madre de la medula osea.'], []).
		template([factores, de, riesgo, para, la, lma, ?, _], ['Los factores de riesgo para la LMA incluyen la exposicion a ciertos quimicos, radiacion, ciertos trastornos sanguineos y ciertos sindromes geneticos hereditarios.'], []).
		template([como, se, trata, la, lma, ?, _], ['El tratamiento para la leucemia mieloide aguda (LMA) suele implicar quimioterapia, radioterapia, trasplante de medula osea y medicamentos dirigidos.'], []).
		template([cual, es, el, pronostico, de, la, lma, ?, _], ['El pronostico de la LMA puede variar, pero muchos pacientes responden bien al tratamiento y tienen tasas de supervivencia altas, especialmente en casos diagnosticados y tratados tempranamente.'], []).
		template([avances, recientes, en, investigacion, sobre, la, lma, ?, _], ['La investigacion reciente sobre la LMA se centra en terapias dirigidas, inmunoterapia y opciones de tratamiento mas personalizadas para mejorar la eficacia y reducir los efectos secundarios.'], []).
		template([como, afecta, emocionalmente, la, lma, a, los, pacientes, y, sus, familias, ?, _], ['La LMA puede tener un impacto emocional significativo en los pacientes y sus familias, ya que el proceso de tratamiento puede ser desafiante. El apoyo emocional es crucial durante el tratamiento.'], []).
		template([medidas, preventivas, para, la, lma, ?, _], ['No hay medidas especificas para prevenir la LMA, pero evitar la exposicion a sustancias quimicas toxicas y radiacion puede ayudar a reducir algunos riesgos.'], []).
		template([que, se, puede, hacer, para, mejorar, la, calidad, de, vida, en, pacientes, con, lma, ?, _], ['El apoyo psicologico, cuidados paliativos y un enfoque integral del tratamiento pueden contribuir a mejorar la calidad de vida de los pacientes con leucemia mieloide aguda (LMA).'], []).

	% LMC
		template([que, es, lmc, ?, _], ['La leucemia mieloide cronica (LMC) es un tipo de cancer de la sangre que afecta a las celulas mieloides, caracterizada por un crecimiento descontrolado de mielocitos en la medula osea.'], []).
		template([que, celulas, afecta, la, lmc, ?, _], ['La LMC afecta a las celulas mieloides, que normalmente se desarrollarian para convertirse en globulos rojos, globulos blancos y plaquetas.'], []).
		template([cual, es, la, principal, caracteristica, de, la, lmc, ?, _], ['Se caracteriza por la presencia del cromosoma Filadelfia (Ph), resultado de una translocacion genetica. Esto lleva a la produccion de una proteina anormal llamada BCR-ABL, que promueve el crecimiento celular descontrolado.'], []).
		template([cuales, son, los, sintomas, de, la, lmc, ?, _], ['La LMC puede ser asintomatica en las etapas tempranas. Los sintomas incluyen fatiga, perdida de peso, dolor abdominal debido al agrandamiento del bazo, sudoracion excesiva durante la noche, y facilidad para sangrar.'], []).
		template([que , diagnostico, se , realiza, de, la, lmc, ?, _], ['El diagnostico de la LMC implica pruebas como el hemograma completo, biopsia de medula osea y la identificacion del cromosoma Filadelfia (Ph) mediante analisis citogeneticos o moleculares.'], []).
		template([cual, es, la, causa, de, la, lmc, ?, _], ['La LMC suele ser causada por una translocacion reciproca entre los cromosomas 9 y 22, que da lugar al cromosoma Filadelfia (Ph) y a la formacion del gen BCR-ABL. Esto conduce a la proliferacion celular descontrolada.'], []).
		template([factores, de, riesgo, para, la, lmc, ?, _], ['Los factores de riesgo para la LMC incluyen la exposicion a radiacion ionizante y ciertos agentes quimicos, aunque en muchos casos la causa exacta es desconocida.'], []).
		template([como, se, trata, la, lmc, ?, _], ['El tratamiento de la leucemia mieloide cronica (LMC) implica medicamentos dirigidos llamados inhibidores de tirosina quinasa, como el imatinib, que bloquean la actividad de la proteina BCR-ABL y controlan el crecimiento celular.'], []).
		template([cual, es, el, pronostico, de, la, lmc, ?, _], ['El pronostico de la LMC ha mejorado significativamente con el uso de inhibidores de tirosina quinasa. Muchos pacientes tienen una esperanza de vida normal con tratamiento adecuado y monitoreo constante.'], []).
		template([avances, recientes, en, investigacion, sobre, la, lmc, ?, _], ['La investigacion reciente sobre la LMC se centra en el desarrollo de terapias mas efectivas y menos toxicas, asi como en estrategias para abordar la resistencia a los tratamientos existentes.'], []).
		template([como, afecta, emocionalmente, la, lmc, a, los, pacientes, y, sus, familias, ?, _], ['La LMC puede tener un impacto emocional significativo en los pacientes y sus familias, ya que el tratamiento a largo plazo y la incertidumbre pueden generar estres y ansiedad. El apoyo emocional es esencial.'], []).
		template([medidas, preventivas, para, la, lmc, ?, _], ['No hay medidas especificas para prevenir la LMC, pero evitar la exposicion a radiacion y sustancias quimicas puede reducir algunos riesgos.'], []).
		template([que, se, puede, hacer, para, mejorar, la, calidad, de, vida, en, pacientes, con, lmc, ?, _], ['El manejo integral de la LMC incluye el uso continuo de inhibidores de tirosina quinasa, monitoreo regular, y apoyo psicologico para mejorar la calidad de vida de los pacientes.'], []).

	 
	% LLA
		template([que, es, leucemia, linfoblastica, aguda, ?, _], ['Es un tipo de cancer de la sangre y la medula osea que afecta a las celulas linfoblasticas inmaduras.'], []).
		template([que, es, lla, ?, _], ['La leucemia linfoblastica aguda (LLA) es un tipo de cancer de la sangre y la medula osea que afecta a las celulas linfoblasticas inmaduras.'], []).
		template([que, celulas, afecta, la, lla, ?, _], ['La LLA afecta a las celulas linfoblasticas, que normalmente se desarrollarian para convertirse en globulos blancos.'], []).
		template([cual, es, la, principal, caracteristica, de, la, lla, ?, _], ['Se caracteriza por la rapida proliferacion de celulas linfoblasticas inmaduras en la medula osea, interfiriendo con la produccion normal de celulas sanguineas.'], []).
		template([cuales, son, los, sintomas, de, la, lla, ?, _], ['Fatiga, dificultad para respirar, mayor susceptibilidad a las infecciones, hematomas y sangrado facil, dolor en los huesos y articulaciones.'], []).
		template([cual, es, la, causa, de, la, lla, ?, _], ['La causa exacta de la leucemia linfoblastica aguda (LLA) no se conoce completamente, pero se cree que involucra cambios geneticos en las celulas linfoblasticas.'], []).
		template([factores, de, riesgo, para, la, lla, ?, _], ['Los factores de riesgo para la LLA incluyen la exposicion a ciertos quimicos y radiacion, antecedentes geneticos y ciertos trastornos geneticos hereditarios.'], []).
		template([como, se, trata, la, lla, ?, _], ['El tratamiento para la leucemia linfoblastica aguda (LLA) suele involucrar quimioterapia, radioterapia, trasplante de medula osea y medicamentos dirigidos.'], []).
		template([cual, es, el, pronostico, de, la, lla, ?, _], ['El pronostico de la LLA puede variar, pero muchos pacientes responden bien al tratamiento y tienen tasas de supervivencia altas, especialmente en niños.'], []).
		template([avances, recientes, en, investigacion, sobre, la, lla, ?, _], ['La investigacion reciente sobre la LLA se centra en terapias dirigidas, inmunoterapia y opciones de tratamiento mas personalizadas para mejorar la eficacia y reducir los efectos secundarios.'], []).
		template([como, afecta, emocionalmente, la, lla, a, los, pacientes, y, sus, familias, ?, _], ['La LLA puede tener un impacto emocional significativo en los pacientes y sus familias, ya que el proceso de tratamiento puede ser desafiante. El apoyo emocional es crucial.'], []).
		template([medidas, preventivas, para, la, lla, ?, _], ['No hay medidas especificas para prevenir la LLA, pero evitar la exposicion a sustancias quimicas toxicas y radiacion puede ayudar a reducir algunos riesgos.'], []).
		template([que, se, puede, hacer, para, mejorar, la, calidad, de, vida, en, pacientes, con, lla, ?, _], ['El apoyo psicologico, cuidados paliativos y un enfoque integral del tratamiento pueden contribuir a mejorar la calidad de vida de los pacientes con leucemia linfoblastica aguda (LLA).'], []).
	
	
	% Sintomas

	template([si,tengo, s(_), s(_),s(_), son, sintomas, de, leucemia, ?, _], [flagSintomasM], [2,3,4]).
	template([si, tengo, un, dolor, de, s(_), es, sintoma, de, leucemia, ?, _], [flagSintomas], [5]).
	template([si, tengo, s(_), es, sintoma, de, leucemia, _], [flagSintomas], [2]).
	template([tengo, s(_), es, sintoma, de, leucemia, ?, _], [flagSintomas], [1]).
	template([si, tengo, s(_), es, sintoma, de, leucemia, ?, _], [flagSintomas], [2]).
	template([si, tengo, problemas, de, s(_), es, sintoma, de, leucemia, ?, _], [flagSintomas], [4]).

	% tratamientos
	template([puedo, tomar, el, tratamiento, s(_), para, la, leucemia, ?, _], [flagMedicamentos], [4]).
	template([puedo, tomar, s(_), para, la, leucemia, ?, _], [flagMedicamentos], [2]).

	
	% tipos
    template([si, tengo, leucemia, tipo, s(_), que, tratamiento, debo, tomar, ?, _], [flagTiposTrata], [4]).
	template([tengo, s(_), que, tratamiento, debo, tomar, ?, _], [flagTiposTrata], [1]).
    
	template([la, s(_), es, un, tipo, de, leucemia, ?, _], [flagTipos], [1]).

	% tratamientos para cada tipo 

	template([el, tratamiento, s(_), es, para, la, leucemia, tipo, lma, ?, _], [flagLMA], [2]).
	template([la, s(_), es, para, la, lma, ?, _], [flagLMA], [1]).
	template([el, s(_), es, para, la, lmc, ?, _], [flagLMA], [1]).
	template([la, s(_), es, un, tratamiento, para, la, lma, ?, _], [flagLMA], [1]).
	template([el, s(_), es, un, tratamiento, para, la, lma, ?, _], [flagLMA], [1]).

	template([el, tratamiento, s(_), es, para, la, leucemia, tipo, lmc, ?, _], [flagLMC], [2]).
	template([la, s(_), es, para, la, lmc, ?, _], [flagLMC], [1]).
	template([el, s(_), es, para, la, lmc, ?, _], [flagLMC], [1]).
	template([la, s(_), es, un, tratamiento, para, la, lmc, ?, _], [flagLMC], [1]).
	template([el, s(_), es, un, tratamiento, para, la, lmc, ?, _], [flagLMC], [1]).

    template([el, tratamiento, s(_), es, para, la, leucemia, tipo, lla, ?, _], [flagLLA], [2]).
	template([la, s(_), es, para, la, lla, ?, _], [flagLLA], [1]).
	template([la, s(_), es, un, tratamiento, para, la, lla, ?, _], [flagLLA], [1]).
	template([el, s(_), es, un, tratamiento, para, la, lla, ?, _], [flagLLA], [1]).
	template([el, s(_), es, para, la, lla, ?, _], [flagLLA], [1]).

	template([el, tratamiento, s(_), es, para, la, leucemia, tipo, llc, ?, _], [flagLLC], [2]).
	template([la, s(_), es, para, la, llc, ?, _], [flagLLC], [1]).
	template([la, s(_), es, un, tratamiento, para, la, llc, ?, _], [flagLLC], [1]).
	template([el, s(_), es, un, tratamiento, para, la, llc, ?, _], [flagLLC], [1]).
	template([el, s(_), es, para, la, llc, ?, _], [flagLLC], [1]).

	

	% personajes
    
	template([el, personaje, s(_), es, de, ese, anime, ?, _], [flagPersonaje], [2]).
	template([s(_), es, personaje, del, anime, ?, _], [flagPersonaje], [0]).

    % generos	
    
	template([el, genero, s(_), coincide, con, el, anime, ?, _], [flagGenero], [0]).

	
	% predicado que se utiliza para construir una lista de todas las instancias de una expresion 
	
	% sintomas de Leucemia.

	template([cuales, son, los, sintomas, de, leucemia, ?], ListaResultado, []):-
		findall(Sintomas, sintomas(Sintomas), ListaResultado).

	% Especialista en el area de la enfermedad Leucemia

	template([cuales, son, los, especialistas], ListaResultado, []):-
		findall(Especialistas, especialista(Especialistas), ListaResultado).

	template([que, especialistas, hay], ListaResultado, []):-
		findall(Especialistas, especialista(Especialistas), ListaResultado).

	template([especialistas], ListaResultado, []):-
		findall(Especialistas, especialista(Especialistas), ListaResultado).

	% tratamientos leucemia

	template([que, tratamientos, cura, la, leucemia], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).
	
	template([que, tratamientos, puedo, usar], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).
	

	template([que, tratamientos, necesito, para, curarme], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).	
	
	template([que, tratamientos, necesito], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).	

	template([tratamientos], ListaResultado, []):-
		findall(Medicinas, medicinas(Medicinas), ListaResultado).	
	
	% tipos
     
	 template([cuantos, tipos, de, leucemia, hay], ListaResultado, []):-
		findall(Tipos, tipos(Tipos), ListaResultado).	

	 template([tipos], ListaResultado, []):-
		findall(Tipos, tipos(Tipos), ListaResultado).	

	% tratamientos para cada tipo lma
     template([cuantos, tratamientos, hay, para, la, lma, ?], ListaResultado, []):-
		findall(LMA, lma(LMA), ListaResultado).	

	 template([tratamientos, para, lma], ListaResultado, []):-
		findall(LMA, lma(LMA), ListaResultado).	

	template([tratamientos, lma], ListaResultado, []):-
		findall(LMA, lma(LMA), ListaResultado).	

	% tratamientos para cada tipo lmc
	
	template([cuantos, tratamientos, hay, para, la, lmc, ?], ListaResultado, []):-
		findall(LMC, lmc(LMC), ListaResultado).	

	template([tratamientos,para, lmc], ListaResultado, []):-
		findall(LMC, lmc(LMC), ListaResultado).	

	template([tratamientos, lmc], ListaResultado, []):-
		findall(LMC, lmc(LMC), ListaResultado).	
    
	% tratamientos para cada tipo lla

	template([cuantos, tratamientos, hay, para, la, lla, ?], ListaResultado, []):-
			findall(LLA, lla(LLA), ListaResultado).	

	template([tratamientos, para, lla], ListaResultado, []):-
			findall(LLA, lla(LLA), ListaResultado).	

	template([tratamientos, lla], ListaResultado, []):-
			findall(LLA, lla(LLA), ListaResultado).	

	% tratamientos para cada tipo lla

	template([cuantos, tratamientos, hay, para, la, llc, ?], ListaResultado, []):-
			findall(LLC, llc(LLC), ListaResultado).	

	template([tratamientos, para, llc], ListaResultado, []):-
			findall(LLC, llc(LLC), ListaResultado).	

	template([tratamientos, llc], ListaResultado, []):-
			findall(LLC, llc(LLC), ListaResultado).	

     % personajes

	 template([personajes], ListaResultado, []):-
			findall(Personajes, personaje(Personajes), ListaResultado).	
	 
	 template([personaje, principal], ListaResultado, []):-
			findall(PersonajesP, personajep(PersonajesP), ListaResultado).
	
	template([cuales, son, los, personajes, principales], ListaResultado, []):-
			findall(PersonajesP, personajep(PersonajesP), ListaResultado).

	template([cuales, son, los, personajes, secundarios], ListaResultado, []):-
			findall(PersonajesS, personajese(PersonajesS), ListaResultado).

	template([cuales, son, los, personajes, de, relleno], ListaResultado, []):-
			findall(PersonajesR, personajer(PersonajesR), ListaResultado).

	 % genero

	 template([cuales, son, los, generos], ListaResultado, []):-
			findall(Genero, genero(Genero), ListaResultado).
	 template([generos], ListaResultado, []):-
			findall(Genero, genero(Genero), ListaResultado).

	 % temporadas

	 % nombre de episodios




	 % error
	template(_, ['Disculpa, no entiendo tu pregunta, puedes volver a escribir por favor, recuerdo poner un "." al final de cada oracion.'], []). 
   


	% Reglas para las flags de la enfermedad

	% Sintomas
		elizaSintomas(X, R):- sintomas(X), R = [si, X, es, muy, probable, que, sea, un, sintoma, de, leucemia].
    	elizaSintomas(X, R):- \+sintomas(X), R = [X, no, es, un, sintoma, de, la, leucemia, pero, acude, a, un, medico,para, que, te, revise].
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
		sintomas(sangrado_facil).
	
	% MultiSintomas
		elizaSintomasM(X, Y, Z, R):- sintomasM(X,Y,Z), R = [si, X, Y, Z, son, sintomas, de, leucemia].
    	elizaSintomasM(X, Y, Z, R):- \+sintomasM(X,Y,Z), R = [X, Y, Z, no, son, sintomas, de, leucemia].
		sintomasM(debilidad, fatiga, perdidapeso).
		sintomasM(fatiga, perdidapeso, fiebre).
		sintomasM(hematomas, sudores, fiebre).
		sintomasM(hinchazon, hematomas, fiebre).
		sintomasM(hinchazon, fatiga, fiebre).
		sintomasM(perdidapeso, hinchazon, fatiga).
		
		

	% reglas para las flags de Especialista
		elizaEspecialista(X, R):- especialista(X), R = [si, X, es, un, especialista, de, leucemia].
    	elizaEspecialista(X, R):- \+especialista(X), R = [X, no, es, un, especialista, de, leucemia].
		especialista(hematologo_oncologo).
		especialista(patologo).
		especialista(hematologo_oncologo).
		especialista(oncologo_radioterapeuta).
		especialista(especialista_en_trasplante_de_medula_osea).
		
	% reglas para las flags de Tratamientos
		elizaMedicamento(X, R):- medicinas(X), R = [si, X, es, un, tratamiento, para, curar, la, leucemia].
		elizaMedicamento(X, R):- \+medicinas(X), R = [X, no, es, un, tratamiento, para, curar, la, leucemia].
		elizaMedicamentoTipo(X, R) :- tipoTrata(X,Y), R=["si tienes leucemia tipo ", X, " toma el tratamiento de", Y].	
		tipoTrata(lma, quimioterapia).
		tipoTrata(lma, radioterapia).
		tipoTrata(lma, trasplante_de_medula_osea).
		tipoTrata(lma, terapia_dirigida).
		tipoTrata(lmc, interferon).
		tipoTrata(lmc, trasplante_de_medula_osea).
		tipoTrata(lmc, itk).
		tipoTrata(lla, radioterapia).
		tipoTrata(lla, quimioterapia).
		tipoTrata(lla, inmunoterapia).
		tipoTrata(lla, trasplante_de_medula_osea).
		tipoTrata(lla, terapia_dirigida).
		tipoTrata(llc, inmunoterapia).
		tipoTrata(llc, quimioterapia).
		tipoTrata(llc, vigilancia_activa).
		tipoTrata(llc, terapia_dirigida).
		tipoTrata(llc, tratamiento_biologico).
		tipoTrata(llc, trasplante_de_medula_osea).
		medicinas(quimioterapia).
		medicinas(radioterapia).
		medicinas(inmunoterapia).
		medicinas(terapia_dirigida).
		medicinas(trasplante_de_medula_osea).
		medicinas(interferon).
		medicinas(itk).
		medicinas(vigilancia_activa).
		medicinas(tratamiento_biologico).

% reglas para las flags de Tipos
		elizatipos(X, R):- tipos(X), R = [si, X, es, un, tipo, de, leucemia].
		elizatipos(X, R):- \+tipos(X), R = [X, no, es, un, tipo, de, leucemia].
		tipos(lma).
		tipos(lmc).
		tipos(llc).
		tipos(lla).

% reglas para la lma
		elizaTlma(X, R):- lma(X), R = [si, X, es, un, tratamiento, para, la, lma].
		elizaTlma(X, R):- \+lma(X), R = [X, no, es, un, tratamiento, para, la, lma].
		lma(quimioterapia).
		lma(radioterapia).
		lma(terapia_dirigida).
		lma(trasplante_de_medula_osea).

% reglas para la llc
		elizaTllc(X, R):- llc(X), R = [si, X, es, un, tratamiento, para, la, llc].
		elizaTllc(X, R):- \+llc(X), R = [X, no, es, un, tratamiento, para, la, llc].
		llc(quimioterapia).
		llc(inmunoterapia).
		llc(terapia_dirigida).
		llc(trasplante_de_medula_osea).
		llc(vigilancia_activa).
		llc(tratamiento_biologico).

% reglas para la lmc
		elizaTlmc(X, R):- lmc(X), R = [si, X, es, un, tratamiento, para, la, lmc].
		elizaTlmc(X, R):- \+lmc(X), R = [X, no, es, un, tratamiento, para, la, lmc].
		lmc(itk).
		lmc(trasplante_de_medula_osea).
		lmc(interferon).

% reglas para la lla
		elizaTlla(X, R):- lla(X), R = [si, X, es, un, tratamiento, para, la, lla].
		elizaTlla(X, R):- \+lla(X), R = [X, no, es, un, tratamiento, para, la, lla].
		lla(quimioterapia).
		lla(inmunoterapia).
		lla(radioterapia).
		lla(terapia_dirigida).
		lla(trasplante_de_medula_osea).
		
% reglas de personajes de violet
elizaPersonaje(X, R):- personaje(X), R = [si, X, es, un, personaje, del, anime, violet].
elizaPersonaje(X, R):- \+personaje(X), R = [X, no, es, un, personaje, del, anime, violet].	
    personaje(violet_evergarden).
	personaje(gilbert_bougainvillea).
	personaje(claudia_hodgins).
	personaje(cattleya_baudelaire).
	personaje(benedict_blue).
	personaje(erica_brown).
	personaje(iris_cannary).
	personaje(lux_sibyl).
	personaje(ann_magnolia).
	personaje(leon_stephanotis).
    personaje(taylor_bartlettn).

% reglas de personajes principales de violet
elizaPersonajeP(X, R):- personajep(X), R = [si, X, es, un, personaje, del, anime, violet].
elizaPersonajeP(X, R):- \+personajep(X), R = [X, no, es, un, personaje, del, anime, violet].	
    personajep(violet_evergarden).
	personajep(gilbert_bougainvillea).

elizaPersonajeS(X, R):- personajese(X), R = [si, X, es, un, personaje, del, anime, violet].
elizaPersonajeS(X, R):- \+personajese(X), R = [X, no, es, un, personaje, del, anime, violet].	
    personajese(claudia_hodgins).
	personajese(cattleya_baudelaire).
	personajese(benedict_blue).
	personajese(erica_brown).

elizaPersonajeR(X, R):- personajer(X), R = [si, X, es, un, personaje, del, anime, violet].
elizaPersonajeR(X, R):- \+personajer(X), R = [X, no, es, un, personaje, del, anime, violet].	
    personajer(iris_cannary).
	personajer(lux_sibyl).
	personajer(ann_magnolia).
	personajer(leon_stephanotis).

elizaGenero(X, R):- genero(X), R = [si, X, es, un, genero, del, anime, violet].
elizaGenero(X, R):- \+genero(X), R = [X, no, es, un, genero, del, anime, violet].	
    genero(drama).
	genero(fantasia).
	genero(slice_of_life).
	
match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

% Si S no es un atomo y es una variable u otro tipo de termino entonces se ignora el elemento actual de Input y se continua la verificacion con el resto de las listas

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continuo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

% predicado para reemplazar elementos en una lista, toma una lista de indices y reemplaza los elementos correspondientes en la lista de entrada 

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

	replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.

% Eliza Sintomas
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintomas,
    elizaSintomas(Atom, R).



replace0([I,J,K|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSintomasM,
    nth0(J, Input, Atom1),
    nth0(0, Resp, Y),
	Y == flagSintomasM,
    nth0(K, Input, Atom2),
	nth0(0, Resp, Z),
	Z == flagSintomasM,
    elizaSintomasM(Atom, Atom1, Atom2, R).

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

	% Eliza tipos:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagTiposTrata,
    elizaMedicamentoTipo(Atom, R).

		% Eliza tipos:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagTipos,
    elizatipos(Atom, R).

	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagLMA,
    elizaTlma(Atom, R).

	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagLMC,
    elizaTlmc(Atom, R).

	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagLLA,
    elizaTlla(Atom, R).

	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagLLC,
    elizaTllc(Atom, R).

	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPersonaje,
    elizaPersonaje(Atom, R).
   
   replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPersonajeP,
    elizaPersonajeP(Atom, R).

	 replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPersonajeS,
    elizaPersonajeS(Atom, R).

	 replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPersonajeR,
    elizaPersonajeR(Atom, R).

	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagPersonajeG,
    elizaPersonajesG(Atom, R).

	replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagGenero,
    elizaGenero(Atom, R).




%Base de conocimientos

%Chikungunya


sintoma("fiebre alta").
sintoma("dolor intenso en las articulaciones").
sintoma("inflamación en las articulaciones").
sintoma("dolor de cabeza").
sintoma("dolor muscular").
sintoma("erupción cutánea").
sintoma("fatiga").
sintoma("náuseas").
sintoma("vómitos").
sintoma("conjuntivitis").
sintoma("dolor detrás de los ojos").
sintoma("sensación de malestar general").

%Médico Especialista para el Chikungunya
medico("Médico Infectólogo").


%Derivaciones del Chikungunya
derivaciones("Síndrome de Guillain-Barré").
derivaciones("Complicaciones neurológicas").
derivaciones("Artritis crónica").
derivaciones("Manifestaciones oculares").
derivaciones("Complicaciones cardiovasculares").
derivaciones("Complicaciones en mujeres embarazadas").
derivaciones("Recurrencia de síntomas en casos crónicos").

%Regiones donde el Chikungunya puede estar presente
region("África").
region("Asia").
region("América").
region("Europa").
pais("Asia",["India", "Tailandia","Filipinas","Indonesia","Malasia"]).
pais("America",["República Dominicana", "Haití", "Puerto Rico", "Colombia","Brasil"]).

%Tratamientos para el Chikungunya
tratamiento("Alivio de los síntomas con analgésicos y antipiréticos").
tratamiento("Descanso y mantenerse hidratado").
tratamiento("Aplicación de compresas frías o calientes para reducir el dolor en las articulaciones").
tratamiento("Evitar el uso de medicamentos antiinflamatorios no esteroides como el ibuprofeno, ya que pueden aumentar el riesgo de hemorragias").
tratamiento("Seguir las recomendaciones médicas para el manejo de los síntomas y la recuperación").

%Causa y Transmisión
causa("El virus del Chikungunya es transmitido por mosquitos infectados, principalmente por el mosquito Aedes aegypti y Aedes albopictus").
causa("El virus también puede transmitirse de madre a hijo durante el parto, a través de transfusiones de sangre infectada o por contacto con sangre contaminada").
causa("No se transmite de persona a persona de manera directa, como a través del contacto casual o el contacto con las gotas respiratorias").



%Conjuntivitis


sintoma("Enrojecimiento de los ojos").
sintoma("Picazón en los ojos").
sintoma("Sensación de ardor en los ojos").
sintoma("Secreción ocular").
sintoma("Lagrimeo excesivo").
sintoma("Sensibilidad a la luz").
sintoma("Visión borrosa").
sintoma("Sensación de tener un cuerpo extraño en el ojo").


medico("Oftalmólogo").


derivaciones("Infección del párpado y tejidos circundantes").
derivaciones("Úlceras corneales").
derivaciones("Cicatrices corneales").
derivaciones("Conjuntivitis crónica").


region("En todo el mundo").


tratamiento("Aplicación de compresas frías sobre los ojos para aliviar la inflamación").
tratamiento("Lavado suave de los ojos con solución salina para eliminar las secreciones").
tratamiento("Uso de lágrimas artificiales para aliviar la sequedad ocular").
tratamiento("Evitar el uso de lentes de contacto durante el tratamiento").
tratamiento("Uso de medicamentos antivirales, antibióticos o colirios esteroides en casos específicos, según la causa de la conjuntivitis").



causa("La conjuntivitis puede ser causada por virus, bacterias, alérgenos o irritantes como el humo o los productos químicos").
causa("La conjuntivitis viral se puede transmitir por contacto directo con secreciones oculares de una persona infectada").
causa("La conjuntivitis bacteriana puede ser causada por diferentes bacterias y también se transmite por contacto directo con las secreciones oculares infectadas").
causa("La conjuntivitis alérgica se desencadena por alérgenos como el polen, el polvo o los ácaros y no es contagiosa").
causa("La conjuntivitis irritativa puede ser causada por el contacto con sustancias irritantes y no es contagiosa").




sintoma("Dolor abdominal recurrente o cólicos").
sintoma("Hinchazón abdominal").
sintoma("Cambios en los hábitos intestinales (diarrea, estreñimiento o alternancia entre ambos)").
sintoma("Dolor o malestar alrededor del área abdominal").
sintoma("Mucosidad en las heces").
sintoma("Sensación de evacuación incompleta").
sintoma("Flatulencia").
sintoma("Náuseas").
sintoma("Malestar general").


medico("Gastroenterólogo").


derivaciones("Trastornos de ansiedad o depresión").
derivaciones("Síndrome del intestino irritable postinfeccioso").
derivaciones("Fibromialgia").
derivaciones("Trastornos funcionales gastrointestinales").

5Regiones donde el Colon Irritable puede estar presente
region("En todo el mundo").

%Tratamientos para el Colon Irritable
tratamiento("Modificación de la dieta, evitando alimentos desencadenantes como ciertos tipos de carbohidratos (FODMAPs)").
tratamiento("Manejo del estrés y técnicas de relajación, como ejercicios de respiración profunda o yoga").
tratamiento("Uso de medicamentos para aliviar los síntomas, como antiespasmódicos o antidiarreicos").
tratamiento("Suplementos de fibra para regular los movimientos intestinales").
tratamiento("Terapia psicológica, como terapia cognitivo-conductual, para ayudar a manejar los factores psicológicos relacionados con el síndrome del intestino irritable").

%Causa y Factores de riesgo
causa("La causa exacta del síndrome del intestino irritable no se conoce, pero se cree que está relacionado con alteraciones en la función y la sensibilidad del intestino").
causa("Factores de riesgo incluyen antecedentes familiares de colon irritable, infecciones gastrointestinales previas, estrés emocional y sensibilidad alimentaria").
causa("El colon irritable no se debe a una enfermedad inflamatoria intestinal ni aumenta el riesgo de desarrollar cáncer colorrectal").





% listado derivaciones : flagLisDer
elizaLisDer(X, R):- derivaciones2(Y,X), mostrar_derivaciones2(Y, X) , R = ['Bueno', aqui, las, derivaciones, del, X, son, las, siguientes, Y, 'Si', tienes, algun, otro, sintoma, comentamelo].
elizalisDer(X, R):- \+derivaciones2(_,X), R = ['Lo', siento, pero, no, tengo, conocimiento, sobre, ninguna, derivacion, que, tenga, X, en, mi, base, de, conocimientos, puede, que, sea, un, sintoma, y, no, una, derivacion].

derivaciones2([sindrome_de_Guillain_Barre, complicaciones_neurologicas,  artritis_cronica, manifestaciones_oculares, complicaciones_cardiovasculares, complicaciones_en_mujeres_embarazadas, recurrencia_de_sintomas_en_casos_cronicos], chikunguya).
derivaciones2([trastornos_de_ansiedad_o_depresion, sindrome_del_intestino_Irritable_postinfeccioso, fibromialgia, trastornos_funcionales_gastrointestinales], colonIrritado).
derivaciones2([infeccion_del_parpado_y_tejidos_circundantes, ulceras_corneales, cicatrices_corneales, conjuntivitis_cronica], conjuntivitis).

mostrar_derivaciones2([], []).
    mostrar_derivaciones2([X | Resto], [X | Resultado]) :-
    mostrar_derivaciones2(Resto, Resultado).

replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X, Y),
	X == flagLisDer,
	Y=Y,
	elizalisDer(Atom, R).
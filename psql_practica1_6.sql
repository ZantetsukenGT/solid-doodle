/*      6. Generar el script necesario para hacer la inserción de datos a las tablas
	requeridas.
	
	Revisar el documento “Insercion.pdf” compartido junto a este enunciado,
	ahí se encuentran las tablas y los datos que hay que insertar.*/

INSERT INTO Pais (cod_pais, nombre) VALUES (1, 'Guatemala');
INSERT INTO Pais (cod_pais, nombre) VALUES (2, 'Francia');
INSERT INTO Pais (cod_pais, nombre) VALUES (3, 'Argentina');
INSERT INTO Pais (cod_pais, nombre) VALUES (4, 'Alemania');
INSERT INTO Pais (cod_pais, nombre) VALUES (5, 'Italia');
INSERT INTO Pais (cod_pais, nombre) VALUES (6, 'Brasil');
INSERT INTO Pais (cod_pais, nombre) VALUES (7, 'Estados Unidos');

INSERT INTO Profesion (cod_prof, nombre) VALUES (1, 'Médico');
INSERT INTO Profesion (cod_prof, nombre) VALUES (2, 'Arquitecto');
INSERT INTO Profesion (cod_prof, nombre) VALUES (3, 'Ingeniero');
INSERT INTO Profesion (cod_prof, nombre) VALUES (4, 'Secretaria');
INSERT INTO Profesion (cod_prof, nombre) VALUES (5, 'Auditor');

INSERT INTO Miembro (cod_miembro,nombre,apellido,edad,residencia,PAIS_cod_pais,PROFESION_cod_prof)
VALUES (1,'Scott','Mitchell',32,'1092 Highland Drive Manitowoc, Wl 54220',7,3);
INSERT INTO Miembro (cod_miembro,nombre,apellido,edad,telefono,residencia,PAIS_cod_pais,PROFESION_cod_prof)
VALUES (2,'Fanette','Poulin',25,25075853,'49, boulevard Aristide Briand 76120 LE GRAND-QUEVILLY',2,4);
INSERT INTO Miembro (cod_miembro,nombre,apellido,edad,residencia,PAIS_cod_pais,PROFESION_cod_prof)
VALUES (3,'Laura','Cunha Silva',55,'Rua Onze, 86 Uberaba-MG',6,5);
INSERT INTO Miembro (cod_miembro,nombre,apellido,edad,telefono,residencia,PAIS_cod_pais,PROFESION_cod_prof)
VALUES (4,'Juan José','López',38,36985247,'26 calle 4-10 zona 11',1,2);
INSERT INTO Miembro (cod_miembro,nombre,apellido,edad,telefono,residencia,PAIS_cod_pais,PROFESION_cod_prof)
VALUES (5,'Arcangela','Panicucci',39,391664921,'Via Santa Teresa, 114 90010-Geraci Siculo PA',5,1);
INSERT INTO Miembro (cod_miembro,nombre,apellido,edad,residencia,PAIS_cod_pais,PROFESION_cod_prof)
VALUES (6,'Jeuel','Villalpando',31,'Acuña de Figeroa 6106 80101 Playa Pascual',3,5);

INSERT INTO Disciplina (cod_disciplina,nombre,descripcion)
VALUES (1,'Atletismo','Saltos de longitud y triples, de altura y con pértiga o garrocha; las pruebas de lanzamiento de martillo, jabalina y disco');
INSERT INTO Disciplina (cod_disciplina,nombre) VALUES (2,'Bádminton');
INSERT INTO Disciplina (cod_disciplina,nombre) VALUES (3,'Ciclismo');
INSERT INTO Disciplina (cod_disciplina,nombre,descripcion)
VALUES (4,'Judo','Es un arte marcial que se originó en Japón alrededor de 1880');
INSERT INTO Disciplina (cod_disciplina,nombre) VALUES (5,'Lucha');
INSERT INTO Disciplina (cod_disciplina,nombre) VALUES (6,'Tenis de Mesa');
INSERT INTO Disciplina (cod_disciplina,nombre) VALUES (7,'Boxeo');
INSERT INTO Disciplina (cod_disciplina,nombre,descripcion)
VALUES (8,'Natación','Está presente como deporte en los Juegos desde la primera edición de la era moderna, en Atenas, Grecia, en 1896, donde se disputo en aguas abiertas.');
INSERT INTO Disciplina (cod_disciplina,nombre) VALUES (9,'Esgrima');
INSERT INTO Disciplina (cod_disciplina,nombre) VALUES (10,'Vela');

INSERT INTO Tipo_Medalla (cod_tipo, medalla) VALUES (1, 'Oro');
INSERT INTO Tipo_Medalla (cod_tipo, medalla) VALUES (2, 'Plata');
INSERT INTO Tipo_Medalla (cod_tipo, medalla) VALUES (3, 'Bronce');
INSERT INTO Tipo_Medalla (cod_tipo, medalla) VALUES (4, 'Platino');

INSERT INTO Categoria (cod_categoria, Categoria) VALUES (1, 'Clasificatorio');
INSERT INTO Categoria (cod_categoria, Categoria) VALUES (2, 'Eliminatorio');
INSERT INTO Categoria (cod_categoria, Categoria) VALUES (3, 'Final');

INSERT INTO Tipo_Participacion (cod_participacion, tipo_participacion) VALUES (1, 'Individual');
INSERT INTO Tipo_Participacion (cod_participacion, tipo_participacion) VALUES (2, 'Parejas');
INSERT INTO Tipo_Participacion (cod_participacion, tipo_participacion) VALUES (3, 'Equipos');

INSERT INTO Medallero (PAIS_cod_pais,TIPO_MEDALLA_cod_tipo,cantidad_medallas) VALUES (5,1,3);
INSERT INTO Medallero (PAIS_cod_pais,TIPO_MEDALLA_cod_tipo,cantidad_medallas) VALUES (2,1,5);
INSERT INTO Medallero (PAIS_cod_pais,TIPO_MEDALLA_cod_tipo,cantidad_medallas) VALUES (6,3,4);
INSERT INTO Medallero (PAIS_cod_pais,TIPO_MEDALLA_cod_tipo,cantidad_medallas) VALUES (4,4,3);
INSERT INTO Medallero (PAIS_cod_pais,TIPO_MEDALLA_cod_tipo,cantidad_medallas) VALUES (7,3,10);
INSERT INTO Medallero (PAIS_cod_pais,TIPO_MEDALLA_cod_tipo,cantidad_medallas) VALUES (3,2,8);
INSERT INTO Medallero (PAIS_cod_pais,TIPO_MEDALLA_cod_tipo,cantidad_medallas) VALUES (1,1,2);
INSERT INTO Medallero (PAIS_cod_pais,TIPO_MEDALLA_cod_tipo,cantidad_medallas) VALUES (1,4,5);
INSERT INTO Medallero (PAIS_cod_pais,TIPO_MEDALLA_cod_tipo,cantidad_medallas) VALUES (5,2,7);

INSERT INTO Sede (codigo, sede) VALUES (1,'Gimnasio Metropolitano de Tokio');
INSERT INTO Sede (codigo, sede) VALUES (2,'Jardín del Palacio Imperial de Tokio');
INSERT INTO Sede (codigo, sede) VALUES (3,'Gimnasio Nacional Yoyogi');
INSERT INTO Sede (codigo, sede) VALUES (4,'Nippon Budokan');
INSERT INTO Sede (codigo, sede) VALUES (5,'Estadio Olímpico');

INSERT INTO Evento (cod_evento,fecha_hora,ubicacion,DISCIPLINA_cod_disciplina,TIPO_PARTICIPACION_cod_participacion,CATEGORIA_cod_categoria)
VALUES (1,'2020-07-24 11:00:00', 3, 2, 2, 1);
INSERT INTO Evento (cod_evento,fecha_hora,ubicacion,DISCIPLINA_cod_disciplina,TIPO_PARTICIPACION_cod_participacion,CATEGORIA_cod_categoria)
VALUES (2,'2020-07-26 10:30:00', 1, 6, 1, 3);
INSERT INTO Evento (cod_evento,fecha_hora,ubicacion,DISCIPLINA_cod_disciplina,TIPO_PARTICIPACION_cod_participacion,CATEGORIA_cod_categoria)
VALUES (3,'2020-07-30 18:45:00', 5, 7, 1, 2);
INSERT INTO Evento (cod_evento,fecha_hora,ubicacion,DISCIPLINA_cod_disciplina,TIPO_PARTICIPACION_cod_participacion,CATEGORIA_cod_categoria)
VALUES (4,'2020-08-01 12:15:00', 2, 1, 1, 1);
INSERT INTO Evento (cod_evento,fecha_hora,ubicacion,DISCIPLINA_cod_disciplina,TIPO_PARTICIPACION_cod_participacion,CATEGORIA_cod_categoria)
VALUES (5,'2020-08-08 19:35:00', 4, 10, 3, 1);

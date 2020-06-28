/*      1.  Generar el script que crea cada una de las tablas que conforman la base de
            datos propuesta por el Comité Olímpico.
	NOTA: Debe cumplir con todos las restricciones correspondientes (primary
	key, Foreign Key, Unique, Null, Not null).*/

CREATE TABLE Profesion
(
	cod_prof NUMERIC NOT NULL,
	nombre VARCHAR(50) NOT NULL UNIQUE,
	CONSTRAINT pk_profesion PRIMARY KEY (cod_prof)
);

CREATE TABLE Pais
(
	cod_pais NUMERIC NOT NULL,
	nombre VARCHAR(50) NOT NULL UNIQUE,
	CONSTRAINT pk_pais PRIMARY KEY (cod_pais)
);

CREATE TABLE Puesto
(
	cod_puesto NUMERIC NOT NULL,
	nombre VARCHAR(50) NOT NULL UNIQUE,
	CONSTRAINT pk_puesto PRIMARY KEY (cod_puesto)
);

CREATE TABLE Departamento
(
	cod_depto NUMERIC NOT NULL,
	nombre VARCHAR(50) NOT NULL UNIQUE,
	CONSTRAINT pk_depto PRIMARY KEY (cod_depto)
);

CREATE TABLE Miembro
(
	cod_miembro NUMERIC NOT NULL,
	nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100) NOT NULL,
	edad NUMERIC NOT NULL,
	telefono NUMERIC NULL,
	residencia VARCHAR(100) NULL,
	PAIS_cod_pais NUMERIC NOT NULL,
	PROFESION_cod_prof NUMERIC NOT NULL,
	CONSTRAINT pk_miembro PRIMARY KEY (cod_miembro),
	CONSTRAINT fk_pais FOREIGN KEY (PAIS_cod_pais) REFERENCES Pais (cod_pais) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_prof FOREIGN KEY (PROFESION_cod_prof) REFERENCES Profesion (cod_prof) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Puesto_Miembro
(
	MIEMBRO_cod_miembro NUMERIC NOT NULL,
	PUESTO_cod_puesto NUMERIC NOT NULL,
	DEPARTAMENTO_cod_depto NUMERIC NOT NULL,
	fecha_inicio TIMESTAMP NOT NULL,
	fecha_fin TIMESTAMP NULL,
	CONSTRAINT pk_puesto_miembro PRIMARY KEY (MIEMBRO_cod_miembro, PUESTO_cod_puesto, DEPARTAMENTO_cod_depto),
	CONSTRAINT fk_miembro FOREIGN KEY (MIEMBRO_cod_miembro) REFERENCES Miembro (cod_miembro) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_puesto FOREIGN KEY (PUESTO_cod_puesto) REFERENCES Puesto (cod_puesto) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_depto FOREIGN KEY (DEPARTAMENTO_cod_depto) REFERENCES Departamento (cod_depto) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Tipo_Medalla
(
	cod_tipo NUMERIC NOT NULL,
	medalla VARCHAR(20) NOT NULL UNIQUE,
	CONSTRAINT pk_tipo PRIMARY KEY (cod_tipo)
);

CREATE TABLE Medallero
(
	PAIS_cod_pais NUMERIC NOT NULL,
	cantidad_medallas NUMERIC NOT NULL,
	TIPO_MEDALLA_cod_tipo NUMERIC NOT NULL,
	CONSTRAINT pk_medallero PRIMARY KEY (PAIS_cod_pais, TIPO_MEDALLA_cod_tipo),
	CONSTRAINT fk_pais FOREIGN KEY (PAIS_cod_pais) REFERENCES Pais (cod_pais) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_tipo_medalla FOREIGN KEY (TIPO_MEDALLA_cod_tipo) REFERENCES Tipo_Medalla (cod_tipo) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Disciplina
(
	cod_disciplina NUMERIC NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	descripcion VARCHAR(150) NULL,
	CONSTRAINT pk_disciplina PRIMARY KEY (cod_disciplina)
);

CREATE TABLE Atleta
(
	cod_atleta NUMERIC NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	edad NUMERIC NOT NULL,
	participaciones VARCHAR(100),
	DISCIPLINA_cod_disciplina NUMERIC NOT NULL,
	PAIS_cod_pais NUMERIC NOT NULL,
	CONSTRAINT pk_atleta PRIMARY KEY (cod_atleta),
	CONSTRAINT fk_disciplina FOREIGN KEY (DISCIPLINA_cod_disciplina) REFERENCES Disciplina (cod_disciplina) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_pais FOREIGN KEY (PAIS_cod_pais) REFERENCES Pais (cod_pais) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Categoria
(
	cod_categoria NUMERIC NOT NULL,
	categoria VARCHAR(50) NOT NULL,
	CONSTRAINT pk_categoria PRIMARY KEY (cod_categoria)
);

CREATE TABLE Tipo_Participacion
(
	cod_participacion NUMERIC NOT NULL,
	tipo_participacion VARCHAR(100) NOT NULL,
	CONSTRAINT pk_tipo_participacion PRIMARY KEY (cod_participacion)
);

CREATE TABLE Evento
(
	cod_evento NUMERIC NOT NULL,
	fecha TIMESTAMP NOT NULL,
	ubicacion VARCHAR(50) NOT NULL,
	hora TIMESTAMP NOT NULL,
	DISCIPLINA_cod_disciplina NUMERIC NOT NULL,
	TIPO_PARTICIPACION_cod_participacion NUMERIC NOT NULL,
	CATEGORIA_cod_categoria NUMERIC NOT NULL,
	CONSTRAINT pk_evento PRIMARY KEY (cod_evento),
	CONSTRAINT fk_disciplina FOREIGN KEY (DISCIPLINA_cod_disciplina) REFERENCES Disciplina (cod_disciplina) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_tipo_participacion FOREIGN KEY (TIPO_PARTICIPACION_cod_participacion) REFERENCES Tipo_Participacion (cod_participacion) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_categoria FOREIGN KEY (CATEGORIA_cod_categoria) REFERENCES Categoria (cod_categoria) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Evento_Atleta
(
	ATLETA_cod_atleta NUMERIC NOT NULL,
	EVENTO_cod_evento NUMERIC NOT NULL,
	CONSTRAINT pk_evento_atleta PRIMARY KEY (ATLETA_cod_atleta, EVENTO_cod_evento),
	CONSTRAINT fk_atleta FOREIGN KEY (ATLETA_cod_atleta) REFERENCES Atleta (cod_atleta) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_evento FOREIGN KEY (EVENTO_Cod_evento) REFERENCES Evento (cod_evento) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Televisora
(
	cod_televisora NUMERIC NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	CONSTRAINT pk_televisora PRIMARY KEY (cod_televisora)
);

CREATE TABLE Costo_Evento
(
	EVENTO_cod_evento NUMERIC NOT NULL,
	TELEVISORA_cod_televisora NUMERIC NOT NULL,
	tarifa NUMERIC NOT NULL,
	CONSTRAINT pk_costo_evento PRIMARY KEY (EVENTO_cod_evento, TELEVISORA_cod_televisora),
	CONSTRAINT fk_evento FOREIGN KEY (EVENTO_cod_evento) REFERENCES Evento (cod_evento) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_televisora FOREIGN KEY (TELEVISORA_cod_televisora) REFERENCES Televisora (cod_televisora) ON UPDATE CASCADE ON DELETE CASCADE
);

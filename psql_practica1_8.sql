/*      8.  Después de un análisis más profundo se decidió que los Atletas pueden
	participar en varias disciplinas y no sólo en una como está reflejado
	actualmente en las tablas, por lo que se pide que realice lo siguiente.
	
	a. Script que elimine la llave foránea de “cod_disciplina” que se
	encuentra en la tabla “Atleta”.
	
	b. Script que cree una tabla con el nombre “Disciplina_Atleta” que
	contendrá los siguiente campos:
		i. Cod_atleta (llave foránea de la tabla Atleta)
		ii. Cod_disciplina (llave foránea de la tabla Disciplina)

	La llave primaria será la unión de las llaves foráneas “cod_atleta” y
	“cod_disciplina”.*/
ALTER TABLE Atleta
	DROP CONSTRAINT fk_disciplina;
ALTER TABLE Atleta
	DROP COLUMN DISCIPLINA_cod_disciplina;
	
CREATE TABLE Disciplina_Atleta
(
    cod_atleta NUMERIC NOT NULL,
    cod_disciplina NUMERIC NOT NULL,
    CONSTRAINT pk_disciplina_atleta PRIMARY KEY (cod_atleta, cod_disciplina),
    CONSTRAINT fk_atleta FOREIGN KEY (cod_atleta) REFERENCES Atleta (cod_atleta) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_disciplina FOREIGN KEY (cod_disciplina) REFERENCES Disciplina (cod_disciplina) ON UPDATE CASCADE ON DELETE CASCADE
);

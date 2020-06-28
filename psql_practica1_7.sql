/*      7.  Después de que se implementó el script el cuál creó todas las tablas de las
	bases de datos, el Comité Olímpico Internacional tomó la decisión de
	eliminar la restricción “UNIQUE” de las siguientes tablas:

		tabla: columna
		Pais: nombre
		Tipo_Medalla: Medalla
		Departamento: Nombre
	
	Elabore el script que elimine las restricciones “UNIQUE” de las columnas
	antes mencionadas.*/
ALTER TABLE Pais
	DROP CONSTRAINT pais_nombre_key;
	
ALTER TABLE Tipo_Medalla
	DROP CONSTRAINT tipo_medalla_medalla_key;
	
ALTER TABLE Departamento
	DROP CONSTRAINT departamento_nombre_key;
	
	

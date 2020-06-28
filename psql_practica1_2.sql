/*      2.  	En la tabla “Evento” se decidió que la fecha y hora se trabajaría en una sola
		columna.
		• Eliminar las columnas fecha y hora.
		• Crear una columna llamada “fecha_hora” con el tipo de dato que
		corresponda según el DBMS.*/
ALTER TABLE Evento DROP fecha, DROP hora;
ALTER TABLE Evento ADD fecha_hora TIMESTAMP NOT NULL;

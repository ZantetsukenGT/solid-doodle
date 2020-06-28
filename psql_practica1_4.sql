/*      4. Se decidió que las ubicación de los eventos se registrarán previamente en
	una tabla y que en la tabla “Evento” sólo se almacenara la llave foránea
	según el código del registro de la ubicación, para esto debe realizar lo
	siguiente:

	a. Crear la tabla llamada “Sede” que tendrá los campos:
		i. Código: será tipo entero y será la llave primaria.
		ii. Sede: será tipo varchar(50) y será obligatoria.

	b. Cambiar el tipo de dato de la columna Ubicación de la tabla Evento
	por un tipo entero.
	
	c. Crear una llave foránea en la columna Ubicación de la tabla Evento y
	referenciarla a la columna código de la tabla Sede, la que fue creada
	en el paso anterior.*/
CREATE TABLE Sede
(
    codigo NUMERIC NOT NULL,
    sede VARCHAR(50) NOT NULL,
    CONSTRAINT pk_sede PRIMARY KEY (codigo)
);

ALTER TABLE Evento
	ALTER COLUMN ubicacion TYPE NUMERIC USING ubicacion::numeric,
	ALTER COLUMN ubicacion SET NOT NULL;
	
ALTER TABLE Evento
	ADD CONSTRAINT fk_sede FOREIGN KEY (ubicacion) REFERENCES Sede (codigo);

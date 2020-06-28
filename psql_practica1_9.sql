/*      9.  En la tabla “Costo_Evento” se determinó que la columna “tarifa” no debe
	ser entero sino un decimal con 2 cifras de precisión.
	
	Generar el script correspondiente para modificar el tipo de dato que se le
	pide.*/
ALTER TABLE Costo_Evento
	ALTER COLUMN tarifa TYPE NUMERIC(20, 2);

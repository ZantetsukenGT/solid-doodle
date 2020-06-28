/*      3.  Todos los eventos de las olimpiadas deben ser programados del 24 de julio
	de 2020 a partir de las 9:00:00 hasta el 09 de agosto de 2020 hasta las
	20:00:00.
	Generar el Script que únicamente permita registrar los eventos entre estas
	fechas y horarios.*/
ALTER TABLE Evento
	ADD CONSTRAINT Check_fecha_hora CHECK (fecha_hora BETWEEN '2020-07-24 09:00:00'::TIMESTAMP AND '2020-08-09 20:00:00'::TIMESTAMP)

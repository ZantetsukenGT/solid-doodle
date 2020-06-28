/*      13. Los miembros que no tenían registrado su número de teléfono en sus
	perfiles fueron notificados, por lo que se acercaron a las instalaciones de
	Comité para actualizar sus datos.
	
	Nombre			Telefono
	Laura Cunha Silva	55464601
	Jeuel Villalpando	91514243
	Scott Mitchell		920686670
	
	Genere el script que permita actualizar los números telefónicos de los
	miembros anteriores.*/
UPDATE Miembro
	SET telefono = 55464601
	WHERE nombre = 'Laura' AND apellido = 'Cunha Silva';

UPDATE Miembro
	SET telefono = 91514243
	WHERE nombre = 'Jeuel' AND apellido = 'Villalpando';

UPDATE Miembro
	SET telefono = 920686670
	WHERE nombre = 'Scott' AND apellido = 'Mitchell';
	
SELECT * FROM Miembro;

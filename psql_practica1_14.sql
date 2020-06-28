/*      14.  El Comité decidió que necesita la fotografía en la información de los atletas
	para su perfil, por lo que se debe agregar la columna “Fotografía” a la tabla
	Atleta, debido a que es un cambio de última hora este campo deberá ser
	opcional.
	
	Utilice el tipo de dato que crea conveniente según el DBMS y explique el por
	qué utilizó este tipo de dato.
	
	
	
	
	Voy a utilizar VARCHAR(100), con base a lo que investigué, imágenes en una base de datos pueden llegar a 
	ocupar muchos recursos y el rendimiento de las demás consultas se vería muy afectado, por lo que un URL 
	hacia la ubicacion en donde se encuentra la imagen en un sistema de arhcivos tan optimizado como el de ext3/ext4 sería la solución.
	
	Y la otra cara de la moneda es que hay motores SQL como el SQL Server que tienen tipos como FileStream que estan altamente optimizados, y una
	de sus aplicaciones sería almacenar las imágenes.
	Además, reconozco que al utilizar esta técnica, se aprovechan los beneficios de las características transaccionales y de integridad de una BD
	y de todas las características de copias de seguridad en caché o de optimización de buffer de memoria que pueda tener dicho motor de BD. 
	
	Un debate bastante interesante sobre el tema:
		https://stackoverflow.com/questions/3748/storing-images-in-db-yea-or-nay
	
	*/
ALTER TABLE Atleta
	ADD fotografia VARCHAR(100);
	

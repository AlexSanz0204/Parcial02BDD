CREATE TABLE DueñoMascota 
	(
		NumeroIdentidad INT PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(50) NOT NULL,
		Apellido VARCHAR(50) NOT NULL,
		Direccion VARCHAR(100) NOT NULL,
		Departamento VARCHAR(25) NOT NULL,
		Municipio VARCHAR(25) NOT NULL,
		CodigoPostal INT NOT NULL,
		NumeroTelefono INT NOT NULL,
	);

CREATE TABLE Mascota 
	(
		NumeroIdentidadMascota INT PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(50) NOT NULL,
		Raza VARCHAR(50) NOT NULL,
		Peso VARCHAR(100) NOT NULL,
		TipoMascota VARCHAR(50) NOT NULL,
		ObservacionesMascota VARCHAR(100) NOT NULL,
	);

CREATE TABLE Ingresos 
	(	
		ObservacionesIngreso VARCHAR(100) PRIMARY KEY NOT NULL,
		Motivo VARCHAR(100) NOT NULL,
		FechaIngreso VARCHAR(10) NOT NULL,
	);

CREATE TABLE Veterinario 
	(
		NumeroIdentidadVeterinario INT PRIMARY KEY IDENTITY (1, 1),
		Nombre VARCHAR(50) NOT NULL,
		Apellido VARCHAR(50) NOT NULL,
		Cargo VARCHAR(50) NOT NULL,
	);

	CREATE TABLE Consulta 
	(
		IdentidadDueño INT,
		IdentidadMascota INT,
		IdentidadVeterinario INT,
		ObsIngreso VARCHAR(100),

		FOREIGN KEY (IdentidadDueño) REFERENCES DueñoMascota(NumeroIdentidad),		FOREIGN KEY (IdentidadMascota) REFERENCES Mascota(NumeroIdentidadMascota),		FOREIGN KEY (IdentidadVeterinario) REFERENCES Veterinario(NumeroIdentidadVeterinario),		FOREIGN KEY (ObsIngreso) REFERENCES Ingresos(ObservacionesIngreso),
	);

INSERT INTO Veterinario VALUES('Luis', 'Chacón', 'Cirujano');
INSERT INTO Veterinario VALUES('Karla', 'Figueroa', 'Enfermera');
INSERT INTO Veterinario VALUES('Manuel', 'Enriquez', 'Veterinario');
INSERT INTO Veterinario VALUES('Marta', 'Zelaya', 'Veterinaria');



INSERT INTO Mascota VALUES('Misifus', 'Normal', '34.56', 'Pequeña','la mascota ingreso con moquillo');
INSERT INTO Mascota VALUES('Parches', 'Normal', '37.45', 'Pequeña','la mascota ingreso con sangrado');
INSERT INTO Mascota VALUES('nubes', 'Normal', '34.56', 'Pequeña','la mascota ingreso con diarrea');
INSERT INTO Mascota VALUES('clara', 'Normal', '43.45', 'Pequeña','la mascota ingreso con asma');
INSERT INTO Mascota VALUES('corona', 'Normal', '65.36', 'Pequeña','la mascota ingreso con moqillo');
INSERT INTO Mascota VALUES('carlos', 'Normal', '23.36', 'Pequeña','la mascota ingreso con comezon');
INSERT INTO Mascota VALUES('chiricuto', 'Normal', '35.56', 'Pequeña','la mascota ingreso con falta de respiración');
INSERT INTO Mascota VALUES('firu', 'Normal', '53.56', 'Pequeña','la mascota ingreso con envenenamiento');
INSERT INTO Mascota VALUES('manu', 'Normal', '63.56', 'Pequeña','la mascota ingreso con moquillo');


INSERT INTO Ingresos VALUES('la mascota ingreso con asma', 'Enfermedad','10/02/21');
INSERT INTO Ingresos VALUES( 'la mascota ingreso con diarrea', 'Enfermedad','10/02/21');
INSERT INTO Ingresos VALUES( 'la mascota ingreso con asma', 'Enfermedad','10/02/21');
INSERT INTO Ingresos VALUES( 'la mascota ingreso con un tumor cerebral en estado grave', 'Operación urgente','10/02/21');
INSERT INTO Ingresos VALUES( 'la mascota ingreso con moquillo', 'Enfermedad','10/02/21');

USE Proyecto;

CREATE TABLE articulo(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	codigo VARCHAR(250),
	color VARCHAR(250),
	descripcion VARCHAR(500),
	departamento VARCHAR(250)
);

CREATE TABLE sucursal(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	codigo VARCHAR(250) UNIQUE ,
	nombre VARCHAR(250),
	direccion VARCHAR(250)
);

CREATE TABLE region(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	region VARCHAR(250),
	departamento VARCHAR(250),
	zona INT,
);

CREATE TABLE fecha(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	dia INT,
	mes INT,
	anio INT,
	fecha DATE,
	semestre INT,
	nombreMes VARCHAR(50)
);

CREATE TABLE cliente(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	codigo VARCHAR(250) UNIQUE,
	nombre VARCHAR(250),
	tipocliente VARCHAR(250),
	direccion VARCHAR(250),
	correo VARCHAR(250)
);

CREATE TABLE vendedor(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	codigo VARCHAR(250) UNIQUE,
	nombre VARCHAR(250),
	sucursal VARCHAR(250)
);

CREATE TABLE ventas(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	id_cliente INT,
	id_articulo INT,
	id_sucursal INT,
	id_region INT,
	id_vendedor INT,
	id_fecha INT,
	cantidad NUMERIC,
	precioUnitario NUMERIC(10,2),
	total NUMERIC(10,2),
	FOREIGN KEY(id_cliente) REFERENCES cliente(id),
	FOREIGN KEY(id_articulo) REFERENCES articulo(id),
	FOREIGN KEY(id_sucursal) REFERENCES sucursal(id),
	FOREIGN KEY(id_region) REFERENCES region(id),
	FOREIGN KEY(id_vendedor) REFERENCES vendedor(id),
	FOREIGN KEY(id_fecha) REFERENCES fecha(id)
);



CREATE TABLE errores(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	columna INT,
	mensaje VARCHAR(250)
);


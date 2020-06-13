CREATE DATABASE carga;
USE carga;

CREATE TABLE articulotemp(
	codigo varchar(250),
	color varchar(250),
	descripcion varchar(250),
	departamento varchar(250)
);

CREATE TABLE clientetemp(
	codigocliente varchar(250),
	nombrecliente varchar(250),
	tipocliente varchar(250),
	direccioncliente varchar(250),
	correocliente varchar(250)
);

CREATE TABLE sucursaltemp(
	codigo varchar(250),
	nombre varchar(250),
	direccion varchar(250),
	region  varchar(250),
	departamento varchar(250),
	zona varchar(250)
);

CREATE TABLE vendedortemp(
	codigo varchar(250),
	nombre varchar(250),
	sucursal varchar(250)
);

CREATE TABLE ventastemp(
	codigo varchar(250),
	nombre varchar(250),
	tipo varchar(250),
	direccioncliente varchar(250),
	correo varchar(250),
	codigoarticulo varchar(250),
	color varchar(250),
	descripcion varchar(250),
	departamentoarticulo varchar(250),
	codigosucursal varchar(250),
	nombresucursal varchar(250),
	direccion varchar(250),
	region varchar(250),
	departamento varchar(250),
	zona varchar(250),
	codigovendedor varchar(250),
	nombrevendedor varchar(250),
	sucursal varchar(250),
	fecha varchar(250),
	unidades varchar(250),
	preciounitario varchar(250)
);
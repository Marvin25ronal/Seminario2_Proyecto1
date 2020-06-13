use carga;
select * from articulotemp;
select * from clientetemp;
select * from sucursaltemp;
select * from vendedortemp;
select * from ventastemp;
select * from vendedortemp;


truncate table articulotemp;
truncate table clientetemp;
truncate table sucursaltemp;
truncate table vendedortemp;
truncate table ventastemp;
truncate table vendedortemp;


use Proyecto;
select * from articulo;
select * from cliente;
select * from sucursal;
select * from region;
select * from fecha;
select id_fecha from ventas group by(id_fecha)order by(id_fecha) ASC;
select * from vendedor;
select * from errores;


truncate table errores;
delete from ventas where not id=-1;
delete from articulo where not id=-1;
delete from cliente where not id=-1;
delete from region where not id=-1;
delete from sucursal where not id =-1;
delete from fecha where not id=-1;
delete from vendedor where not id=-1;




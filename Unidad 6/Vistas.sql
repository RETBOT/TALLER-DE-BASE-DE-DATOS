use Empresa
 if object_id('vista_empleados') is not null
 drop view vista_empleados;
 if object_id('vista_empleados2') is not null 
 drop view vista_empleados2

create view vista_empleados as
select (apellido+' '+e.nombre) as nombre,sexo,
s.nombre as seccion, cantidadhijos
from empleados as e
join secciones as s
on IDSeccion=seccion;


create view vista_empleados2 as
select nombre, apellido,fechaingreso,seccion,estadocivil,sueldo
from empleados
where sueldo>=600
with check option; select *from vista_empleados;select *from vista_empleados2;
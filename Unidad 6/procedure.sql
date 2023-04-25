use Empresa
go 

Select * from empleados

Create procedure getEmpleados as 
begin 
set nocount on 
select e.nombre, e.apellido, e.sexo from empleados as e
end

EXEC getEmpleados --mostrar tabla

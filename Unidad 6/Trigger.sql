use Empresa
go

drop trigger permisoSecciones

Create trigger PermisoEmpleados
on empleados
after insert, update  
as Raiserror ('Notificar a encargado',16,10);
go

Create trigger PermisoSecciones
on secciones
after insert, update  
as Raiserror ('Notificar a encargado',16,10);
go

use Empresa
drop trigger notificacion 

create trigger IUD_Noti
on secciones
after insert, update, delete
as
EXEC msdb.dbo.sp_send_dbmail
	@profile_name = 'usuarioSQL',
	@recipients = 'robertoesquiveltr16@gmail.com',
	@body = 'No olvide imprimir un informe.',
	@subject = 'Recordatorio';
go


use Empresa
select * from secciones

use Empresa
 insert into secciones values('Contaduria',500);
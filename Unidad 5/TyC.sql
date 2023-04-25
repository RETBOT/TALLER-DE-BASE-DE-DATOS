
/*
begin tran --> se utiliza para indicar una o varias intrucciones 
commit --> para terminar una transaccion 

rollback --> para regresar a un estado anterior 
*/


use Biblioteca

declare @Error int

begin tran 
update Autor set IDAutor = 1 where Nombre = 'Juan Rulfo'

insert into Autor values(2,'Juan','Mexico')


set @Error = @@ERROR

if(@Error <> 0)
begin 
rollback tran
print 'Error en la transaccion'
end
else 
commit 

select * from Autor

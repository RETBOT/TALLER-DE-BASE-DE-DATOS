use Biblioteca
go

--Tabla Usuario
insert into Usuario values(
4555,5555,9898,'Roberto','Avenida #1','87878787')

insert into Usuario values(
4666,5666,9797,'Pedro','Avenida #2','98989898')

insert into Usuario values(
4777,5777,9696,'Juan','Avenida #4','909090990')

--Tabla Autores
insert into Autor values(
15463,'Juan Rulfo','Mexicano')

insert into Autor values(
29263,'Gabriel García','Colombiano')

insert into Autor values(
32536,'Jorge Luis Borges','Argentino')

--Tabla Libro
insert into Libro values(
0333,1222,'Pedro Páramo','91212','Cultura Económica',120,15463)

insert into Libro values(
0444,1333,'Cien años de soledad','91313','Sudamericana',100,29263)

insert into Libro values(
0555,1444,'Ficciones','91414','Emecé Editores',120,32536)

--Tabla prestamo
insert into Prestamos values(
010333,0333,4555,convert(datetime,1999-10-12),convert(datetime,1999-10-14))

insert into Prestamos values(
010444,0444,4666,convert(datetime,1999-10-13),convert(datetime,1999-10-20))

insert into Prestamos values(
010555,0555,4777,convert(datetime,1999-10-12),convert(datetime,1999-10-16))




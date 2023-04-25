--create database Biblioteca 
--go

use Biblioteca 
go

create table Usuario(
IDUsuario int not null primary key,
NumUsuario int,
NIF varchar(20),
Nombre varchar(20),
Direccion varchar(255),
Telefono varchar(20))

create table Autor(
IDAutor int not null primary key,
Nombre varchar(100),
Nacionalidad varchar(50))

create table Libro(
IDLibro int not null,
Codigo int,
Titulo varchar(100),
ISBN varchar(30),
Editorial varchar(60),
NumPag tinyint,
IDAutor int not null,
Primary key(IDLibro),
FOREIGN KEY(IDAutor) REFERENCES Autor(IDAutor))

create table Prestamos(
IDPrestamo int not null,
IDLibro int not null,
IDUsuario int not null,
FccPrestamo datetime,
FccDevolucion datetime,
Primary key(IDPrestamo),
foreign key(IDLibro) References Libro(IDLibro),
foreign key(IDUsuario) References Usuario(IDUsuario))

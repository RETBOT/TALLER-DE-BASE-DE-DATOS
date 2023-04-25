use Empresa 

 if object_id('empleados') is not null
 drop table empleados;
 if object_id('secciones') is not null
 drop table secciones;

 create table secciones(
 IDSeccion int,
 nombre varchar(20),
 sueldo decimal(5,2)
 constraint CK_secciones_sueldo check (sueldo>=0),
 constraint PK_secciones primary key (IDSeccion)
 );
 create table empleados(
 IDEmpleado int,
 sexo char(1)
 constraint CK_empleados_sexo check (sexo in ('f','m')),
 apellido varchar(20),
 nombre varchar(20),
 domicilio varchar(30),
 seccion int not null,
 cantidadhijos tinyint
 constraint CK_empleados_hijos check (cantidadhijos>=0),
 estadocivil char(10)
 constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
 fechaingreso datetime,
 constraint PK_empleados primary key (IDEmpleado),
 sueldo decimal(6,2),
 constraint FK_empleados_seccion
 foreign key (seccion)
 references secciones(IDSeccion)
 on update cascade
);
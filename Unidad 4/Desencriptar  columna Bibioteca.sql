use Biblioteca
OPEN SYMMETRIC KEY MySymmetricKey 
	DECRYPTION BY CERTIFICATE MyCertificate;
	go

--Tabla Auto 
Select IDAutor, IDAuto_Encrypted AS 'ID Autor Encriptado',
CONVERT(int ,DECRYPTBYKEY(IDAuto_Encrypted,0,
HashBytes('SHA1',CONVERT(varbinary,IDAutor)))) 
AS 'Decrypted ID Autor' from Autor
go

--Tabla Libro
Select IDLibro, IDLibro_Encrypted AS 'ID Libro Encriptado',
CONVERT(int ,DECRYPTBYKEY(IDLibro_Encrypted,0,
HashBytes('SHA1',CONVERT(varbinary,IDAutor)))) 
AS 'Decrypted ID Libro' from Libro
go

--Tabla Prestamo
Select IDPrestamo, IDPrestamo_Encrypted AS 'ID Prestamo Encriptado',
CONVERT(int ,DECRYPTBYKEY(IDPrestamo_Encrypted,0,
HashBytes('SHA1',CONVERT(varbinary,IDPrestamo)))) 
AS 'Decrypted ID Prestamo' from Prestamos
go

--Tabla usuario
Select IDUsuario, IDUsuario_Encrypted AS 'ID Usuario Encriptado',
CONVERT(int ,DECRYPTBYKEY(IDUsuario_Encrypted,0,
HashBytes('SHA1',CONVERT(varbinary,IDUsuario)))) 
AS 'Decrypted ID Usuario' from Usuario
go
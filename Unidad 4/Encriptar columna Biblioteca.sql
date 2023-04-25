use Biblioteca
go 

--Cree una columna en la que almacenar los datos cifrados
  --Para tabla autor
  -- AlTER TABLE Autor 
  -- ADD IDAuto_Encrypted varbinary(160); -- ya esta agregada
  -- go

 --Para tabla libro
 -- ALTER TABLE Libro
 -- ADD IDLibro_Encrypted varbinary(160); -- ya esta agregada
 -- go

 --Para tabla Prestamos
 -- ALTER TABLE Prestamos
 -- ADD IDPrestamo_Encrypted varbinary(160); -- ya esta agregada
 -- go

 --Para tabla Usuario
-- ALTER TAbLE Usuario
-- ADD IDUsuario_Encrypted varbinary(160); -- ya esta agregada
-- go

--Abra la clave simétrica con la que cifrar los datos.
    OPEN SYMMETRIC KEY MySymmetricKey 
	DECRYPTION BY CERTIFICATE MyCertificate;
	go

--Cifre el valor en la columna IDAuto usando la clave simétrica MySymmetricKey'. 
--Guarde el resultado en la columna IDAuto_Encrypted.
    UPDATE Autor  
    SET IDAuto_Encrypted = EncryptByKey(Key_GUID('MySymmetricKey'),CONVERT(varbinary, IDAutor));  
    GO 
    select * from Autor

 --Cifrar el valor de la columna IDLibro usando la clave simétrica MySymmetricKey. 
 --Gruarde el resultado en la columna IDLibro_Encrypted
    Update Libro
    Set IDLibro_Encrypted = EncryptByKey(Key_GUID('MySymmetricKey'),CONVERT(varbinary, IDLibro)); 
    go
    select * from Libro

 --Cifrar el valor de la columna IDPrestamo usando la clave simétrica MySymmetricKey. 
 --Guarde el resultado en la clumna IDPrestamo_Encrypred
    Update Prestamos
    Set IDPrestamo_Encrypted = EncryptByKey(Key_GUID('MySymmetricKey'),CONVERT(varbinary, IDPrestamo));
    go
    select * from Prestamos

 --Cifrar el valor de la columna IDUsuario usando la clave simétrica MySymmetricKey. 
 --Guarde el resultado en la columna IDUsuario_Encrypted
    Update Usuario
    Set IDUsuario_Encrypted = EncryptByKey(Key_GUID('MySymmetricKey'),CONVERT(varbinary, IDUsuario));
    go
    select * from Usuario
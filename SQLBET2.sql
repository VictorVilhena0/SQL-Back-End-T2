CREATE DATABASE TesteBackEndT2

GO
USE TesteBackEndT2

GO
CREATE TABLE Usuarios
(
	UsuarioId INT PRIMARY KEY IDENTITY,
	Email VARCHAR(75) UNIQUE NOT NULL,
	Senha VARCHAR(40) NOT NULL
)

GO
INSERT INTO Usuarios VALUES ('redspy@gmail.com', '123456')

GO
INSERT INTO Usuarios VALUES ('emaildigital@outlook.com.br', 'quindim3920552')

GO
INSERT INTO Usuarios VALUES ('emailultrasecreto@secreto.com.br', 'senhaultrasecreta297523750259')

GO
SELECT * FROM Usuarios

GO
SELECT UsuarioId, Email, HASHBYTES('MD5', Senha) AS 'Senha secreta' FROM Usuarios WHERE UsuarioId = 1
SELECT UsuarioId, HASHBYTES('SHA', Email) AS 'Email ultra secreto', HASHBYTES('SHA1', Senha) AS 'Senha ultra secreta' FROM Usuarios WHERE UsuarioId = 2
SELECT UsuarioId, HASHBYTES('MD4',Email) AS 'Email secreto', Senha FROM Usuarios WHERE UsuarioId = 3

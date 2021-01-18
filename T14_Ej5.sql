use T14_Ej5;

CREATE TABLE Almacenes(
codigo int IDENTITY (1,1) PRIMARY KEY,
lugar varchar(100),
capacidad int
)

CREATE TABLE Cajas(
numReferencia char(5) PRIMARY KEY,
contenido varchar(100) NOT NULL,
valor int,
almacen int FOREIGN KEY REFERENCES Almacenes(codigo)
)
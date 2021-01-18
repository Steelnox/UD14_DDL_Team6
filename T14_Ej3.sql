use T14_Ej3;

CREATE TABLE Fabricantes(
codigo int IDENTITY (1,1) PRIMARY KEY,
nombre varchar(100) NOT NULL
)

CREATE TABLE Articulos(
codigo int IDENTITY (1,1) PRIMARY KEY,
nombre varchar(100) NOT NULL,
precio int,
fabricante int FOREIGN KEY REFERENCES Fabricantes(codigo)
)
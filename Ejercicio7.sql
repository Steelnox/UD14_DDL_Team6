use T14_Ej7;

CREATE TABLE Despachos(
Numero int PRIMARY KEY,
Capacidad int NOT NULL
)

CREATE TABLE Directores(
DNI varchar(8) PRIMARY KEY,
NomApels nvarchar(255) NOT NULL,
Despacho int FOREIGN KEY REFERENCES Despachos(Numero) on update cascade,
DNIJefe varchar(8) FOREIGN KEY REFERENCES Directores(DNI) on update no action
);


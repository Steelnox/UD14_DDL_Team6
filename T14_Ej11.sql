use T14_Ej11;

CREATE TABLE Facultad(
codigo int PRIMARY KEY,
nombre varchar(100) NOT NULL
)

CREATE TABLE Investigadores(
DNI varchar(8) PRIMARY KEY,
nomApels varchar(255) NOT NULL,
facultad int FOREIGN KEY REFERENCES Facultad(codigo)
)

CREATE TABLE Equipos(
numSerie char(4) PRIMARY KEY,
nombre varchar(100) NOT NULL,
facultad int FOREIGN KEY REFERENCES Facultad(codigo)
)

CREATE TABLE Reserva(
DNI varchar(8) FOREIGN KEY REFERENCES Investigadores(DNI),
numSerie char(4) FOREIGN KEY REFERENCES Equipos(numSerie),
comienzo datetime,
fin datetime,
CONSTRAINT PK_Reserva PRIMARY KEY (DNI,numSerie)
)
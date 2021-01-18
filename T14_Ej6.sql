use T14_Ej6;

CREATE TABLE Peliculas(
codigo int IDENTITY(1,1) PRIMARY KEY,
nombre varchar(100) NOT NULL,
calificacionEdad int
)

CREATE TABLE Salas(
codigo int IDENTITY(1,1) PRIMARY KEY,
nombre varchar(100),
pelicula int FOREIGN KEY REFERENCES Peliculas(codigo)
)
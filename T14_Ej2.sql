use T14_Ej2;

CREATE TABLE Editorial(
claveEditorial smallint PRIMARY KEY,
nombre varchar(60) NOT NULL,
direccion varchar(60),
telefono varchar(60)
)

CREATE TABLE Libro(
claveLibro int PRIMARY KEY,
titulo varchar(60) NOT NULL,
idioma varchar(15),
formato varchar(15),
claveEditorial smallint FOREIGN KEY REFERENCES Editorial(claveEditorial)
)

CREATE TABLE Tema(
claveTema smallint PRIMARY KEY,
nombre varchar(40)
)

CREATE TABLE Autor(
claveAutor int PRIMARY KEY,
nombre varchar(60)
)

CREATE TABLE Ejemplar(
claveEjemplar int PRIMARY KEY,
numeroOrden smallint,
edicion smallint,
ubicacion varchar(15),
categoria char,
claveLibro int FOREIGN KEY REFERENCES Libro(claveLibro)
)

CREATE TABLE Socio(
claveSocio int PRIMARY KEY,
nombre varchar(60),
direccion varchar(60),
telefono varchar(15),
categoria char
)

CREATE TABLE Prestamo(
id_prestamo int PRIMARY KEY,
numeroOrden smallint,
fecha_prestamo date,
fecha_devolucion date,
notas varchar(5),
claveSocio int FOREIGN KEY REFERENCES Socio(claveSocio),
claveEjemplar int FOREIGN KEY REFERENCES Ejemplar(claveEjemplar)
)

CREATE TABLE Trata_sobre(
id_tratasobre int PRIMARY KEY,
claveLibro int FOREIGN KEY REFERENCES Libro(claveLibro),
claveTema smallint FOREIGN KEY REFERENCES Tema(claveTema)
)

CREATE TABLE Escrito_por(
id_escritopor int PRIMARY KEY,
claveLibro int FOREIGN KEY REFERENCES Libro(claveLibro),
claveAutor int FOREIGN KEY REFERENCES Autor(claveAutor)
)


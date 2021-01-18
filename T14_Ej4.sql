use T14_Ej4;

CREATE TABLE Departamentos (
codigo int PRIMARY KEY,
nombre varchar(100) NOT NULL,
presupuesto int
)

CREATE TABLE Empleados(
DNI varchar(8) PRIMARY KEY,
nombre varchar(100) NOT NULL,
apellidos varchar(255) NOT NULL,
departamento int FOREIGN KEY REFERENCES Departamentos(codigo)
)
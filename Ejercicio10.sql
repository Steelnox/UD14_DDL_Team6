USE T14_Ej10;

CREATE TABLE Productos(
Codigo int identity(1,1) primary key,
Nombre nvarchar(100) not null,
Precio int
)

CREATE TABLE Cajeros(
Codigo int identity(1,1) primary key,
NomsApels nvarchar(255) not null
)

CREATE TABLE Maquinas_Registradoras(
Codigo int identity(1,1) primary key,
Piso int not null
)

CREATE TABLE Suministra(
Cajero int,
Maquina int,
Producto int,
foreign key (Cajero) references Cajeros(Codigo) on update cascade,
foreign key (Maquina) references Maquinas_Registradoras(Codigo) on update cascade,
foreign key (Producto) references Productos(Codigo) on update cascade
)
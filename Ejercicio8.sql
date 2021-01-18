USE T14_Ej8;

CREATE TABLE Piezas(
Codigo int identity(1,1) primary key,
Nombre nvarchar(100) not null
)

CREATE TABLE Proveedores(
Id char(4) primary key,
Nombre nvarchar(100) not null
)

CREATE TABLE Suministra(
CodigoPieza int,
IdProveedor char(4),
Precio int not null,
foreign key (CodigoPieza) references Piezas(Codigo),
foreign key (IdProveedor) references Proveedores(Id) on update cascade
)
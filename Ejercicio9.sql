USE T14_Ej9;

CREATE TABLE Cientificos(
DNI varchar(8) primary key,
NomApels nvarchar(255) not null
)

CREATE TABLE Proyecto(
Id char(4) primary key,
Nombre nvarchar(255) not null,
Horas int
)

CREATE TABLE Suministra(
Cientifico varchar(8),
Proyecto char(4),
foreign key (Cientifico) references Cientificos(DNI) on update cascade,
foreign key (Proyecto) references Proyecto(Id) on update cascade
)
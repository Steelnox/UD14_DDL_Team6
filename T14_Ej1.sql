use T14_Ej1;

CREATE TABLE Estacion(
identificador int PRIMARY KEY,
latitud varchar(15) NOT NULL,
longitud varchar(15) NOT NULL, 
altitud int NOT NULL
)

CREATE TABLE Muestra(
id int PRIMARY KEY,
identificadorEstacion int FOREIGN KEY REFERENCES Estacion(identificador),
fecha date NOT NULL,
temp_min float NOT NULL,
temp_max float NOT NULL,
precipitaciones int NOT NULL,
humedad_min float NOT NULL,
humedad_max float NOT NULL,
vel_viento_min float NOT NULL,
vel_viento_max float NOT NULL
)
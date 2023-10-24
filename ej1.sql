drop database if exists ej1Individual;
create database ej1Individual;
use ej1Individual;

create table Estacion(
identificador int auto_increment primary key,
latitud int,
longitud double,
altitud double
);

create table Muestra (
identificador_estacion int,
fecha date,
temperatura_minima double,
temperatura_maxima double,
precipitaciones int,
humedadMínima double,
velocidad_viento_minima double,
velocidad_viento_maxima double,
foreign key (identificador_estacion) references Estacion(identificador),
primary key (identificador_estacion, fecha)
);
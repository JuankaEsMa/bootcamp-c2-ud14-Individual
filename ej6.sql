create database ej6Individual;

use ej6Individual;

create table Pelicula(
codigo int auto_increment primary key,
nombre varchar(100),
calificacion_edad int
);

create table Sala(
codigo int auto_increment primary key,
nombre varchar(100),
pelicula int,
foreign key (pelicula) references Pelicula(codigo)
);
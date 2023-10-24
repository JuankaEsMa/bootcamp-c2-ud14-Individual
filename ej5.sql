create database ej5Individual;
use ej5Individual;

create table Almacen (
codigo int auto_increment primary key,
lugar varchar(100),
capacidad int
);

create table Cajas (
numReferencia char(5),
contenido varchar(100),
valor int,
almacen int,
foreign key (almacen) references Almacen(codigo)
);
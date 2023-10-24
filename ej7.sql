create database ej7Individual;

use ej7Individual;

create table Despacho(
numero int auto_increment primary key,
capacidad int
);

create table Director(
dni varchar(8) primary key,
nomApels varchar(255),
dni_jefe varchar(8),
despacho int,
foreign key (dni_jefe) references Director(dni),
foreign key (despacho) references Despacho(numero)
);
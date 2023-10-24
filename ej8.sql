drop database if exists ej8Individual;
create database ej8Individual;

use ej8Individual;

create table Pieza(
codigo int auto_increment primary key, 
nombre varchar(100)
);

create table Proveedor(
id char(4) primary key,
nombre varchar(100)
);

create table Suministra(
codigo_pieza int,
proveedor char(4),
precio int,
primary key (codigo_pieza, proveedor),
foreign key (codigo_pieza) references Pieza(codigo),
foreign key (proveedor) references Proveedor(id)
);
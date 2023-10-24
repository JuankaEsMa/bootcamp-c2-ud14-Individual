create database ej10Individual;

use ej10Individual;

create table Cajero (
codigo int auto_increment primary key,
nom_apels varchar(255)
);

create table Producto(
codigo int auto_increment primary key,
nombre varchar(255),
precio int
);

create table Maquina_registradora(
codigo int auto_increment primary key,
piso int
);

create table Venta(
cajero int,
maquina int,
producto int,
primary key (cajero, maquina, producto),
foreign key (cajero) references Cajero(codigo),
foreign key (maquina) references Maquina_registradora(codigo),
foreign key (producto) references Producto(codigo)
);
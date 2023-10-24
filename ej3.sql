create database ej3Individual;
use ej3Individual;

create table Fabricante(
codigo int auto_increment primary key,
nombre varchar(100)
);

create table Articulos(
codigo int auto_increment primary key,
nombre varchar(100),
precio int,
fabricante int,
foreign key (fabricante) references Fabricante(codigo) 
);
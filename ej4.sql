drop database if exists ej4Individual;
create database ej4Individual;
use ej4Individual;

create table Departamento(
codigo int auto_increment primary key,
nombre varchar(100),
presupuesto int
);

create table empleado(
dni varchar(8) primary key,
nombre varchar(100),
apellidos varchar(250),
departamento int,
foreign key (departamento) references Departamento(codigo)
);


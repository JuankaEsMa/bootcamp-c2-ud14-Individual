create database ej9Individual;

use ej9Individual;

create table Cientifico(
dni varchar(8) primary key,
nom_apels varchar(255)
);

create table Proyecto(
id int auto_increment primary key,
nombre varchar(255),
horas int
);

create table Asignado_a(
cientifico varchar(8),
proyecto int,
primary key (cientifico, proyecto),
foreign key (cientifico) references Cientifico(dni),
foreign key (proyecto) references Proyecto(id)
);

create database ej11Individual;

use ej11Individual;

create table Facultad(
codigo int auto_increment primary key,
nombre varchar(100)
);

create table Investigador(
dni varchar(8) primary key,
nom_apels varchar(255),
facultad int,
foreign key (facultad) references Facultad(codigo)
);

create table Equipo(
num_serie char(4) primary key,
nombre varchar(100),
facultad int,
foreign key (facultad) references Facultad(codigo)
);

create table Reserva(
dni varchar(8),
num_serie char(4),
comienzo datetime,
fin datetime,
primary key (dni, num_serie),
foreign key (dni) references Investigador(dni),
foreign key (num_serie) references Equipo(num_serie)
);
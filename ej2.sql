drop database if exists ej2Individual;
create database ej2Individual;
use ej2Individual;
create table Editorial(
clave_editorial smallint auto_increment primary key,
nombre varchar(60),
direccion varchar(60),
telefono varchar(15)
);

create table Libro(
clave_libro int auto_increment primary key,
titulo varchar(60),
idioma varchar(15),
formato varchar(15),
clave_editorial smallint,
foreign key (clave_editorial) references Editorial(clave_editorial)
);

create table Tema(
clave_tema smallint auto_increment primary key,
nombre varchar(40)
);

create table Autor (
clave_autor int auto_increment primary key,
nombre varchar(60)
);

create table Ejemplar(
clave_ejemplar int auto_increment primary key,
clave_libro int,
numeroOrden smallint,
edicion smallint,
ubicacion varchar(15),
categoria char,
foreign key (clave_libro) references Libro(clave_libro)
);

create table Socio (
clave_socio int auto_increment primary key,
nombre varchar(40),
direccion varchar(40),
telefono varchar(15),
categoria char
);

create table Prestamo(
clave_socio int,
clave_ejemplar int,
numero_orden int,
fecha_prestamo date,
fecha_devolucion date,
notas blob,
foreign key (clave_socio) references Socio(clave_socio),
foreign key (clave_ejemplar) references Ejemplar(clave_ejemplar),
primary key (clave_socio, clave_ejemplar)
);

create table Trata_sobre(
clave_libro int,
clave_tema smallint,
foreign key (clave_libro) references Libro(clave_libro),
foreign key (clave_tema) references Tema(clave_tema),
primary key (clave_libro, clave_tema)
);

create table Escrito_por(
clave_libro int,
clave_autor int,
foreign key (clave_libro) references Libro(clave_libro),
foreign key (clave_autor) references Autor(clave_autor),
primary key (clave_libro, clave_autor)
);
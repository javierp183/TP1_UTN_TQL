
/*
La siguiente, es la linea para crear la base de datos de la biblioteca:
*/
--- create database Biblioteca

/*
la siguiente linea, utiliza la base de datos ' Biblioteca '
*/
--- Use Biblioteca



/*

la siguientes lineas arman la estructura de tablas tanto para Idioma como para
Autores, las mismas disponen de un unico PK que luego es usado en la tabla
principal de 'libros' como FK's

Generos por libros y autores por libros

*/

/*


CREATE TABLE Autores
(
    ID INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Autor VARCHAR(100)

)

CREATE TABLE Generos
(
    ID INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Autor VARCHAR(100)
)

create Table Libros
(
    ID INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Idioma varchar(50),
    Editorial varchar(50),
    CodLibro INT NOT NULL,
    CodAutor INT NOT NULL,
    CodIdioma INT NOT NULL,
    CodGenero INT NOT NULL,
)

CREATE TABLE Libros_x_Generos
(
    IDGenero INT NOT NULL FOREIGN KEY REFERENCES Generos(ID),
    IDLibros INT NOT NULL FOREIGN KEY REFERENCES Libros(ID),
    PRIMARY KEY(IDGenero, IDLibros)
)

CREATE TABLE Libros_x_Autores
(
    IDAutores INT NOT NULL FOREIGN KEY REFERENCES Autores(ID),
    IDLibros INT NOT NULL FOREIGN KEY REFERENCES Libros(ID),
    PRIMARY KEY(IDAutores, IDLibros)
)

*/


/*
El siguiente codigo, lo uso de ejemplo:

Create Database Universidad
GO
Use Universidad
go
Create Table Carreras(
    ID int not null primary key identity (10, 10),
    Nombre varchar(50) not null,
    Tipo tinyint not null check (Tipo >= 1 and Tipo <= 3)
)
go

Create Table Alumnos(
    Legajo bigint not null primary key,
    Apellido varchar(50) not null,
    Nombres varchar(50) not null,
    Fnac date not null, -- Comprueben qu� ocurre si ponen una fecha que no existe. Por ejemplo: 29/02/2021
    Genero char null,
    IDCarrera int not null foreign key references Carreras(ID)
)

-- Verifiquen qu� diferencia hay entre char y varchar

*/
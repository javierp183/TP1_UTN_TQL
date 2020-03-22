--- create database Biblioteca




--- Use Biblioteca


CREATE TABLE Idioma
(
    ID INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Descripcion VARCHAR(100)
)


create Table libros
(
    ID INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Idioma varchar(20),
    Editorial varchar(50),
    Genero varchar(20),
    Autor varchar(100),
    CodLibro INT NOT NULL,
    CodAutor INT NOT NULL,
    CodIdioma INT NOT NULL FOREIGN KEY REFERENCES Idioma(ID),
    CodGenero INT NOT NULL,
)


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
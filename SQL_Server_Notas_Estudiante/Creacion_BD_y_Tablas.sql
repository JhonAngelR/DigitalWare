--Creación Base de datos
create database Notas_Estudiantes

--Creación Tablas
create table Estudiante(
Est_Id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
Est_Nom VARCHAR(100) NOT NULL,
Est_Grad VARCHAR(100) NOT NULL,
Est_IdProf int not null,
Est_IdMat int not null,
constraint fk_Idprofesor foreign key(Est_IdProf) references Profesor (Prof_Id),
constraint fk_IdMat foreign key(Est_IdMat) references Materia (Mat_Id)
);

create table Profesor(
Prof_Id int PRIMARY KEY,
Prof_Nom VARCHAR(100),
);

create table Materia(
Mat_Id int primary key,
Mat_Nom varchar(100),
Mat_Peri varchar(100),
Mat_Nota varchar(100)
);
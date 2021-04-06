--Creación procedimiento almacenado (Ingresar Dato)
create procedure IngresarNE
@Nom_Est varchar(100),
@Grad_Est varchar(100),
@IdProf int,
@IdMat int,
@NomProf varchar(100),
@NomMat varchar(100),
@PeriMat varchar(100),
@NotaMat varchar(100)

AS

insert into Profesor values(@IdProf,@NomProf);
insert into Materia values(@IdMat,@NomMat,@PeriMat,@NotaMat);
insert into Estudiante(Est_Nom,Est_Grad,Est_IdProf,Est_IdMat) values(@Nom_Est,@Grad_Est,@IdProf,@IdMat);

GO

--drop procedure IngresarNE

exec IngresarNE N'Jazmin Arevalo','Decimo','3','3','Maria Casas','Quimica','III','4.0'
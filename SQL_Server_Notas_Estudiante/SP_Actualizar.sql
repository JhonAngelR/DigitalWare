--Creación procedimiento almacenado (Actualizar Dato)
create procedure ActualizarNE
@Nom_Est varchar(100),
@Grad_Est varchar(100),
@IdProf int,
@IdMat int,
@NomProf varchar(100),
@NomMat varchar(100),
@PeriMat varchar(100),
@NotaMat varchar(100)

AS

update Profesor set Prof_Id=@IdProf, Prof_Nom=@NomProf where Prof_Id=@IdProf;
update Materia set Mat_Id=@IdMat, Mat_Nom=@NomMat, Mat_Peri= @PeriMat, Mat_Nota= @NotaMat where Mat_Id=@IdMat;
update Estudiante set Est_Nom = @Nom_Est,Est_Grad=@Grad_Est,Est_IdProf=@IdProf,Est_IdMat=@IdMat where Est_Nom=@Nom_Est;

GO

--drop procedure ActualizarNE
--execute ActualizarNE N'Jhon Angel','Once','3','1','Maria Casas','Quimica','III','4.0'
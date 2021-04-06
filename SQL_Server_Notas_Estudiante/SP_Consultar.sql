--Creación procedimiento almacenado (Consultar Dato)
create procedure ConsultarNE
@Nom_Est varchar(100)

AS

select Estudiante.Est_Nom, Estudiante.Est_Grad,Materia.Mat_Nom,Materia.Mat_Peri,Materia.Mat_Nota from Estudiante
inner join Materia on Estudiante.Est_IdMat = Materia.Mat_Id and Est_Nom = @Nom_Est;

GO

--execute ConsultarNE N'Jhon Angel'
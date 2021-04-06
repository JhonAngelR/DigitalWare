USE [Notas_Estudiantes]
GO

/****** Object:  StoredProcedure [dbo].[EliminarNE]    Script Date: 6/04/2021 11:55:47 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--Creación procedimiento almacenado (Eliminar Dato)
create procedure [dbo].[EliminarNE]
@Nom_Est varchar(100),
@Nom_Mat varchar(100),
@IdMat int
AS

--delete from Estudiante where Est_Nom = @Nom_Est

delete from Estudiante from Estudiante ES inner join Materia Mat on ES.Est_IdMat = Mat.Mat_Id and ES.Est_Nom = @Nom_Est and Mat.Mat_Nom = @Nom_Mat
delete from Materia where Mat_Id = @IdMat

GO

--drop procedure EliminarNE

--execute EliminarNE N'Jazmin Arevalo','Quimica','3'

--delete from Estudiante where Est_Id= '4'
--delete from Profesor where Prof_Id = '3'
--delete from Materia where Mat_Id ='3'
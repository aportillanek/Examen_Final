USE [Credit]
GO
/****** Object:  StoredProcedure [dbo].[ValidateUser]    Script Date: 15/08/2017 08:57:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ValidarUsuario]
	@email varchar(100),
	@contrasena varchar(20)
AS
BEGIN
	SELECT 
      [Email]
      ,[Nombre]
      ,[Apellido]      
      ,[Contrasena]
	  ,[Roles]
	FROM [dbo].[Usuario]
	WHERE [Email]=@email AND [Contrasena]=@contrasena
END
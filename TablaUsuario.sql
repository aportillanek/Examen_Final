USE [Credit]
GO

/****** Object:  Table [dbo].[User]    Script Date: 15/08/2017 09:32:08 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Usuario](
	
	[Email] [nvarchar](100) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Roles] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



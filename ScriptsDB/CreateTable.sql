USE [HamburguerDB]
GO
/****** Object:  Table [dbo].[TD_IngredientexTipoHamburguesa]    Script Date: 05/08/2020 9:22:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TD_IngredientexTipoHamburguesa](
	[idIngredientexTipoHamburguesa] [int] IDENTITY(1,1) NOT NULL,
	[idIngrediente] [int] NOT NULL,
	[idTipoHamburguesa] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaEliminacion] [datetime] NULL,
	[CreadoPor] [varchar](max) NOT NULL,
	[ModificadoPor] [varchar](max) NULL,
	[EliminadoPor] [varchar](max) NULL,
	[flagActivo] [bit] NOT NULL,
 CONSTRAINT [PK_TD_IngredientexTipoHamburguesa] PRIMARY KEY CLUSTERED 
(
	[idIngredientexTipoHamburguesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TD_IngredientexTipoIngrediente]    Script Date: 05/08/2020 9:22:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TD_IngredientexTipoIngrediente](
	[idIngredientexTipoIngrediente] [int] NOT NULL,
	[idIngrediente] [int] NOT NULL,
	[idTipoIngrediente] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaEliminacion] [datetime] NULL,
	[CreadoPor] [varchar](max) NOT NULL,
	[ModificadoPor] [varchar](max) NULL,
	[EliminadoPor] [varchar](max) NULL,
	[flagActivo] [bit] NOT NULL,
 CONSTRAINT [PK_TD_IngredientexTipoIngrediente] PRIMARY KEY CLUSTERED 
(
	[idIngredientexTipoIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TD_MedidaxIngrediente]    Script Date: 05/08/2020 9:22:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TD_MedidaxIngrediente](
	[idMedidaxIngrediente] [int] IDENTITY(1,1) NOT NULL,
	[idIngrediente] [int] NOT NULL,
	[idMedida] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaEliminacion] [datetime] NULL,
	[CreadoPor] [varchar](max) NOT NULL,
	[ModificadoPor] [varchar](max) NULL,
	[EliminadoPor] [varchar](max) NULL,
	[flagActivo] [bit] NOT NULL,
 CONSTRAINT [PK_TD_MedidaxIngrediente] PRIMARY KEY CLUSTERED 
(
	[idMedidaxIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TM_Ingredientes]    Script Date: 05/08/2020 9:22:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_Ingredientes](
	[idIngrediente] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Cantidad] [int] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaEliminacion] [datetime] NULL,
	[CreadoPor] [varchar](max) NOT NULL,
	[ModificadoPor] [varchar](max) NULL,
	[EliminadoPor] [varchar](max) NULL,
	[flagActivo] [bit] NOT NULL,
 CONSTRAINT [PK_TM_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[idIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TM_Medida]    Script Date: 05/08/2020 9:22:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_Medida](
	[idMedida] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaEliminacion] [datetime] NULL,
	[CreadoPor] [varchar](max) NOT NULL,
	[ModificadoPor] [varchar](max) NULL,
	[EliminadoPor] [varchar](max) NULL,
	[flagActivo] [bit] NOT NULL,
 CONSTRAINT [PK_TM_Medida] PRIMARY KEY CLUSTERED 
(
	[idMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TM_TipoHamburguesa]    Script Date: 05/08/2020 9:22:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_TipoHamburguesa](
	[idTipoHamburguesa] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaEliminacion] [datetime] NULL,
	[CreadoPor] [varchar](max) NOT NULL,
	[ModificadoPor] [varchar](max) NULL,
	[EliminadoPor] [varchar](max) NULL,
	[flagActivo] [bit] NOT NULL,
 CONSTRAINT [PK_TM_TipoHamburguesa] PRIMARY KEY CLUSTERED 
(
	[idTipoHamburguesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TM_TipoIngrediente]    Script Date: 05/08/2020 9:22:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_TipoIngrediente](
	[idTipoIngrediente] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaEliminacion] [datetime] NULL,
	[CreadoPor] [varchar](max) NOT NULL,
	[ModificadoPor] [varchar](max) NULL,
	[EliminadoPor] [varchar](max) NULL,
	[flagActivo] [bit] NOT NULL,
 CONSTRAINT [PK_TM_TipoIngrediente] PRIMARY KEY CLUSTERED 
(
	[idTipoIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[TD_IngredientexTipoHamburguesa]  WITH CHECK ADD  CONSTRAINT [FK_TD_IngredientexTipoHamburguesa_TM_Ingredientes] FOREIGN KEY([idIngrediente])
REFERENCES [dbo].[TM_Ingredientes] ([idIngrediente])
GO
ALTER TABLE [dbo].[TD_IngredientexTipoHamburguesa] CHECK CONSTRAINT [FK_TD_IngredientexTipoHamburguesa_TM_Ingredientes]
GO
ALTER TABLE [dbo].[TD_IngredientexTipoHamburguesa]  WITH CHECK ADD  CONSTRAINT [FK_TD_IngredientexTipoHamburguesa_TM_TipoHamburguesa] FOREIGN KEY([idTipoHamburguesa])
REFERENCES [dbo].[TM_TipoHamburguesa] ([idTipoHamburguesa])
GO
ALTER TABLE [dbo].[TD_IngredientexTipoHamburguesa] CHECK CONSTRAINT [FK_TD_IngredientexTipoHamburguesa_TM_TipoHamburguesa]
GO
ALTER TABLE [dbo].[TD_IngredientexTipoIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_TD_IngredientexTipoIngrediente_TM_Ingredientes] FOREIGN KEY([idIngrediente])
REFERENCES [dbo].[TM_Ingredientes] ([idIngrediente])
GO
ALTER TABLE [dbo].[TD_IngredientexTipoIngrediente] CHECK CONSTRAINT [FK_TD_IngredientexTipoIngrediente_TM_Ingredientes]
GO
ALTER TABLE [dbo].[TD_IngredientexTipoIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_TD_IngredientexTipoIngrediente_TM_TipoIngrediente] FOREIGN KEY([idTipoIngrediente])
REFERENCES [dbo].[TM_TipoIngrediente] ([idTipoIngrediente])
GO
ALTER TABLE [dbo].[TD_IngredientexTipoIngrediente] CHECK CONSTRAINT [FK_TD_IngredientexTipoIngrediente_TM_TipoIngrediente]
GO
ALTER TABLE [dbo].[TD_MedidaxIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_TD_MedidaxIngrediente_TM_Ingredientes] FOREIGN KEY([idIngrediente])
REFERENCES [dbo].[TM_Ingredientes] ([idIngrediente])
GO
ALTER TABLE [dbo].[TD_MedidaxIngrediente] CHECK CONSTRAINT [FK_TD_MedidaxIngrediente_TM_Ingredientes]
GO
ALTER TABLE [dbo].[TD_MedidaxIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_TD_MedidaxIngrediente_TM_Medida] FOREIGN KEY([idMedida])
REFERENCES [dbo].[TM_Medida] ([idMedida])
GO
ALTER TABLE [dbo].[TD_MedidaxIngrediente] CHECK CONSTRAINT [FK_TD_MedidaxIngrediente_TM_Medida]
GO

/****** Object:  Table [dbo].[TD_IngredientexTipoHamburguesa]    Script Date: 22/07/2020 9:24:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TD_IngredientexTipoHamburguesa](
	[idIngredientexTipoHamburguesa] [int] IDENTITY(1,1) NOT NULL,
	[idIngrediente] [int] NOT NULL,
	[idTipoHamburguesa] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_TD_IngredientexTipoHamburguesa] PRIMARY KEY CLUSTERED 
(
	[idIngredientexTipoHamburguesa] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TD_IngredientexTipoIngrediente]    Script Date: 22/07/2020 9:24:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TD_IngredientexTipoIngrediente](
	[idIngredientexTipoIngrediente] [int] NOT NULL,
	[idIngrediente] [int] NOT NULL,
	[idTipoIngrediente] [int] NOT NULL,
 CONSTRAINT [PK_TD_IngredientexTipoIngrediente] PRIMARY KEY CLUSTERED 
(
	[idIngredientexTipoIngrediente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TD_MedidaxIngrediente]    Script Date: 22/07/2020 9:24:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TD_MedidaxIngrediente](
	[idMedidaxIngrediente] [int] IDENTITY(1,1) NOT NULL,
	[idIngrediente] [int] NOT NULL,
	[idMedida] [int] NOT NULL,
 CONSTRAINT [PK_TD_MedidaxIngrediente] PRIMARY KEY CLUSTERED 
(
	[idMedidaxIngrediente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TM_Ingredientes]    Script Date: 22/07/2020 9:24:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_Ingredientes](
	[idIngrediente] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_TM_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[idIngrediente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TM_Medida]    Script Date: 22/07/2020 9:24:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_Medida](
	[idMedida] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_TM_Medida] PRIMARY KEY CLUSTERED 
(
	[idMedida] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TM_TipoHamburguesa]    Script Date: 22/07/2020 9:24:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_TipoHamburguesa](
	[idTipoHamburguesa] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
 CONSTRAINT [PK_TM_TipoHamburguesa] PRIMARY KEY CLUSTERED 
(
	[idTipoHamburguesa] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TM_TipoIngrediente]    Script Date: 22/07/2020 9:24:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TM_TipoIngrediente](
	[idTipoIngrediente] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_TM_TipoIngrediente] PRIMARY KEY CLUSTERED 
(
	[idTipoIngrediente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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

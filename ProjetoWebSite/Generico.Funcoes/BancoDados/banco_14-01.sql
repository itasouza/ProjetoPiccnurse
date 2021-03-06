USE [PICCNURSE]
GO
/****** Object:  Table [dbo].[TB_NOTICIA]    Script Date: 14/01/2019 00:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_NOTICIA](
	[IdNoticia] [int] IDENTITY(1,1) NOT NULL,
	[TituloNoticia] [varchar](200) NULL,
	[ImagemPrincipal] [varchar](200) NULL,
	[DataEscrita] [varchar](50) NULL,
	[Texto] [text] NULL,
	[AutorTexto] [varchar](200) NULL,
	[Fonte] [varchar](200) NULL,
 CONSTRAINT [PK_TB_NOTICIA] PRIMARY KEY CLUSTERED 
(
	[IdNoticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_USUARIO]    Script Date: 14/01/2019 00:17:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_USUARIO](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NomeUsuario] [varchar](200) NULL,
	[EmailUsuario] [varchar](100) NULL,
	[LoginUsuario] [varchar](50) NULL,
	[SenhaUsuario] [varchar](50) NULL,
	[UsuarioAtivo] [varchar](1) NULL,
	[UsuarioAdmin] [varchar](1) NULL,
 CONSTRAINT [PK_TB_USUARIO] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TB_USUARIO] ON 

INSERT [dbo].[TB_USUARIO] ([IdUsuario], [NomeUsuario], [EmailUsuario], [LoginUsuario], [SenhaUsuario], [UsuarioAtivo], [UsuarioAdmin]) VALUES (1, N'Itamar Souza', N'itasouza@yahoo.com.br', N'itasouza@yahoo.com.br', N'123456', N'S', N'S')
INSERT [dbo].[TB_USUARIO] ([IdUsuario], [NomeUsuario], [EmailUsuario], [LoginUsuario], [SenhaUsuario], [UsuarioAtivo], [UsuarioAdmin]) VALUES (2, N'Jose Maria', N'jose@yahoo.com.br', N'jose@yahoo.com.br', N'123', N'N', N'N')
SET IDENTITY_INSERT [dbo].[TB_USUARIO] OFF

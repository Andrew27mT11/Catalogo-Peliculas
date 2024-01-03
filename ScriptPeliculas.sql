/****** Object:  Database [PeliculasProgra11]    Script Date: 28/10/2023 20:25:30 ******/
CREATE DATABASE [PeliculasProgra11]
USE [PeliculasProgra11] 
/****** Object:  Table [dbo].[ActoresStaff]    Script Date: 28/10/2023 20:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActoresStaff](
	[ActorStaffID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[PaginaWeb] [varchar](255) NULL,
	[Facebook] [varchar](255) NULL,
	[Instagram] [varchar](255) NULL,
	[Twitter] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActorStaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalificacionesExpertos]    Script Date: 28/10/2023 20:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalificacionesExpertos](
	[PeliculaID] [int] NOT NULL,
	[ExpertoID] [int] NOT NULL,
	[Calificacion] [decimal](3, 1) NULL,
PRIMARY KEY CLUSTERED 
(
	[PeliculaID] ASC,
	[ExpertoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 28/10/2023 20:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[ComentarioID] [int] IDENTITY(1,1) NOT NULL,
	[PeliculaID] [int] NULL,
	[UsuarioID] [int] NULL,
	[Comentario] [text] NULL,
	[FechaComentario] [datetime] NULL,
	[RespuestaAComentarioID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ComentarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 28/10/2023 20:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[EstadoID] [int] NOT NULL,
	[NombreEstado] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[EstadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpertosEnCalificaciones]    Script Date: 28/10/2023 20:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpertosEnCalificaciones](
	[ExpertoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[codigoexperto] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ExpertoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 28/10/2023 20:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[PeliculaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Resena] [text] NULL,
	[CalificacionGenerQal] [int] NULL,
	[FechaLanzamiento] [date] NULL,
	[PosterID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PeliculaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posters]    Script Date: 28/10/2023 20:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posters](
	[PosterID] [int] NOT NULL,
	[NombreArchivo] [varchar](50) NOT NULL,
	[RutaArchivo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PosterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 28/10/2023 20:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[RolID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesEnPelicula]    Script Date: 28/10/2023 20:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesEnPelicula](
	[RolEnPeliculaID] [int] IDENTITY(1,1) NOT NULL,
	[RolID] [int] NULL,
	[ActorStaffID] [int] NULL,
	[IDPelic] [int] NULL,
	[OrdenAparicion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RolEnPeliculaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 28/10/2023 20:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[IDEstado] [int] NULL,
	[Token] [varchar](50) NULL,
	[TokenExpiracion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ActoresStaff] ON 

INSERT [dbo].[ActoresStaff] ([ActorStaffID], [Nombre], [PaginaWeb], [Facebook], [Instagram], [Twitter]) VALUES (1, N'string', N'string', N'string', N'string', N'string')
INSERT [dbo].[ActoresStaff] ([ActorStaffID], [Nombre], [PaginaWeb], [Facebook], [Instagram], [Twitter]) VALUES (7, N'string', N'string', N'string', N'string', N'string')
SET IDENTITY_INSERT [dbo].[ActoresStaff] OFF
GO
INSERT [dbo].[CalificacionesExpertos] ([PeliculaID], [ExpertoID], [Calificacion]) VALUES (4, 1, CAST(4.5 AS Decimal(3, 1)))
INSERT [dbo].[CalificacionesExpertos] ([PeliculaID], [ExpertoID], [Calificacion]) VALUES (4, 2, CAST(5.0 AS Decimal(3, 1)))
GO
SET IDENTITY_INSERT [dbo].[Comentarios] ON 

INSERT [dbo].[Comentarios] ([ComentarioID], [PeliculaID], [UsuarioID], [Comentario], [FechaComentario], [RespuestaAComentarioID]) VALUES (1, 4, 1, N'Prueba', CAST(N'2023-10-14T02:21:40.590' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Comentarios] OFF
GO
INSERT [dbo].[Estado] ([EstadoID], [NombreEstado]) VALUES (1, N'Activo')
INSERT [dbo].[Estado] ([EstadoID], [NombreEstado]) VALUES (2, N'Inactivo')
GO
SET IDENTITY_INSERT [dbo].[ExpertosEnCalificaciones] ON 

INSERT [dbo].[ExpertosEnCalificaciones] ([ExpertoID], [Nombre], [codigoexperto]) VALUES (1, N'Andrew', N'xd')
INSERT [dbo].[ExpertosEnCalificaciones] ([ExpertoID], [Nombre], [codigoexperto]) VALUES (2, N'Johnny', N'xdnt')
SET IDENTITY_INSERT [dbo].[ExpertosEnCalificaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Peliculas] ON 

INSERT [dbo].[Peliculas] ([PeliculaID], [Nombre], [Resena], [CalificacionGenerQal], [FechaLanzamiento], [PosterID]) VALUES (4, N'string', N'string', 0, CAST(N'2023-10-14' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Peliculas] OFF
GO
INSERT [dbo].[Posters] ([PosterID], [NombreArchivo], [RutaArchivo]) VALUES (0, N'poster1', N'c/desktop')
INSERT [dbo].[Posters] ([PosterID], [NombreArchivo], [RutaArchivo]) VALUES (1, N'string', N'string')
INSERT [dbo].[Posters] ([PosterID], [NombreArchivo], [RutaArchivo]) VALUES (2, N'MiPoster.jpg', N'/ruta/a/MiPoster.jpg')
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([RolID], [Nombre]) VALUES (1, N'Actor Principal')
INSERT [dbo].[Rol] ([RolID], [Nombre]) VALUES (2, N'Actor Secundario')
INSERT [dbo].[Rol] ([RolID], [Nombre]) VALUES (3, N'Director')
INSERT [dbo].[Rol] ([RolID], [Nombre]) VALUES (4, N'Diseño')
INSERT [dbo].[Rol] ([RolID], [Nombre]) VALUES (5, N'Vestuario')
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([UsuarioID], [NombreUsuario], [Nombre], [Apellidos], [Email], [Contrasena], [IDEstado], [Token], [TokenExpiracion]) VALUES (1, N'Andrew2', N'Andres2', N'martinezT', N'prueba@test.com', N'03ac674216f3e15c761ee1a5e255f067', 2, N'1FA1015294D4BE0C3000096F6CD32BCB', CAST(N'2023-10-28T18:55:00' AS SmallDateTime))
INSERT [dbo].[Usuarios] ([UsuarioID], [NombreUsuario], [Nombre], [Apellidos], [Email], [Contrasena], [IDEstado], [Token], [TokenExpiracion]) VALUES (2, N'Andrew5', N'Andres5', N'Martinez Serrano', N'pruebaandres5@gmail.com', N'03ac674216f3e15c761ee1a5e255f067', 1, N'FEAA19579113F110BC9D5937F4A723BF', CAST(N'2023-10-28T20:16:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__6B0F5AE0AFA1C101]    Script Date: 28/10/2023 20:25:32 ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[NombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CalificacionesExpertos]  WITH CHECK ADD FOREIGN KEY([ExpertoID])
REFERENCES [dbo].[ExpertosEnCalificaciones] ([ExpertoID])
GO
ALTER TABLE [dbo].[CalificacionesExpertos]  WITH CHECK ADD FOREIGN KEY([PeliculaID])
REFERENCES [dbo].[Peliculas] ([PeliculaID])
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD FOREIGN KEY([PeliculaID])
REFERENCES [dbo].[Peliculas] ([PeliculaID])
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD FOREIGN KEY([RespuestaAComentarioID])
REFERENCES [dbo].[Comentarios] ([ComentarioID])
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD FOREIGN KEY([PosterID])
REFERENCES [dbo].[Posters] ([PosterID])
GO
ALTER TABLE [dbo].[RolesEnPelicula]  WITH CHECK ADD FOREIGN KEY([ActorStaffID])
REFERENCES [dbo].[ActoresStaff] ([ActorStaffID])
GO
ALTER TABLE [dbo].[RolesEnPelicula]  WITH CHECK ADD FOREIGN KEY([IDPelic])
REFERENCES [dbo].[Peliculas] ([PeliculaID])
GO
ALTER TABLE [dbo].[RolesEnPelicula]  WITH CHECK ADD FOREIGN KEY([RolID])
REFERENCES [dbo].[Rol] ([RolID])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([IDEstado])
REFERENCES [dbo].[Estado] ([EstadoID])
GO
USE [master]
GO
ALTER DATABASE [PeliculasProgra11] SET  READ_WRITE 
GO

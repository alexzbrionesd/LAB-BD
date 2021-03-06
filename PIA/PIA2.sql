USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[Viaje] DROP CONSTRAINT [FK_Viaje_Ruta]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Pagos]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_DetalleVenta]
GO
ALTER TABLE [dbo].[Transporte] DROP CONSTRAINT [FK_Transporte_Compañia]
GO
ALTER TABLE [dbo].[TipoBoleto] DROP CONSTRAINT [FK_TipoBoleto_Categoria]
GO
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Transporte]
GO
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_DetalleRuta]
GO
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Ciudad1]
GO
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Ciudad]
GO
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Viaje]
GO
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Ventas]
GO
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Hotel]
GO
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Cliente]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK_Hotel_Ciudad]
GO
ALTER TABLE [dbo].[DetalleVenta] DROP CONSTRAINT [FK_DetalleVenta_Boleto]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Boleto_Viaje]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Boleto_TipoBoleto]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Viaje]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Transporte]
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[TipoBoleto]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Ruta]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Paquete]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Pagos]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[DetalleVenta]
GO
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[DetalleRuta]
GO
/****** Object:  Table [dbo].[Compañia]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Compañia]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Ciudad]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 23/10/2017 18:56:28 ******/
DROP TABLE [dbo].[Boleto]
GO
USE [master]
GO
/****** Object:  Database [AgenciaDeViajes]    Script Date: 23/10/2017 18:56:28 ******/
DROP DATABASE [AgenciaDeViajes]
GO
/****** Object:  Database [AgenciaDeViajes]    Script Date: 23/10/2017 18:56:28 ******/
CREATE DATABASE [AgenciaDeViajes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgenciaDeViajes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\AgenciaDeViajes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AgenciaDeViajes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\AgenciaDeViajes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AgenciaDeViajes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgenciaDeViajes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgenciaDeViajes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgenciaDeViajes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgenciaDeViajes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AgenciaDeViajes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgenciaDeViajes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AgenciaDeViajes] SET  MULTI_USER 
GO
ALTER DATABASE [AgenciaDeViajes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgenciaDeViajes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgenciaDeViajes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AgenciaDeViajes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AgenciaDeViajes] SET QUERY_STORE = OFF
GO
USE [AgenciaDeViajes]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [AgenciaDeViajes]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 23/10/2017 18:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleto](
	[IdBoleto] [uniqueidentifier] NOT NULL,
	[IdViaje] [uniqueidentifier] NULL,
	[IdTipoBoleto] [uniqueidentifier] NULL,
	[PrecioTotal] [money] NULL,
 CONSTRAINT [PK_Boleto] PRIMARY KEY CLUSTERED 
(
	[IdBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 23/10/2017 18:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Categoria] [varchar](50) NULL,
	[Costo] [money] NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 23/10/2017 18:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[IdCiudad] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudad1] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Calle] [varchar](50) NULL,
	[Colonia] [varchar](50) NULL,
	[Municipio] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compañia]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compañia](
	[IdCompañia] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Compañia] PRIMARY KEY CLUSTERED 
(
	[IdCompañia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleRuta](
	[IdDetalleRuta] [uniqueidentifier] NOT NULL,
	[FechaSalida] [date] NULL,
	[HoraSalida] [time](7) NULL,
 CONSTRAINT [PK_DetalleRuta] PRIMARY KEY CLUSTERED 
(
	[IdDetalleRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[IdDetalleVenta] [uniqueidentifier] NOT NULL,
	[IdBoleto] [uniqueidentifier] NULL,
	[Cantidad] [int] NULL,
	[MontoFinal] [money] NULL,
	[Cambio] [money] NULL,
 CONSTRAINT [PK_DetalleVenta] PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[IdHotel] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdCategoria] [uniqueidentifier] NULL,
	[IdCiudad] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[IdPagos] [uniqueidentifier] NOT NULL,
	[TipoPago] [varchar](50) NULL,
	[Fecha] [date] NULL,
	[MontoDePago] [money] NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[IdPagos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquete](
	[IdPaquete] [uniqueidentifier] NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
	[IdViaje] [uniqueidentifier] NULL,
	[IdHotel] [uniqueidentifier] NULL,
	[IdVentas] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[IdPaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[IdRuta] [uniqueidentifier] NOT NULL,
	[IdTranporte] [uniqueidentifier] NULL,
	[CiudadOrigen] [uniqueidentifier] NULL,
	[CiudadDestino] [uniqueidentifier] NULL,
	[PrecioBase] [money] NULL,
	[IdDetalleRuta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED 
(
	[IdRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoBoleto](
	[IdTipoBoleto] [uniqueidentifier] NOT NULL,
	[Tipo] [varchar](50) NULL,
	[IdCategoria] [uniqueidentifier] NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_TipoBoleto] PRIMARY KEY CLUSTERED 
(
	[IdTipoBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transporte](
	[IdTransporte] [uniqueidentifier] NOT NULL,
	[Capacidad] [int] NULL,
	[IdCompañia] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Transporte] PRIMARY KEY CLUSTERED 
(
	[IdTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IdVentas] [uniqueidentifier] NOT NULL,
	[Monto] [money] NULL,
	[Fecha] [date] NULL,
	[Hora] [time](7) NULL,
	[IdDetalleVenta] [uniqueidentifier] NULL,
	[IdPagos] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[IdVentas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 23/10/2017 18:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viaje](
	[IdViaje] [uniqueidentifier] NOT NULL,
	[IdRuta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Viaje] PRIMARY KEY CLUSTERED 
(
	[IdViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'4591d7dc-d299-47c3-af6f-082c7b779215', N'Puebla')
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'6fa55e41-a7a6-4b39-b71a-2c2b3eb27846', N'Rivera Maya')
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'1c2154aa-9827-435c-9b0d-4559c94094ca', N'Cancun')
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'4543bb91-90d8-459f-83cf-4cbbd76c3149', N'Guadalajara')
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'683c3e87-3b93-4a3e-a476-6c47fd9869bb', N'Los cabos')
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'58e429be-51cc-40cd-bed4-858b708c52f1', N'Tijuana')
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'30163029-1120-4709-bc6e-efc484fd4995', N'Puerto Vallarta')
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'99286c76-216e-404c-8b69-fc480e9221ac', N'Mazatlan')
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'84549593-dc6a-4e8a-b679-fe77fecdc849', N'Ciudad de Mexico')
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'8706e8a0-ea1f-4d9b-ada6-fe92b514a5f0', N'Oaxaca')
GO
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'517db966-b4df-4b89-8932-44cd677e7dd3', N'AeroMexico')
GO
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'5ffbf266-d8fe-46f6-a6ab-78b474c072f0', N'Volaris')
GO
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'3e4c6fc6-8587-4d88-ac39-9e9ca437d1b5', N'VivaAerobus')
GO
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'e3a76440-1ae2-41d0-a485-c45cf50c7ae2', N'Interjet')
GO
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'733b88e2-05d0-4952-a97e-e4936ba16f2d', N'Magnicharters')
GO
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'eb95b81f-eb29-40a2-9894-6e2e89375ce9', 242, N'517db966-b4df-4b89-8932-44cd677e7dd3')
GO
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'963e2d2a-7148-4d0c-a593-b6a722e27ec8', 192, N'e3a76440-1ae2-41d0-a485-c45cf50c7ae2')
GO
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'042b3f91-ccc9-4b27-bd83-db8224e1ae4f', 140, N'733b88e2-05d0-4952-a97e-e4936ba16f2d')
GO
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'3a6a1d6d-b313-4e9d-99ad-e320eec31bff', 180, N'3e4c6fc6-8587-4d88-ac39-9e9ca437d1b5')
GO
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'a5c7b70e-b749-4251-8bb2-f281d0e4cd36', 220, N'5ffbf266-d8fe-46f6-a6ab-78b474c072f0')
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_TipoBoleto] FOREIGN KEY([IdTipoBoleto])
REFERENCES [dbo].[TipoBoleto] ([IdTipoBoleto])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_TipoBoleto]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Viaje] FOREIGN KEY([IdViaje])
REFERENCES [dbo].[Viaje] ([IdViaje])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Viaje]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Boleto] FOREIGN KEY([IdBoleto])
REFERENCES [dbo].[Boleto] ([IdBoleto])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Boleto]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Ciudad] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Ciudad]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Cliente]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Hotel] FOREIGN KEY([IdVentas])
REFERENCES [dbo].[Hotel] ([IdHotel])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Hotel]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Ventas] FOREIGN KEY([IdVentas])
REFERENCES [dbo].[Ventas] ([IdVentas])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Ventas]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Viaje] FOREIGN KEY([IdViaje])
REFERENCES [dbo].[Viaje] ([IdViaje])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Viaje]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad] FOREIGN KEY([CiudadOrigen])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad1] FOREIGN KEY([CiudadDestino])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad1]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_DetalleRuta] FOREIGN KEY([IdDetalleRuta])
REFERENCES [dbo].[DetalleRuta] ([IdDetalleRuta])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_DetalleRuta]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Transporte] FOREIGN KEY([IdTranporte])
REFERENCES [dbo].[Transporte] ([IdTransporte])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Transporte]
GO
ALTER TABLE [dbo].[TipoBoleto]  WITH CHECK ADD  CONSTRAINT [FK_TipoBoleto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[TipoBoleto] CHECK CONSTRAINT [FK_TipoBoleto_Categoria]
GO
ALTER TABLE [dbo].[Transporte]  WITH CHECK ADD  CONSTRAINT [FK_Transporte_Compañia] FOREIGN KEY([IdCompañia])
REFERENCES [dbo].[Compañia] ([IdCompañia])
GO
ALTER TABLE [dbo].[Transporte] CHECK CONSTRAINT [FK_Transporte_Compañia]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DetalleVenta] FOREIGN KEY([IdDetalleVenta])
REFERENCES [dbo].[DetalleVenta] ([IdDetalleVenta])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_DetalleVenta]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Pagos] FOREIGN KEY([IdPagos])
REFERENCES [dbo].[Pagos] ([IdPagos])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Pagos]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Ruta] FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Ruta] ([IdRuta])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Ruta]
GO
USE [master]
GO
ALTER DATABASE [AgenciaDeViajes] SET  READ_WRITE 
GO

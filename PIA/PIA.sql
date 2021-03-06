USE [AgenciaDeViajes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Viaje]') AND type in (N'U'))
ALTER TABLE [dbo].[Viaje] DROP CONSTRAINT IF EXISTS [FK_Viaje_Ruta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ventas]') AND type in (N'U'))
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT IF EXISTS [FK_Ventas_Pagos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ventas]') AND type in (N'U'))
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT IF EXISTS [FK_Ventas_DetalleVenta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transporte]') AND type in (N'U'))
ALTER TABLE [dbo].[Transporte] DROP CONSTRAINT IF EXISTS [FK_Transporte_Compañia]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoBoleto]') AND type in (N'U'))
ALTER TABLE [dbo].[TipoBoleto] DROP CONSTRAINT IF EXISTS [FK_TipoBoleto_Categoria]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT IF EXISTS [FK_Ruta_Transporte]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT IF EXISTS [FK_Ruta_DetalleRuta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT IF EXISTS [FK_Ruta_Ciudad1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT IF EXISTS [FK_Ruta_Ciudad]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT IF EXISTS [FK_Paquete_Viaje]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT IF EXISTS [FK_Paquete_Ventas]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT IF EXISTS [FK_Paquete_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT IF EXISTS [FK_Paquete_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK_Hotel_Ciudad]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleVenta]') AND type in (N'U'))
ALTER TABLE [dbo].[DetalleVenta] DROP CONSTRAINT IF EXISTS [FK_DetalleVenta_Boleto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleRuta]') AND type in (N'U'))
ALTER TABLE [dbo].[DetalleRuta] DROP CONSTRAINT IF EXISTS [FK_DetalleRuta_Ruta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudad]') AND type in (N'U'))
ALTER TABLE [dbo].[Ciudad] DROP CONSTRAINT IF EXISTS [FK_Ciudad_Pais]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudad]') AND type in (N'U'))
ALTER TABLE [dbo].[Ciudad] DROP CONSTRAINT IF EXISTS [FK_Ciudad_Estado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Boleto]') AND type in (N'U'))
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT IF EXISTS [FK_Boleto_Viaje]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Boleto]') AND type in (N'U'))
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT IF EXISTS [FK_Boleto_TipoBoleto]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Viaje]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Transporte]
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[TipoBoleto]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Ruta]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Paquete]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Pagos]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Estado]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[DetalleVenta]
GO
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[DetalleRuta]
GO
/****** Object:  Table [dbo].[Compañia]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Compañia]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Ciudad]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 16/10/2017 18:13:59 ******/
DROP TABLE IF EXISTS [dbo].[Boleto]
GO
USE [master]
GO
/****** Object:  Database [AgenciaDeViajes]    Script Date: 16/10/2017 18:13:59 ******/
DROP DATABASE IF EXISTS [AgenciaDeViajes]
GO
/****** Object:  Database [AgenciaDeViajes]    Script Date: 16/10/2017 18:13:59 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'AgenciaDeViajes')
BEGIN
CREATE DATABASE [AgenciaDeViajes]
END
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
/****** Object:  Table [dbo].[Boleto]    Script Date: 16/10/2017 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Boleto]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 16/10/2017 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Categoria] [varchar](50) NULL,
	[Costo] [money] NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 16/10/2017 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ciudad](
	[IdCiudad] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdEstado] [uniqueidentifier] NULL,
	[IdPais] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Ciudad1] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/10/2017 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Compañia]    Script Date: 16/10/2017 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Compañia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Compañia](
	[IdCompañia] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Compañia] PRIMARY KEY CLUSTERED 
(
	[IdCompañia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 16/10/2017 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleRuta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DetalleRuta](
	[IdDetalleRuta] [uniqueidentifier] NOT NULL,
	[IdRuta] [uniqueidentifier] NULL,
	[FechaSalida] [date] NULL,
	[HoraSalida] [time](7) NULL,
 CONSTRAINT [PK_DetalleRuta] PRIMARY KEY CLUSTERED 
(
	[IdDetalleRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 16/10/2017 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleVenta]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 16/10/2017 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estado](
	[IdEstado] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 16/10/2017 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 16/10/2017 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pagos]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 16/10/2017 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pais]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pais](
	[IdPais] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 16/10/2017 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 16/10/2017 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 16/10/2017 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoBoleto]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 16/10/2017 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transporte]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transporte](
	[IdTransporte] [uniqueidentifier] NOT NULL,
	[Capacidad] [int] NULL,
	[IdCompañia] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Transporte] PRIMARY KEY CLUSTERED 
(
	[IdTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 16/10/2017 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ventas]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 16/10/2017 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Viaje]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Viaje](
	[IdViaje] [uniqueidentifier] NOT NULL,
	[IdRuta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Viaje] PRIMARY KEY CLUSTERED 
(
	[IdViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_TipoBoleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_TipoBoleto] FOREIGN KEY([IdTipoBoleto])
REFERENCES [dbo].[TipoBoleto] ([IdTipoBoleto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_TipoBoleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_TipoBoleto]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_Viaje]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Viaje] FOREIGN KEY([IdViaje])
REFERENCES [dbo].[Viaje] ([IdViaje])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_Viaje]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Viaje]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ciudad_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ciudad]'))
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ciudad_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ciudad]'))
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Estado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ciudad_Pais]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ciudad]'))
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ciudad_Pais]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ciudad]'))
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Pais]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleRuta_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleRuta]'))
ALTER TABLE [dbo].[DetalleRuta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleRuta_Ruta] FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Ruta] ([IdRuta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleRuta_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleRuta]'))
ALTER TABLE [dbo].[DetalleRuta] CHECK CONSTRAINT [FK_DetalleRuta_Ruta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Boleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Boleto] FOREIGN KEY([IdBoleto])
REFERENCES [dbo].[Boleto] ([IdBoleto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Boleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Boleto]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel]'))
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Ciudad] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel]'))
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Ciudad]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Cliente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Hotel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Hotel] FOREIGN KEY([IdVentas])
REFERENCES [dbo].[Hotel] ([IdHotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Hotel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Hotel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Ventas] FOREIGN KEY([IdVentas])
REFERENCES [dbo].[Ventas] ([IdVentas])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Ventas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Viaje]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Viaje] FOREIGN KEY([IdViaje])
REFERENCES [dbo].[Viaje] ([IdViaje])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Viaje]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Viaje]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad] FOREIGN KEY([CiudadOrigen])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad1] FOREIGN KEY([CiudadDestino])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_DetalleRuta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_DetalleRuta] FOREIGN KEY([IdDetalleRuta])
REFERENCES [dbo].[DetalleRuta] ([IdDetalleRuta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_DetalleRuta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_DetalleRuta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Transporte]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Transporte] FOREIGN KEY([IdTranporte])
REFERENCES [dbo].[Transporte] ([IdTransporte])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Transporte]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Transporte]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TipoBoleto_Categoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TipoBoleto]'))
ALTER TABLE [dbo].[TipoBoleto]  WITH CHECK ADD  CONSTRAINT [FK_TipoBoleto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TipoBoleto_Categoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TipoBoleto]'))
ALTER TABLE [dbo].[TipoBoleto] CHECK CONSTRAINT [FK_TipoBoleto_Categoria]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transporte_Compañia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transporte]'))
ALTER TABLE [dbo].[Transporte]  WITH CHECK ADD  CONSTRAINT [FK_Transporte_Compañia] FOREIGN KEY([IdCompañia])
REFERENCES [dbo].[Compañia] ([IdCompañia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transporte_Compañia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transporte]'))
ALTER TABLE [dbo].[Transporte] CHECK CONSTRAINT [FK_Transporte_Compañia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_DetalleVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DetalleVenta] FOREIGN KEY([IdDetalleVenta])
REFERENCES [dbo].[DetalleVenta] ([IdDetalleVenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_DetalleVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_DetalleVenta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_Pagos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Pagos] FOREIGN KEY([IdPagos])
REFERENCES [dbo].[Pagos] ([IdPagos])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_Pagos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Pagos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Viaje_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Viaje]'))
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Ruta] FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Ruta] ([IdRuta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Viaje_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Viaje]'))
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Ruta]
GO
USE [master]
GO
ALTER DATABASE [AgenciaDeViajes] SET  READ_WRITE 
GO

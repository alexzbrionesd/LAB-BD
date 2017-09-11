USE [master]
GO

/****** Object:  Database [Disquera]    Script Date: 04/09/2017 09:35:39 p.m. ******/
CREATE DATABASE [Disquera]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Disquera', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Disquera.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Disquera_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Disquera_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Disquera] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Disquera].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Disquera] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Disquera] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Disquera] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Disquera] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Disquera] SET ARITHABORT OFF 
GO

ALTER DATABASE [Disquera] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Disquera] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [Disquera] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Disquera] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Disquera] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Disquera] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Disquera] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Disquera] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Disquera] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Disquera] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Disquera] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Disquera] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Disquera] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Disquera] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Disquera] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Disquera] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Disquera] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Disquera] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Disquera] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Disquera] SET  MULTI_USER 
GO

ALTER DATABASE [Disquera] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Disquera] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Disquera] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Disquera] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Disquera] SET  READ_WRITE 
GO



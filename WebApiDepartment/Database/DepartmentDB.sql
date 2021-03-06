USE [master]
GO
/****** Object:  Database [DepartmentDB]    Script Date: 26.12.2018 9:16:50 ******/
CREATE DATABASE [DepartmentDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DepartmentDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DepartmentDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DepartmentDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DepartmentDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DepartmentDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DepartmentDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DepartmentDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DepartmentDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DepartmentDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DepartmentDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DepartmentDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DepartmentDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DepartmentDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DepartmentDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DepartmentDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DepartmentDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DepartmentDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DepartmentDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DepartmentDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DepartmentDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DepartmentDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DepartmentDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DepartmentDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DepartmentDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DepartmentDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DepartmentDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DepartmentDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DepartmentDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DepartmentDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DepartmentDB] SET  MULTI_USER 
GO
ALTER DATABASE [DepartmentDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DepartmentDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DepartmentDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DepartmentDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DepartmentDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DepartmentDB] SET QUERY_STORE = OFF
GO
USE [DepartmentDB]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 26.12.2018 9:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DepartmentDB] SET  READ_WRITE 
GO

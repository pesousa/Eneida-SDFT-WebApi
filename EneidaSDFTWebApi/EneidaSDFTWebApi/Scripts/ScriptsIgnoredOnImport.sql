
USE [master]
GO

/****** Object:  Database [eneida_srs]    Script Date: 04/01/2016 15:04:14 ******/
CREATE DATABASE [eneida_srs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eneida_srs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\eneida_srs.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eneida_srs_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\eneida_srs_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [eneida_srs] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eneida_srs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [eneida_srs] SET ANSI_NULL_DEFAULT OFF
GO

ALTER DATABASE [eneida_srs] SET ANSI_NULLS OFF
GO

ALTER DATABASE [eneida_srs] SET ANSI_PADDING OFF
GO

ALTER DATABASE [eneida_srs] SET ANSI_WARNINGS OFF
GO

ALTER DATABASE [eneida_srs] SET ARITHABORT OFF
GO

ALTER DATABASE [eneida_srs] SET AUTO_CLOSE OFF
GO

ALTER DATABASE [eneida_srs] SET AUTO_SHRINK OFF
GO

ALTER DATABASE [eneida_srs] SET AUTO_UPDATE_STATISTICS ON
GO

ALTER DATABASE [eneida_srs] SET CURSOR_CLOSE_ON_COMMIT OFF
GO

ALTER DATABASE [eneida_srs] SET CURSOR_DEFAULT  GLOBAL
GO

ALTER DATABASE [eneida_srs] SET CONCAT_NULL_YIELDS_NULL OFF
GO

ALTER DATABASE [eneida_srs] SET NUMERIC_ROUNDABORT OFF
GO

ALTER DATABASE [eneida_srs] SET QUOTED_IDENTIFIER OFF
GO

ALTER DATABASE [eneida_srs] SET RECURSIVE_TRIGGERS OFF
GO

ALTER DATABASE [eneida_srs] SET  DISABLE_BROKER
GO

ALTER DATABASE [eneida_srs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO

ALTER DATABASE [eneida_srs] SET DATE_CORRELATION_OPTIMIZATION OFF
GO

ALTER DATABASE [eneida_srs] SET TRUSTWORTHY OFF
GO

ALTER DATABASE [eneida_srs] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO

ALTER DATABASE [eneida_srs] SET PARAMETERIZATION SIMPLE
GO

ALTER DATABASE [eneida_srs] SET READ_COMMITTED_SNAPSHOT OFF
GO

ALTER DATABASE [eneida_srs] SET HONOR_BROKER_PRIORITY OFF
GO

ALTER DATABASE [eneida_srs] SET RECOVERY SIMPLE
GO

ALTER DATABASE [eneida_srs] SET  MULTI_USER
GO

ALTER DATABASE [eneida_srs] SET PAGE_VERIFY CHECKSUM
GO

ALTER DATABASE [eneida_srs] SET DB_CHAINING OFF
GO

ALTER DATABASE [eneida_srs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO

ALTER DATABASE [eneida_srs] SET TARGET_RECOVERY_TIME = 0 SECONDS
GO

ALTER DATABASE [eneida_srs] SET DELAYED_DURABILITY = DISABLED
GO

USE [eneida_srs]
GO

/****** Object:  Table [dbo].[alarm]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[alarm_type]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[asset]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[asset_device_relation]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[asset_type]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[asset_type_alarm_type]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[configuration]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[connection_type]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[device]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[device_sms_user]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[device_sms_user2]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[device_status]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[device_type]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[group]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[group_permission]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[location]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[permission]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[sensor]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[sensor_alarm_type]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[sensor_type]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[sms_user]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[sms_user_type]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[user]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[user_group]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[user_permission]    Script Date: 04/01/2016 15:04:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

USE [master]
GO

ALTER DATABASE [eneida_srs] SET  READ_WRITE
GO

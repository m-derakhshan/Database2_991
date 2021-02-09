USE [master]
GO


-- Uncomment the ALTER DATABASE statement below to set the database to SINGLE_USER mode if the drop database command fails because the database is in use.
-- ALTER DATABASE [WWI-Staging] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- Drop the database if it exists
IF EXISTS (
  SELECT name
   FROM sys.databases
   WHERE name = N'WWI-Staging'
)
DROP DATABASE [WWI-Staging]
GO

/****** Object:  Database [WWI-Staging]    Script Date: 1/31/2021 1:29:48 PM ******/
CREATE DATABASE [WWI-Staging]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WWI-Staging', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WWI-Staging.mdf' , SIZE = 335872KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WWI-Staging_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WWI-Staging_log.ldf' , SIZE = 401408KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WWI-Staging].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [WWI-Staging] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [WWI-Staging] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [WWI-Staging] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [WWI-Staging] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [WWI-Staging] SET ARITHABORT OFF 
GO

ALTER DATABASE [WWI-Staging] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [WWI-Staging] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [WWI-Staging] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [WWI-Staging] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [WWI-Staging] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [WWI-Staging] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [WWI-Staging] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [WWI-Staging] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [WWI-Staging] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [WWI-Staging] SET  DISABLE_BROKER 
GO

ALTER DATABASE [WWI-Staging] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [WWI-Staging] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [WWI-Staging] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [WWI-Staging] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [WWI-Staging] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [WWI-Staging] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [WWI-Staging] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [WWI-Staging] SET RECOVERY FULL 
GO

ALTER DATABASE [WWI-Staging] SET  MULTI_USER 
GO

ALTER DATABASE [WWI-Staging] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [WWI-Staging] SET DB_CHAINING OFF 
GO

ALTER DATABASE [WWI-Staging] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [WWI-Staging] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [WWI-Staging] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [WWI-Staging] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [WWI-Staging] SET QUERY_STORE = OFF
GO

ALTER DATABASE [WWI-Staging] SET  READ_WRITE 
GO


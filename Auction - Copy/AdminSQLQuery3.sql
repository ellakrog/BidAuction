USE [master]
GO
/****** Object:  Database [Admin]    Script Date: 19.4.2017. 10:57:25 ******/
CREATE DATABASE [Admin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Admin', FILENAME = N'C:\Ljubica\c# zadaci\BPZadatak\Admin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Admin_log', FILENAME = N'C:\Ljubica\c# zadaci\BPZadatak\Admin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Admin] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Admin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Admin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Admin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Admin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Admin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Admin] SET ARITHABORT OFF 
GO
ALTER DATABASE [Admin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Admin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Admin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Admin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Admin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Admin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Admin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Admin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Admin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Admin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Admin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Admin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Admin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Admin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Admin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Admin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Admin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Admin] SET RECOVERY FULL 
GO
ALTER DATABASE [Admin] SET  MULTI_USER 
GO
ALTER DATABASE [Admin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Admin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Admin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Admin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Admin] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Admin', N'ON'
GO
ALTER DATABASE [Admin] SET QUERY_STORE = OFF
GO
USE [Admin]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Admin]
GO
/****** Object:  Table [dbo].[tbl_Login]    Script Date: 19.4.2017. 10:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Login](
	[id] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[povecajzajedan]    Script Date: 19.4.2017. 10:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[povecajzajedan] 
@IdProizvoda int
AS
UPDATE Aukcija SET PocetnaCijena = PocetnaCijena + 1
WHERE IdProizvoda = @IdProizvoda
;

GO
USE [master]
GO
ALTER DATABASE [Admin] SET  READ_WRITE 
GO

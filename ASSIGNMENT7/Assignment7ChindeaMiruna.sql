USE [master]
GO
/****** Object:  Database [ElectrocasnicStore]    Script Date: 17-Dec-2018 4:28:31 PM ******/
CREATE DATABASE [ElectrocasnicStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Market', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Market.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Market_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Market_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ElectrocasnicStore] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ElectrocasnicStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ElectrocasnicStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ElectrocasnicStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ElectrocasnicStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ElectrocasnicStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ElectrocasnicStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET RECOVERY FULL 
GO
ALTER DATABASE [ElectrocasnicStore] SET  MULTI_USER 
GO
ALTER DATABASE [ElectrocasnicStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ElectrocasnicStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ElectrocasnicStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ElectrocasnicStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ElectrocasnicStore] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ElectrocasnicStore', N'ON'
GO
ALTER DATABASE [ElectrocasnicStore] SET QUERY_STORE = OFF
GO
USE [ElectrocasnicStore]
GO
/****** Object:  Table [dbo].[preparare_cafea]    Script Date: 17-Dec-2018 4:28:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preparare_cafea](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
 CONSTRAINT [PK_preparare_cafea] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colours]    Script Date: 17-Dec-2018 4:28:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colours](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_colours] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[frigidere]    Script Date: 17-Dec-2018 4:28:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[frigidere](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[capacity] [varchar](50) NOT NULL,
	[class] [varchar](50) NOT NULL,
	[nbofdoors] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
 CONSTRAINT [PK_frigidere] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 17-Dec-2018 4:28:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_brands] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[congelatoare]    Script Date: 17-Dec-2018 4:28:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[congelatoare](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[capacity] [varchar](50) NOT NULL,
	[class] [varchar](50) NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[nbofdrawers] [int] NOT NULL,
 CONSTRAINT [PK_congelatoare] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aragazuri]    Script Date: 17-Dec-2018 4:28:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aragazuri](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[nbofeyes] [int] NOT NULL,
	[description] [varchar](100) NULL,
 CONSTRAINT [PK_aragazuri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[masini_rufe]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[masini_rufe](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[class] [varchar](50) NOT NULL,
	[capacity] [varchar](50) NOT NULL,
	[rpm] [int] NOT NULL,
 CONSTRAINT [PK_masini_rufe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[masini_vase]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[masini_vase](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[class] [varchar](50) NOT NULL,
	[nbofsets] [int] NOT NULL,
	[nbofprograms] [int] NOT NULL,
 CONSTRAINT [PK_masini_vase] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cafetiere]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cafetiere](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[capacity] [varchar](50) NULL,
	[power] [varchar](50) NULL,
 CONSTRAINT [PK_cafetiere] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[espresoare]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[espresoare](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[capacity] [varchar](50) NULL,
	[power] [varchar](50) NULL,
	[pressure] [varchar](50) NULL,
 CONSTRAINT [PK_espresoare] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rasnite]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rasnite](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[power] [varchar](50) NOT NULL,
 CONSTRAINT [PK_rasnite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roboti_bucatarie]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roboti_bucatarie](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[power] [varchar](50) NULL,
	[capacity] [varchar](50) NULL,
 CONSTRAINT [PK_roboti_bucatarie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produse]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produse](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mixere]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mixere](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[power] [varchar](50) NULL,
	[capacity] [varchar](50) NULL,
	[nbofspeeds] [varchar](50) NULL,
 CONSTRAINT [PK_mixere] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[electrocasnice_mari]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[electrocasnice_mari](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NULL,
 CONSTRAINT [PK_electrocasnice_mari] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[masini_tocat]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[masini_tocat](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[power] [varchar](50) NULL,
	[speed] [varchar](50) NULL,
 CONSTRAINT [PK_masini_tocat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[apar_incalzit]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[apar_incalzit](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[power] [varchar](50) NULL,
	[powersteps] [varchar](50) NULL,
	[nbofelements] [int] NULL,
 CONSTRAINT [PK_apar_incalzit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seminee_electrice]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seminee_electrice](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[brandid] [int] NOT NULL,
	[colourid] [int] NOT NULL,
	[power] [varchar](50) NULL,
	[powersteps] [int] NULL,
 CONSTRAINT [PK_seminee_electrice] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roboti]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roboti](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NULL,
 CONSTRAINT [PK_roboti] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[incalzire]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incalzire](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
 CONSTRAINT [PK_incalzire] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        produse.name AS category, electrocasnice_mari.name AS subcategory, frigidere.name, frigidere.capacity, frigidere.class, NULL AS power, NULL AS powersteps, colours.name as colour, brands.name as brand
FROM           electrocasnice_mari JOIN
                         produse ON produse.id = electrocasnice_mari.categoryid  JOIN
                          frigidere ON frigidere.categoryid = electrocasnice_mari.id
                         JOIN colours on frigidere.colourid = colours.id
                         JOIN brands on frigidere.brandid = brands.id


UNION ALL
SELECT        produse.name AS category, electrocasnice_mari.name AS subcategory, congelatoare.name, congelatoare.capacity, congelatoare.class, NULL, NULL, colours.name,  brands.name
FROM            electrocasnice_mari JOIN
                         produse ON produse.id = electrocasnice_mari.categoryid JOIN
                         congelatoare ON congelatoare.categoryid = electrocasnice_mari.id
       JOIN colours on congelatoare.colourid = colours.id
                         JOIN brands on congelatoare.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, electrocasnice_mari.name AS subcategory, aragazuri.name, NULL, NULL, NULL, NULL, colours.name, brands.name
FROM            electrocasnice_mari JOIN
                         produse ON produse.id = electrocasnice_mari.categoryid JOIN
                         aragazuri ON aragazuri.categoryid = electrocasnice_mari.id
JOIN colours on aragazuri.colourid = colours.id
                         JOIN brands on aragazuri.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, electrocasnice_mari.name AS subcategory, masini_vase.name, NULL, masini_vase.class, NULL, NULL, colours.name, brands.name
FROM            electrocasnice_mari JOIN
                         produse ON produse.id = electrocasnice_mari.categoryid JOIN
                         masini_vase ON masini_vase.categoryid = electrocasnice_mari.id
JOIN colours on masini_vase.colourid = colours.id
                         JOIN brands on masini_vase.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, electrocasnice_mari.name AS subcategory, masini_rufe.name, masini_rufe.capacity, masini_rufe.class, NULL, NULL, colours.name, brands.name
FROM            electrocasnice_mari JOIN
                         produse ON produse.id = electrocasnice_mari.categoryid JOIN
                         masini_rufe ON masini_rufe.categoryid = electrocasnice_mari.id
JOIN colours on masini_rufe.colourid = colours.id
                         JOIN brands on masini_rufe.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, incalzire.name, apar_incalzit.name, NULL, NULL, apar_incalzit.power AS power, apar_incalzit.powersteps AS powersteps, colours.name, brands.name
FROM            incalzire JOIN
                         produse ON produse.id = incalzire.categoryid JOIN
                         apar_incalzit ON apar_incalzit.categoryid = incalzire.id
JOIN colours on apar_incalzit.colourid = colours.id
                         JOIN brands on apar_incalzit.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, incalzire.name, seminee_electrice.name, NULL, NULL, seminee_electrice.power, seminee_electrice.powersteps, colours.name, brands.name
FROM            incalzire JOIN
                         produse ON produse.id = incalzire.categoryid JOIN
                         seminee_electrice ON seminee_electrice.categoryid = incalzire.id
JOIN colours on seminee_electrice.colourid = colours.id
                         JOIN brands on seminee_electrice.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, preparare_cafea.name, cafetiere.name, cafetiere.capacity, NULL, cafetiere.power, NULL, colours.name, brands.name
FROM            preparare_cafea JOIN
                         produse ON produse.id = preparare_cafea.categoryid JOIN
                         cafetiere ON cafetiere.categoryid = preparare_cafea.id
JOIN colours on cafetiere.colourid = colours.id
                         JOIN brands on cafetiere.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, preparare_cafea.name, espresoare.name, espresoare.capacity, NULL, espresoare.power, NULL, colours.name, brands.name
FROM            preparare_cafea JOIN
                         produse ON produse.id = preparare_cafea.categoryid JOIN
                         espresoare ON espresoare.categoryid = preparare_cafea.id
JOIN colours on espresoare.colourid = colours.id
                         JOIN brands on espresoare.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, preparare_cafea.name, rasnite.name, NULL, NULL, rasnite.power, NULL, colours.name, brands.name
FROM            preparare_cafea JOIN
                         produse ON produse.id = preparare_cafea.categoryid JOIN
                         rasnite ON rasnite.categoryid = preparare_cafea.id
JOIN colours on rasnite.colourid = colours.id
                         JOIN brands on rasnite.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, roboti.name, roboti_bucatarie.name, roboti_bucatarie.capacity, NULL, roboti_bucatarie.power, NULL, colours.name, brands.name
FROM            roboti JOIN
                         produse ON produse.id = roboti.categoryid JOIN
                         roboti_bucatarie ON roboti_bucatarie.categoryid = roboti.id
JOIN colours on roboti_bucatarie.colourid = colours.id
                         JOIN brands on roboti_bucatarie.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, roboti.name, mixere.name, mixere.capacity, NULL, mixere.power, NULL, colours.name, brands.name
FROM            roboti JOIN
                         produse ON produse.id = roboti.categoryid JOIN
                         mixere ON mixere.categoryid = roboti.id
JOIN colours on mixere.colourid = colours.id
                         JOIN brands on mixere.brandid = brands.id
UNION ALL
SELECT        produse.name AS category, roboti.name, masini_tocat.name, NULL, NULL, masini_tocat.power, NULL, colours.name, brands.name
FROM            roboti JOIN
                         produse ON produse.id = roboti.categoryid JOIN
                         masini_tocat ON masini_tocat.categoryid = roboti.id
JOIN colours on masini_tocat.colourid = colours.id
                         JOIN brands on masini_tocat.brandid = brands.id
GO
/****** Object:  View [dbo].[View_2]    Script Date: 17-Dec-2018 4:28:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_2]
AS
SELECT         produse.name AS category, electrocasnice_mari.name as subcategory
FROM            electrocasnice_mari JOIN
                         produse ON produse.id = electrocasnice_mari.categoryid
UNION ALL
SELECT         produse.name AS expr2, incalzire.name
FROM            incalzire JOIN
                         produse ON produse.id = incalzire.categoryid
UNION ALL
SELECT         produse.name AS expr3, preparare_cafea.name
FROM            preparare_cafea JOIN
                         produse ON produse.id = preparare_cafea.categoryid
UNION ALL
SELECT         produse.name AS expr4, roboti.name
FROM            roboti JOIN
                         produse ON produse.id = roboti.categoryid
GO
ALTER TABLE [dbo].[apar_incalzit]  WITH CHECK ADD  CONSTRAINT [FK_apar_incalzit_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[apar_incalzit] CHECK CONSTRAINT [FK_apar_incalzit_brands]
GO
ALTER TABLE [dbo].[apar_incalzit]  WITH CHECK ADD  CONSTRAINT [FK_apar_incalzit_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[apar_incalzit] CHECK CONSTRAINT [FK_apar_incalzit_colours]
GO
ALTER TABLE [dbo].[apar_incalzit]  WITH CHECK ADD  CONSTRAINT [FK_apar_incalzit_incalzire] FOREIGN KEY([categoryid])
REFERENCES [dbo].[incalzire] ([id])
GO
ALTER TABLE [dbo].[apar_incalzit] CHECK CONSTRAINT [FK_apar_incalzit_incalzire]
GO
ALTER TABLE [dbo].[aragazuri]  WITH CHECK ADD  CONSTRAINT [FK_aragazuri_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[aragazuri] CHECK CONSTRAINT [FK_aragazuri_brands]
GO
ALTER TABLE [dbo].[aragazuri]  WITH CHECK ADD  CONSTRAINT [FK_aragazuri_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[aragazuri] CHECK CONSTRAINT [FK_aragazuri_colours]
GO
ALTER TABLE [dbo].[aragazuri]  WITH CHECK ADD  CONSTRAINT [FK_aragazuri_electrocasnice_mari] FOREIGN KEY([categoryid])
REFERENCES [dbo].[electrocasnice_mari] ([id])
GO
ALTER TABLE [dbo].[aragazuri] CHECK CONSTRAINT [FK_aragazuri_electrocasnice_mari]
GO
ALTER TABLE [dbo].[cafetiere]  WITH CHECK ADD  CONSTRAINT [FK_cafetiere_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[cafetiere] CHECK CONSTRAINT [FK_cafetiere_brands]
GO
ALTER TABLE [dbo].[cafetiere]  WITH CHECK ADD  CONSTRAINT [FK_cafetiere_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[cafetiere] CHECK CONSTRAINT [FK_cafetiere_colours]
GO
ALTER TABLE [dbo].[cafetiere]  WITH CHECK ADD  CONSTRAINT [FK_cafetiere_preparare_cafea] FOREIGN KEY([categoryid])
REFERENCES [dbo].[preparare_cafea] ([id])
GO
ALTER TABLE [dbo].[cafetiere] CHECK CONSTRAINT [FK_cafetiere_preparare_cafea]
GO
ALTER TABLE [dbo].[congelatoare]  WITH CHECK ADD  CONSTRAINT [FK_congelatoare_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[congelatoare] CHECK CONSTRAINT [FK_congelatoare_brands]
GO
ALTER TABLE [dbo].[congelatoare]  WITH CHECK ADD  CONSTRAINT [FK_congelatoare_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[congelatoare] CHECK CONSTRAINT [FK_congelatoare_colours]
GO
ALTER TABLE [dbo].[congelatoare]  WITH CHECK ADD  CONSTRAINT [FK_congelatoare_electrocasnice_mari] FOREIGN KEY([categoryid])
REFERENCES [dbo].[electrocasnice_mari] ([id])
GO
ALTER TABLE [dbo].[congelatoare] CHECK CONSTRAINT [FK_congelatoare_electrocasnice_mari]
GO
ALTER TABLE [dbo].[electrocasnice_mari]  WITH CHECK ADD  CONSTRAINT [FK_electrocasnice_mari_produse] FOREIGN KEY([categoryid])
REFERENCES [dbo].[produse] ([id])
GO
ALTER TABLE [dbo].[electrocasnice_mari] CHECK CONSTRAINT [FK_electrocasnice_mari_produse]
GO
ALTER TABLE [dbo].[espresoare]  WITH CHECK ADD  CONSTRAINT [FK_espresoare_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[espresoare] CHECK CONSTRAINT [FK_espresoare_brands]
GO
ALTER TABLE [dbo].[espresoare]  WITH CHECK ADD  CONSTRAINT [FK_espresoare_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[espresoare] CHECK CONSTRAINT [FK_espresoare_colours]
GO
ALTER TABLE [dbo].[espresoare]  WITH CHECK ADD  CONSTRAINT [FK_espresoare_preparare_cafea] FOREIGN KEY([categoryid])
REFERENCES [dbo].[preparare_cafea] ([id])
GO
ALTER TABLE [dbo].[espresoare] CHECK CONSTRAINT [FK_espresoare_preparare_cafea]
GO
ALTER TABLE [dbo].[frigidere]  WITH CHECK ADD  CONSTRAINT [FK_frigidere_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[frigidere] CHECK CONSTRAINT [FK_frigidere_brands]
GO
ALTER TABLE [dbo].[frigidere]  WITH CHECK ADD  CONSTRAINT [FK_frigidere_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[frigidere] CHECK CONSTRAINT [FK_frigidere_colours]
GO
ALTER TABLE [dbo].[frigidere]  WITH CHECK ADD  CONSTRAINT [FK_frigidere_electrocasnice_mari] FOREIGN KEY([categoryid])
REFERENCES [dbo].[electrocasnice_mari] ([id])
GO
ALTER TABLE [dbo].[frigidere] CHECK CONSTRAINT [FK_frigidere_electrocasnice_mari]
GO
ALTER TABLE [dbo].[incalzire]  WITH CHECK ADD  CONSTRAINT [FK_incalzire_produse] FOREIGN KEY([categoryid])
REFERENCES [dbo].[produse] ([id])
GO
ALTER TABLE [dbo].[incalzire] CHECK CONSTRAINT [FK_incalzire_produse]
GO
ALTER TABLE [dbo].[masini_rufe]  WITH CHECK ADD  CONSTRAINT [FK_masini_rufe_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[masini_rufe] CHECK CONSTRAINT [FK_masini_rufe_brands]
GO
ALTER TABLE [dbo].[masini_rufe]  WITH CHECK ADD  CONSTRAINT [FK_masini_rufe_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[masini_rufe] CHECK CONSTRAINT [FK_masini_rufe_colours]
GO
ALTER TABLE [dbo].[masini_rufe]  WITH CHECK ADD  CONSTRAINT [FK_masini_rufe_electrocasnice_mari] FOREIGN KEY([categoryid])
REFERENCES [dbo].[electrocasnice_mari] ([id])
GO
ALTER TABLE [dbo].[masini_rufe] CHECK CONSTRAINT [FK_masini_rufe_electrocasnice_mari]
GO
ALTER TABLE [dbo].[masini_tocat]  WITH CHECK ADD  CONSTRAINT [FK_masini_tocat_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[masini_tocat] CHECK CONSTRAINT [FK_masini_tocat_brands]
GO
ALTER TABLE [dbo].[masini_tocat]  WITH CHECK ADD  CONSTRAINT [FK_masini_tocat_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[masini_tocat] CHECK CONSTRAINT [FK_masini_tocat_colours]
GO
ALTER TABLE [dbo].[masini_tocat]  WITH CHECK ADD  CONSTRAINT [FK_masini_tocat_roboti] FOREIGN KEY([categoryid])
REFERENCES [dbo].[roboti] ([id])
GO
ALTER TABLE [dbo].[masini_tocat] CHECK CONSTRAINT [FK_masini_tocat_roboti]
GO
ALTER TABLE [dbo].[masini_vase]  WITH CHECK ADD  CONSTRAINT [FK_masini_vase_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[masini_vase] CHECK CONSTRAINT [FK_masini_vase_brands]
GO
ALTER TABLE [dbo].[masini_vase]  WITH CHECK ADD  CONSTRAINT [FK_masini_vase_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[masini_vase] CHECK CONSTRAINT [FK_masini_vase_colours]
GO
ALTER TABLE [dbo].[masini_vase]  WITH CHECK ADD  CONSTRAINT [FK_masini_vase_electrocasnice_mari] FOREIGN KEY([categoryid])
REFERENCES [dbo].[electrocasnice_mari] ([id])
GO
ALTER TABLE [dbo].[masini_vase] CHECK CONSTRAINT [FK_masini_vase_electrocasnice_mari]
GO
ALTER TABLE [dbo].[mixere]  WITH CHECK ADD  CONSTRAINT [FK_mixere_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[mixere] CHECK CONSTRAINT [FK_mixere_brands]
GO
ALTER TABLE [dbo].[mixere]  WITH CHECK ADD  CONSTRAINT [FK_mixere_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[mixere] CHECK CONSTRAINT [FK_mixere_colours]
GO
ALTER TABLE [dbo].[mixere]  WITH CHECK ADD  CONSTRAINT [FK_mixere_roboti] FOREIGN KEY([categoryid])
REFERENCES [dbo].[roboti] ([id])
GO
ALTER TABLE [dbo].[mixere] CHECK CONSTRAINT [FK_mixere_roboti]
GO
ALTER TABLE [dbo].[preparare_cafea]  WITH CHECK ADD  CONSTRAINT [FK_preparare_cafea_produse] FOREIGN KEY([categoryid])
REFERENCES [dbo].[produse] ([id])
GO
ALTER TABLE [dbo].[preparare_cafea] CHECK CONSTRAINT [FK_preparare_cafea_produse]
GO
ALTER TABLE [dbo].[rasnite]  WITH CHECK ADD  CONSTRAINT [FK_rasnite_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[rasnite] CHECK CONSTRAINT [FK_rasnite_brands]
GO
ALTER TABLE [dbo].[rasnite]  WITH CHECK ADD  CONSTRAINT [FK_rasnite_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[rasnite] CHECK CONSTRAINT [FK_rasnite_colours]
GO
ALTER TABLE [dbo].[rasnite]  WITH CHECK ADD  CONSTRAINT [FK_rasnite_preparare_cafea] FOREIGN KEY([categoryid])
REFERENCES [dbo].[preparare_cafea] ([id])
GO
ALTER TABLE [dbo].[rasnite] CHECK CONSTRAINT [FK_rasnite_preparare_cafea]
GO
ALTER TABLE [dbo].[roboti]  WITH CHECK ADD  CONSTRAINT [FK_roboti_produse] FOREIGN KEY([categoryid])
REFERENCES [dbo].[produse] ([id])
GO
ALTER TABLE [dbo].[roboti] CHECK CONSTRAINT [FK_roboti_produse]
GO
ALTER TABLE [dbo].[roboti_bucatarie]  WITH CHECK ADD  CONSTRAINT [FK_roboti_bucatarie_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[roboti_bucatarie] CHECK CONSTRAINT [FK_roboti_bucatarie_brands]
GO
ALTER TABLE [dbo].[roboti_bucatarie]  WITH CHECK ADD  CONSTRAINT [FK_roboti_bucatarie_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[roboti_bucatarie] CHECK CONSTRAINT [FK_roboti_bucatarie_colours]
GO
ALTER TABLE [dbo].[roboti_bucatarie]  WITH CHECK ADD  CONSTRAINT [FK_roboti_bucatarie_roboti] FOREIGN KEY([categoryid])
REFERENCES [dbo].[roboti] ([id])
GO
ALTER TABLE [dbo].[roboti_bucatarie] CHECK CONSTRAINT [FK_roboti_bucatarie_roboti]
GO
ALTER TABLE [dbo].[seminee_electrice]  WITH CHECK ADD  CONSTRAINT [FK_seminee_electrice_brands] FOREIGN KEY([brandid])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[seminee_electrice] CHECK CONSTRAINT [FK_seminee_electrice_brands]
GO
ALTER TABLE [dbo].[seminee_electrice]  WITH CHECK ADD  CONSTRAINT [FK_seminee_electrice_colours] FOREIGN KEY([colourid])
REFERENCES [dbo].[colours] ([id])
GO
ALTER TABLE [dbo].[seminee_electrice] CHECK CONSTRAINT [FK_seminee_electrice_colours]
GO
ALTER TABLE [dbo].[seminee_electrice]  WITH CHECK ADD  CONSTRAINT [FK_seminee_electrice_incalzire] FOREIGN KEY([categoryid])
REFERENCES [dbo].[incalzire] ([id])
GO
ALTER TABLE [dbo].[seminee_electrice] CHECK CONSTRAINT [FK_seminee_electrice_incalzire]
GO
ALTER TABLE [dbo].[apar_incalzit]  WITH CHECK ADD  CONSTRAINT [CK_apar_incalzit] CHECK  (([power]<>' 0 W'))
GO
ALTER TABLE [dbo].[apar_incalzit] CHECK CONSTRAINT [CK_apar_incalzit]
GO
ALTER TABLE [dbo].[apar_incalzit]  WITH CHECK ADD  CONSTRAINT [CK_apar_incalzit_1] CHECK  (([powersteps]>(0)))
GO
ALTER TABLE [dbo].[apar_incalzit] CHECK CONSTRAINT [CK_apar_incalzit_1]
GO
ALTER TABLE [dbo].[aragazuri]  WITH CHECK ADD  CONSTRAINT [CK_aragazuri] CHECK  (([nbofeyes]>(0)))
GO
ALTER TABLE [dbo].[aragazuri] CHECK CONSTRAINT [CK_aragazuri]
GO
ALTER TABLE [dbo].[cafetiere]  WITH CHECK ADD  CONSTRAINT [CK_cafetiere] CHECK  (([power]<>'0 W'))
GO
ALTER TABLE [dbo].[cafetiere] CHECK CONSTRAINT [CK_cafetiere]
GO
ALTER TABLE [dbo].[congelatoare]  WITH CHECK ADD  CONSTRAINT [CK_congelatoare] CHECK  (([nbofdrawers]>(0)))
GO
ALTER TABLE [dbo].[congelatoare] CHECK CONSTRAINT [CK_congelatoare]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[4] 4[4] 2[77] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[4] 2[51] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
USE [master]
GO
ALTER DATABASE [ElectrocasnicStore] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [DB_SWP391]    Script Date: 4/19/2022 1:01:32 AM ******/
CREATE DATABASE [DB_SWP391]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_SWP391', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_SWP391.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_SWP391_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_SWP391_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_SWP391] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_SWP391].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_SWP391] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_SWP391] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_SWP391] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_SWP391] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_SWP391] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_SWP391] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_SWP391] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_SWP391] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_SWP391] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_SWP391] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_SWP391] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_SWP391] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_SWP391] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_SWP391] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_SWP391] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_SWP391] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_SWP391] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_SWP391] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_SWP391] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_SWP391] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_SWP391] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_SWP391] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_SWP391] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_SWP391] SET  MULTI_USER 
GO
ALTER DATABASE [DB_SWP391] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_SWP391] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_SWP391] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_SWP391] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_SWP391] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_SWP391', N'ON'
GO
ALTER DATABASE [DB_SWP391] SET QUERY_STORE = OFF
GO
USE [DB_SWP391]
GO
/****** Object:  Table [dbo].[Accident]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident](
	[id] [int] NOT NULL,
	[compe_id] [int] NOT NULL,
	[punish_id] [int] NOT NULL,
	[moto_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[location] [nvarchar](50) NOT NULL,
	[damage_percent] [nchar](10) NOT NULL,
	[estimated_cost] [nchar](10) NOT NULL,
	[note] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accident] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] NOT NULL,
	[ad_id] [int] NOT NULL,
	[s_id] [int] NOT NULL,
	[c_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[isenable] [bit] NOT NULL,
 CONSTRAINT [PK_Account_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[phone] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compensation]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compensation](
	[id] [int] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Compensation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[id] [int] NOT NULL,
	[moto_id] [int] NOT NULL,
	[compe_id] [int] NOT NULL,
	[punish_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] NOT NULL,
	[fback_id] [int] NOT NULL,
	[fee_id] [int] NOT NULL,
	[moto_id] [int] NOT NULL,
	[contract_id] [int] NOT NULL,
	[compe_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[phone] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fee]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee](
	[id] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[exp_date] [date] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_Fee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] NOT NULL,
	[content] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[reply] [nvarchar](50) NOT NULL,
	[isenable] [bit] NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motobike]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motobike](
	[id] [int] NOT NULL,
	[color] [nchar](10) NOT NULL,
	[brand] [nchar](10) NOT NULL,
	[lisence_plate] [nvarchar](50) NOT NULL,
	[vehicle_capacity] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Motobike] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Punishment]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Punishment](
	[id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[reason] [nvarchar](50) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Punishment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 4/19/2022 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] NOT NULL,
	[fback_id] [int] NOT NULL,
	[fee_id] [int] NOT NULL,
	[contract_id] [int] NOT NULL,
	[compe_id] [int] NOT NULL,
	[punish_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[phone] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accident]  WITH CHECK ADD  CONSTRAINT [FK_Accident_Compensation] FOREIGN KEY([compe_id])
REFERENCES [dbo].[Compensation] ([id])
GO
ALTER TABLE [dbo].[Accident] CHECK CONSTRAINT [FK_Accident_Compensation]
GO
ALTER TABLE [dbo].[Accident]  WITH CHECK ADD  CONSTRAINT [FK_Accident_Motobike] FOREIGN KEY([moto_id])
REFERENCES [dbo].[Motobike] ([id])
GO
ALTER TABLE [dbo].[Accident] CHECK CONSTRAINT [FK_Accident_Motobike]
GO
ALTER TABLE [dbo].[Accident]  WITH CHECK ADD  CONSTRAINT [FK_Accident_Punishment] FOREIGN KEY([punish_id])
REFERENCES [dbo].[Punishment] ([id])
GO
ALTER TABLE [dbo].[Accident] CHECK CONSTRAINT [FK_Accident_Punishment]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Admin] FOREIGN KEY([ad_id])
REFERENCES [dbo].[Admin] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Admin]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Customer] FOREIGN KEY([c_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Customer]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Staff] FOREIGN KEY([s_id])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Staff]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Compensation] FOREIGN KEY([compe_id])
REFERENCES [dbo].[Compensation] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Compensation]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Motobike] FOREIGN KEY([moto_id])
REFERENCES [dbo].[Motobike] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Motobike]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Punishment] FOREIGN KEY([punish_id])
REFERENCES [dbo].[Punishment] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Punishment]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Compensation] FOREIGN KEY([compe_id])
REFERENCES [dbo].[Compensation] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Compensation]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Contract] FOREIGN KEY([contract_id])
REFERENCES [dbo].[Contract] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Contract]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Fee] FOREIGN KEY([fee_id])
REFERENCES [dbo].[Fee] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Fee]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Feedback] FOREIGN KEY([fback_id])
REFERENCES [dbo].[Feedback] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Feedback]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Motobike] FOREIGN KEY([moto_id])
REFERENCES [dbo].[Motobike] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Motobike]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Compensation] FOREIGN KEY([compe_id])
REFERENCES [dbo].[Compensation] ([id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Compensation]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Contract] FOREIGN KEY([contract_id])
REFERENCES [dbo].[Contract] ([id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Contract]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Fee] FOREIGN KEY([fee_id])
REFERENCES [dbo].[Fee] ([id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Fee]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Feedback] FOREIGN KEY([fback_id])
REFERENCES [dbo].[Feedback] ([id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Feedback]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Punishment] FOREIGN KEY([punish_id])
REFERENCES [dbo].[Punishment] ([id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Punishment]
GO
USE [master]
GO
ALTER DATABASE [DB_SWP391] SET  READ_WRITE 
GO

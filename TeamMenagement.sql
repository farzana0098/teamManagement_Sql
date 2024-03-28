USE [Team Management ]
GO
/****** Object:  Trigger [trphon_Insert]    Script Date: 3/28/2024 2:18:39 PM ******/
DROP TRIGGER [dbo].[trphon_Insert]
GO
/****** Object:  StoredProcedure [dbo].[spTaskinsert]    Script Date: 3/28/2024 2:18:39 PM ******/
DROP PROCEDURE [dbo].[spTaskinsert]
GO
/****** Object:  StoredProcedure [dbo].[spphoneupdate]    Script Date: 3/28/2024 2:18:39 PM ******/
DROP PROCEDURE [dbo].[spphoneupdate]
GO
/****** Object:  StoredProcedure [dbo].[spMumberinsert]    Script Date: 3/28/2024 2:18:39 PM ******/
DROP PROCEDURE [dbo].[spMumberinsert]
GO
ALTER TABLE [dbo].[Teamtask] DROP CONSTRAINT [FK__Teamtask__TID__2D27B809]
GO
ALTER TABLE [dbo].[Teamtask] DROP CONSTRAINT [FK__Teamtask__TaskId__2E1BDC42]
GO
ALTER TABLE [dbo].[TeamMumber] DROP CONSTRAINT [FK__TeamMumber__TID__286302EC]
GO
ALTER TABLE [dbo].[TeamMumber] DROP CONSTRAINT [FK__TeamMumber__MId__29572725]
GO
ALTER TABLE [dbo].[Phone] DROP CONSTRAINT [FK__Phone__MId__24927208]
GO
/****** Object:  Table [dbo].[Teamtask]    Script Date: 3/28/2024 2:18:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teamtask]') AND type in (N'U'))
DROP TABLE [dbo].[Teamtask]
GO
/****** Object:  Table [dbo].[Taskinfo]    Script Date: 3/28/2024 2:18:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Taskinfo]') AND type in (N'U'))
DROP TABLE [dbo].[Taskinfo]
GO
/****** Object:  UserDefinedFunction [dbo].[fnMumberinfo]    Script Date: 3/28/2024 2:18:39 PM ******/
DROP FUNCTION [dbo].[fnMumberinfo]
GO
/****** Object:  View [dbo].[Mumberview]    Script Date: 3/28/2024 2:18:39 PM ******/
DROP VIEW [dbo].[Mumberview]
GO
/****** Object:  Table [dbo].[Mumberinfo]    Script Date: 3/28/2024 2:18:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mumberinfo]') AND type in (N'U'))
DROP TABLE [dbo].[Mumberinfo]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 3/28/2024 2:18:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phone]') AND type in (N'U'))
DROP TABLE [dbo].[Phone]
GO
/****** Object:  Table [dbo].[TeamMumber]    Script Date: 3/28/2024 2:18:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeamMumber]') AND type in (N'U'))
DROP TABLE [dbo].[TeamMumber]
GO
/****** Object:  Table [dbo].[Teaminfo]    Script Date: 3/28/2024 2:18:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teaminfo]') AND type in (N'U'))
DROP TABLE [dbo].[Teaminfo]
GO
USE [master]
GO
/****** Object:  Database [Team Management ]    Script Date: 3/28/2024 2:18:39 PM ******/
DROP DATABASE [Team Management ]
GO
/****** Object:  Database [Team Management ]    Script Date: 3/28/2024 2:18:39 PM ******/
CREATE DATABASE [Team Management ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Team Management', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Team Management .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Team Management _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Team Management _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Team Management ] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Team Management ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Team Management ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Team Management ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Team Management ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Team Management ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Team Management ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Team Management ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Team Management ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Team Management ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Team Management ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Team Management ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Team Management ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Team Management ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Team Management ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Team Management ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Team Management ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Team Management ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Team Management ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Team Management ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Team Management ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Team Management ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Team Management ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Team Management ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Team Management ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Team Management ] SET  MULTI_USER 
GO
ALTER DATABASE [Team Management ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Team Management ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Team Management ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Team Management ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Team Management ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Team Management ] SET QUERY_STORE = OFF
GO
USE [Team Management ]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Team Management ]
GO
/****** Object:  Table [dbo].[Teaminfo]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teaminfo](
	[TID] [int] IDENTITY(1,1) NOT NULL,
	[TName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamMumber]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamMumber](
	[TID] [int] NOT NULL,
	[MId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone](
	[MId] [int] NOT NULL,
	[phoneNumber] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mumberinfo]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mumberinfo](
	[MId] [int] IDENTITY(100,1) NOT NULL,
	[MumberName] [varchar](50) NOT NULL,
	[address] [varchar](50) NULL,
 CONSTRAINT [PK__Mumberin__C79734EAD6E4ACEC] PRIMARY KEY CLUSTERED 
(
	[MId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Mumberview]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[Mumberview]
 
as
select m.MId,m.MumberName,m.address,p.phoneNumber,tm.TID,t.TName
from [dbo].[Mumberinfo] as m inner join [dbo].[Phone] as p
on m.MId=p.MId
inner join dbo.TeamMumber as Tm
on m.MId=Tm.MId inner join [dbo].[Teaminfo] as t
on tm.TID=t.TID
GO
/****** Object:  UserDefinedFunction [dbo].[fnMumberinfo]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create function [dbo].[fnMumberinfo](@n varchar(50))
returns table
as
return 
select *
from [dbo].[Mumberinfo]
where address=@n 

GO
/****** Object:  Table [dbo].[Taskinfo]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taskinfo](
	[TaskId] [int] IDENTITY(501,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[Name] [varchar](50) NOT NULL,
	[startdate] [date] NOT NULL,
	[Enddate] [date] NULL,
	[stutes] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Taskinfo__7C6949B110C18546] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teamtask]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teamtask](
	[TID] [int] NOT NULL,
	[TaskId] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mumberinfo] ON 
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (101, N'Abul kalam', N'ctg')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (102, N'Karim', N'cox')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (103, N'Abdur Rahim', N'dha')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (104, N'Jabad', N'ctg')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (105, N'Abdul Momen', N'cum')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (106, N'Rashed', N'Bori')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (107, N'Zahed ', N'ctg')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (108, N'Shahed', N'Rash')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (109, N'Abdullah', N'cox')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (110, N'Hasib', N'sly')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (111, N'Rayhan', N'dha')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (112, N'Metun', N'cum')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (113, N'Jamir', N'coll')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (114, N'Karim', N'Rash')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (115, N'HamidUllah', N'ctg')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (116, N'Maruf', N'sly')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (117, N'korshed', N'cum')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (118, N'Toshar', N'Bori')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (119, N'Rayhan', N'cox')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (120, N'Abdul Hakim', N'dha')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (121, N' Abul Hashem', N'Rash')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (122, N'Abul Hossin', N'sly')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (123, N'Mustak', N'coll')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (124, N'Abul kasim', N'dha')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (125, N'Farzana Akter', N'ctg')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (126, N'Jamir Uddin', N'Bori')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (127, N'Zannat', N'Rash')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (128, N'Korshed', N'cum')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (129, N'Metun', N'ctg')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (130, N'Nur Ayesh', N'cox')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (131, N'Rayhan', N'coll')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (132, N'Arfin Jannat', N'sly')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (133, N'Tanusriee', N'Bori')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (134, N'Habiba', N'sly')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (135, N'Aziz', N'cox')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (136, N'Abdullah', N'sly')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (137, N'Karim', N'ctg')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (138, N'Abdul Karim', N'cox')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (139, N'Akib', N'ctg')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (140, N'Shfin', N'Bori')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (141, N'Rinki Pal', N'dha')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (142, N'Fahima Akter', N'cox')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (143, N'Najmul Hasan', N'sly')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (144, N'Asma Zama', N'coll')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (145, N'D.A Dider', N'coll')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (146, N'Rimi Bol', N'cum')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (147, N'Imrul Hasan', N'Rash')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (148, N'Khaled ', N'coll')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (149, N'Anayenth Hossin', N'ctg')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (150, N'Tasin Haider', N'Bori')
GO
INSERT [dbo].[Mumberinfo] ([MId], [MumberName], [address]) VALUES (151, N'Abdul', N'ctg')
GO
SET IDENTITY_INSERT [dbo].[Mumberinfo] OFF
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (101, N'01823456745')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (101, N'01674553338')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (102, N'01823456775')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (103, N'01823467890')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (104, N'01823234567')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (105, N'01822345678')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (106, N'01823456788')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (107, N'01823456789')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (108, N'01678902345')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (109, N'01754324567')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (110, N'01682349078')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (111, N'01867543201')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (112, N'01682345678')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (113, N'01827345677')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (113, N'01623456789')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (114, N'01723456788')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (115, N'01823456788')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (116, N'01823456789')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (116, N'01612233454')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (117, N'01823456788')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (118, N'01623451234')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (119, N'01823495123')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (120, N'01823456789')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (121, N'01823456789')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (122, N'01634567890')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (123, N'01823456778')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (124, N'01823456780')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (125, N'01687543298')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (126, N'01723646558')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (126, N'01642384959')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (127, N'01679839456')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (128, N'01634567890')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (129, N'01678452300')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (130, N'01928374556')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (131, N'01827364758')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (132, N'01827364565')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (134, N'01792837485')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (135, N'01827364576')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (136, N'01827366475')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (137, N'01928737678')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (138, N'01928374565')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (139, N'01928374665')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (140, N'01827364756')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (141, N'01827364545')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (142, N'01826354324')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (143, N'01726354350')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (144, N'01827325654')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (145, N'01826543344')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (146, N'01827465778')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (147, N'01827364556')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (148, N'01827365345')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (149, N'01827364546')
GO
INSERT [dbo].[Phone] ([MId], [phoneNumber]) VALUES (150, N'01827364455')
GO
SET IDENTITY_INSERT [dbo].[Teaminfo] ON 
GO
INSERT [dbo].[Teaminfo] ([TID], [TName]) VALUES (1, N'Team_A')
GO
INSERT [dbo].[Teaminfo] ([TID], [TName]) VALUES (2, N'Team_B')
GO
INSERT [dbo].[Teaminfo] ([TID], [TName]) VALUES (3, N'Team_C')
GO
INSERT [dbo].[Teaminfo] ([TID], [TName]) VALUES (4, N'Team_D')
GO
INSERT [dbo].[Teaminfo] ([TID], [TName]) VALUES (5, N'Team_E')
GO
SET IDENTITY_INSERT [dbo].[Teaminfo] OFF
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (1, 101)
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (1, 120)
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (1, 101)
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (1, 122)
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (1, 103)
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (1, 104)
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (1, 105)
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (2, 106)
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (2, 107)
GO
INSERT [dbo].[TeamMumber] ([TID], [MId]) VALUES (2, 108)
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK__Phone__MId__24927208] FOREIGN KEY([MId])
REFERENCES [dbo].[Mumberinfo] ([MId])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK__Phone__MId__24927208]
GO
ALTER TABLE [dbo].[TeamMumber]  WITH CHECK ADD  CONSTRAINT [FK__TeamMumber__MId__29572725] FOREIGN KEY([MId])
REFERENCES [dbo].[Mumberinfo] ([MId])
GO
ALTER TABLE [dbo].[TeamMumber] CHECK CONSTRAINT [FK__TeamMumber__MId__29572725]
GO
ALTER TABLE [dbo].[TeamMumber]  WITH CHECK ADD  CONSTRAINT [FK__TeamMumber__TID__286302EC] FOREIGN KEY([TID])
REFERENCES [dbo].[Teaminfo] ([TID])
GO
ALTER TABLE [dbo].[TeamMumber] CHECK CONSTRAINT [FK__TeamMumber__TID__286302EC]
GO
ALTER TABLE [dbo].[Teamtask]  WITH CHECK ADD  CONSTRAINT [FK__Teamtask__TaskId__2E1BDC42] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Taskinfo] ([TaskId])
GO
ALTER TABLE [dbo].[Teamtask] CHECK CONSTRAINT [FK__Teamtask__TaskId__2E1BDC42]
GO
ALTER TABLE [dbo].[Teamtask]  WITH CHECK ADD FOREIGN KEY([TID])
REFERENCES [dbo].[Teaminfo] ([TID])
GO
/****** Object:  StoredProcedure [dbo].[spMumberinsert]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spMumberinsert]

@Name varchar(50),
@address varchar (50)
as
insert into Mumberinfo ([MumberName],[address])
values (@Name,@address)
GO
/****** Object:  StoredProcedure [dbo].[spphoneupdate]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spphoneupdate]
@id int,
@pno varchar (50)
as
update [dbo].[Phone]
set [phoneNumber]=@pno
where MId=@id
GO
/****** Object:  StoredProcedure [dbo].[spTaskinsert]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spTaskinsert]
@Description varchar(100),
@Name varchar (50),
@startdate date,
@Enddate date,
@stutes varchar(50)
as
insert into [dbo].[Taskinfo]([Description],[Name],[startdate],[Enddate],[stutes])
values (@Description,@Name,@startdate ,@Enddate,@stutes)
GO
/****** Object:  Trigger [dbo].[trphon_Insert]    Script Date: 3/28/2024 2:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[trphon_Insert]
on [dbo].[Phone]
instead of insert

as
begin

select * from inserted

if( @@ROWCOUNT>1)
begin
print 'insert failed';
throw 500001,'Multiple records can not be inserted once', 255;
end

insert into [dbo].[Phone](MId,phoneNumber) 
select MId,phoneNumber
from inserted
print 'insert success';
end
GO
ALTER TABLE [dbo].[Phone] ENABLE TRIGGER [trphon_Insert]
GO
USE [master]
GO
ALTER DATABASE [Team Management ] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [TestApplication]    Script Date: 07.01.2016 17:55:24 ******/
CREATE DATABASE [TestApplication]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestApplication', FILENAME = N'D:\Program Files\Microsoft SQL Express Server\MSSQL12.SQLEXPRESS_2014\MSSQL\DATA\TestApplication.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TestApplication_log', FILENAME = N'D:\Program Files\Microsoft SQL Express Server\MSSQL12.SQLEXPRESS_2014\MSSQL\DATA\TestApplication_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TestApplication] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestApplication].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestApplication] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestApplication] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestApplication] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestApplication] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestApplication] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestApplication] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestApplication] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestApplication] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestApplication] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestApplication] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestApplication] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestApplication] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestApplication] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestApplication] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestApplication] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestApplication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestApplication] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestApplication] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestApplication] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestApplication] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestApplication] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestApplication] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestApplication] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TestApplication] SET  MULTI_USER 
GO
ALTER DATABASE [TestApplication] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestApplication] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestApplication] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestApplication] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TestApplication] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TestApplication]
GO
/****** Object:  Table [dbo].[tCustomers]    Script Date: 07.01.2016 17:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCustomers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [nvarchar](250) NOT NULL,
	[customer_address] [nchar](250) NOT NULL,
	[customer_phone_1] [nchar](12) NULL,
	[customer_phone_2] [nchar](12) NULL,
 CONSTRAINT [PK_tCustomers] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tProducts]    Script Date: 07.01.2016 17:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProducts](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nchar](200) NOT NULL,
	[product_cost] [money] NOT NULL,
	[product_quantity] [int] NOT NULL,
	[product_notes] [nchar](500) NULL,
 CONSTRAINT [PK_tProducts] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tPurchases]    Script Date: 07.01.2016 17:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPurchases](
	[purchase_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_tPurchases] PRIMARY KEY CLUSTERED 
(
	[purchase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tCustomers] ON 

INSERT [dbo].[tCustomers] ([customer_id], [customer_name], [customer_address], [customer_phone_1], [customer_phone_2]) VALUES (1, N'Vasiy Butov', N'Kharkov, st. Victory                                                                                                                                                                                                                                      ', N'099-1233-112', N'099-1233-111')
INSERT [dbo].[tCustomers] ([customer_id], [customer_name], [customer_address], [customer_phone_1], [customer_phone_2]) VALUES (2, N'Petr I', N'St. Piterburg, ave. Nevskiy                                                                                                                                                                                                                               ', N'099-1233-223', N'099-1233-222')
INSERT [dbo].[tCustomers] ([customer_id], [customer_name], [customer_address], [customer_phone_1], [customer_phone_2]) VALUES (3, N'Vasiliy Chepaev', N'Kharkov, st. Commanders                                                                                                                                                                                                                                   ', N'099-1233-334', N'099-1233-333')
INSERT [dbo].[tCustomers] ([customer_id], [customer_name], [customer_address], [customer_phone_1], [customer_phone_2]) VALUES (4, N'Cheburator Vishnevetskiy', N'Kharkov, st. Lenina                                                                                                                                                                                                                                       ', N'099-1233-445', N'099-1233-444')
INSERT [dbo].[tCustomers] ([customer_id], [customer_name], [customer_address], [customer_phone_1], [customer_phone_2]) VALUES (5, N'Stepan Novoselov', N'Kharkov, st. Karamzina                                                                                                                                                                                                                                    ', N'099-1233-556', N'099-1233-555')
INSERT [dbo].[tCustomers] ([customer_id], [customer_name], [customer_address], [customer_phone_1], [customer_phone_2]) VALUES (6, N'Fedot Strelec', N'Kharkov, st. Freedom                                                                                                                                                                                                                                      ', N'099-1233-667', N'099-1233-666')
SET IDENTITY_INSERT [dbo].[tCustomers] OFF
SET IDENTITY_INSERT [dbo].[tProducts] ON 

INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (1, N'monitor                                                                                                                                                                                                 ', 1000.0000, 10, N'It is good monitor.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (2, N'monitor                                                                                                                                                                                                 ', 7500.0000, 5, N'It is normal monitor.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (3, N'monitor                                                                                                                                                                                                 ', 500.0000, 3, N'It is bad monitor.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (4, N'keyboard                                                                                                                                                                                                ', 300.0000, 20, N'It is good keyboard.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (5, N'keyboard                                                                                                                                                                                                ', 200.0000, 10, N'It is normal keyboard.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (6, N'keyboard                                                                                                                                                                                                ', 100.0000, 5, N'It is bad keyboard.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (7, N'CPU                                                                                                                                                                                                     ', 3000.0000, 15, N'It is good CPU.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (8, N'CPU                                                                                                                                                                                                     ', 2000.0000, 10, N'It is normal CPU.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (9, N'CPU                                                                                                                                                                                                     ', 1500.0000, 5, N'It is bad CPU.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (10, N'GPU                                                                                                                                                                                                     ', 1200.0000, 30, N'It is good GPU.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (11, N'GPU                                                                                                                                                                                                     ', 800.0000, 20, N'It is normal GPU.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
INSERT [dbo].[tProducts] ([product_id], [product_name], [product_cost], [product_quantity], [product_notes]) VALUES (12, N'GPU                                                                                                                                                                                                     ', 500.0000, 10, N'It is bad GPU.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ')
SET IDENTITY_INSERT [dbo].[tProducts] OFF
SET IDENTITY_INSERT [dbo].[tPurchases] ON 

INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (1, 1, 1, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (2, 2, 2, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (3, 3, 3, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (4, 4, 4, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (5, 5, 5, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (6, 6, 6, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (7, 1, 7, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (8, 2, 8, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (9, 3, 9, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (10, 4, 10, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (11, 5, 11, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (12, 6, 12, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (13, 1, 1, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (14, 2, 2, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (15, 3, 3, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (16, 4, 4, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (17, 5, 5, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (18, 6, 6, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (19, 1, 7, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (20, 2, 7, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (21, 3, 10, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
INSERT [dbo].[tPurchases] ([purchase_id], [customer_id], [product_id], [quantity], [date]) VALUES (22, 4, 1, 1, CAST(N'2014-01-16 18:58:18.680' AS DateTime))
SET IDENTITY_INSERT [dbo].[tPurchases] OFF
ALTER TABLE [dbo].[tPurchases]  WITH CHECK ADD  CONSTRAINT [FK_tPurchases_tCustomers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[tCustomers] ([customer_id])
GO
ALTER TABLE [dbo].[tPurchases] CHECK CONSTRAINT [FK_tPurchases_tCustomers]
GO
ALTER TABLE [dbo].[tPurchases]  WITH CHECK ADD  CONSTRAINT [FK_tPurchases_tProducts] FOREIGN KEY([product_id])
REFERENCES [dbo].[tProducts] ([product_id])
GO
ALTER TABLE [dbo].[tPurchases] CHECK CONSTRAINT [FK_tPurchases_tProducts]
GO
/****** Object:  StoredProcedure [dbo].[GetCustomersByCustomerName]    Script Date: 07.01.2016 17:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Levin Alexey
-- Create date: 2015.09.26
-- Description:	Procedure returns table of customers for some Customer Name.
-- =============================================
CREATE PROCEDURE [dbo].[GetCustomersByCustomerName]	
	@CustomerName nvarchar(250)	
AS
BEGIN
	SELECT [customer_id], [customer_name], [customer_address], [customer_phone_1], [customer_phone_2]
	FROM [dbo].[tCustomers] AS C
	WHERE C.[customer_name] = @CustomerName
END


GO
USE [master]
GO
ALTER DATABASE [TestApplication] SET  READ_WRITE 
GO

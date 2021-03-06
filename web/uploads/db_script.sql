CREATE DATABASE [DbCinemaOL]
GO
USE [DbCinemaOL]
GO
/****** Object:  Table [dbo].[ShowInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShowInfo](
	[Show_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Show_Date] [smalldatetime] NULL,
	[Show_StartTime] [varchar](50) NULL,
	[Movie_Name] [varchar](50) NULL,
	[Hall_No] [numeric](18, 0) NULL,
 CONSTRAINT [PK_ShowInfo] PRIMARY KEY CLUSTERED 
(
	[Show_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ShowInfo] ON
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'11:00 AM', N'KAHAANI', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'02:30 PM', N'KAHAANI', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'06:00 PM', N'KAHAANI', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'09:30 PM', N'KAHAANI', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'02:30 PM', N'HOUSEFULL 2', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'06:00 PM', N'HOUSEFULL 2', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'09:30 PM', N'HOUSEFULL 2', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(0xA0330000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(27 AS Numeric(18, 0)), CAST(0xA0330000 AS SmallDateTime), N'02:30 PM', N'HOUSEFULL 2', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(0xA0330000 AS SmallDateTime), N'06:00 PM', N'HOUSEFULL 2', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(0xA0330000 AS SmallDateTime), N'09:30 PM', N'HOUSEFULL 2', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(0xA0320000 AS SmallDateTime), N'09:30 PM', N'PAAN SINGH TOMAR', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(0xA0360000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'11:00 AM', N'DARK SHADOWS', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(34 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'02:30 PM', N'DARK SHADOWS', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(35 AS Numeric(18, 0)), CAST(0xA2280000 AS SmallDateTime), N'11:00 AM', N'LUTERA', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(36 AS Numeric(18, 0)), CAST(0xA22F0000 AS SmallDateTime), N'11:00 AM', N'KAHAANI', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(37 AS Numeric(18, 0)), CAST(0xA2300000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(38 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'11:00 AM', N'KAHAANI', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(39 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'02:30 PM', N'KAHAANI', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(40 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', N'LUTERA', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(42 AS Numeric(18, 0)), CAST(0xA2490000 AS SmallDateTime), N'09:30 PM', N'HOUSEFULL 2', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(44 AS Numeric(18, 0)), CAST(0xA2420000 AS SmallDateTime), N'11:00 AM', N'KAHAANI', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(45 AS Numeric(18, 0)), CAST(0xA2570000 AS SmallDateTime), N'11:00 AM', N'KAHAANI', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(46 AS Numeric(18, 0)), CAST(0xA2660000 AS SmallDateTime), N'02:30 PM', N'HOUSEFULL 2', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(47 AS Numeric(18, 0)), CAST(0xA2680000 AS SmallDateTime), N'09:30 PM', N'LUTERA', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(48 AS Numeric(18, 0)), CAST(0xA2670000 AS SmallDateTime), N'02:30 PM', N'LUTERA', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(49 AS Numeric(18, 0)), CAST(0xA2680000 AS SmallDateTime), N'02:30 PM', N'KAHAANI', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(50 AS Numeric(18, 0)), CAST(0xA2770000 AS SmallDateTime), N'11:00 AM', N'KAHAANI', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(51 AS Numeric(18, 0)), CAST(0xA2A50000 AS SmallDateTime), N'11:00 AM', N'KAHAANI', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(52 AS Numeric(18, 0)), CAST(0xA2A40000 AS SmallDateTime), N'09:30 PM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(53 AS Numeric(18, 0)), CAST(0xA2C40000 AS SmallDateTime), N'09:30 PM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(54 AS Numeric(18, 0)), CAST(0xA2E00000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(55 AS Numeric(18, 0)), CAST(0xA2EE0000 AS SmallDateTime), N'11:00 AM', N'KAHAANI', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(56 AS Numeric(18, 0)), CAST(0xA2FD0000 AS SmallDateTime), N'11:00 AM', N'KAHAANI', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(57 AS Numeric(18, 0)), CAST(0xA31D0000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(58 AS Numeric(18, 0)), CAST(0xA31D0000 AS SmallDateTime), N'02:30 PM', N'UPCOMMING 001', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(59 AS Numeric(18, 0)), CAST(0xA33B0000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(60 AS Numeric(18, 0)), CAST(0xA3320000 AS SmallDateTime), N'02:30 PM', N'UPCOMMING 001', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(61 AS Numeric(18, 0)), CAST(0xA3560000 AS SmallDateTime), N'02:30 PM', N'UPCOMMING 001', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(62 AS Numeric(18, 0)), CAST(0xA35A0000 AS SmallDateTime), N'09:30 PM', N'New Running Movie', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(63 AS Numeric(18, 0)), CAST(0xA34D0000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(64 AS Numeric(18, 0)), CAST(0xA38D0000 AS SmallDateTime), N'11:00 AM', N'Ek Villen', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(65 AS Numeric(18, 0)), CAST(0xA3B10000 AS SmallDateTime), N'02:30 PM', N'New Running Movie', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(66 AS Numeric(18, 0)), CAST(0xA3AA0000 AS SmallDateTime), N'11:00 AM', N'New Running Movie', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(67 AS Numeric(18, 0)), CAST(0xA4300000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(68 AS Numeric(18, 0)), CAST(0xA44D0000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(69 AS Numeric(18, 0)), CAST(0xA48A0000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(70 AS Numeric(18, 0)), CAST(0xA4E60000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(71 AS Numeric(18, 0)), CAST(0xA4EB0000 AS SmallDateTime), N'06:00 PM', N'Ek Villen', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(72 AS Numeric(18, 0)), CAST(0xA5CB0000 AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(73 AS Numeric(18, 0)), CAST(0xA62D0000 AS SmallDateTime), N'11:00 AM', N'AIR LIFT', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(10073 AS Numeric(18, 0)), CAST(0xA75302AE AS SmallDateTime), N'02:30 PM', N'New Running Movie', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(10074 AS Numeric(18, 0)), CAST(0xA75302AE AS SmallDateTime), N'02:30 PM', N'Ek Villen', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(20073 AS Numeric(18, 0)), CAST(0xA75302AE AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(30073 AS Numeric(18, 0)), CAST(0xA75302AE AS SmallDateTime), N'11:00 AM', N'HOUSEFULL 2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(30074 AS Numeric(18, 0)), CAST(0xA7470000 AS SmallDateTime), N'06:00 PM', N'AIR LIFT', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(30075 AS Numeric(18, 0)), CAST(0xA7470000 AS SmallDateTime), N'06:00 PM', N'Udta Punjab', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(30076 AS Numeric(18, 0)), CAST(0xA7630000 AS SmallDateTime), N'02:30 PM', N'New Running Movie', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[ShowInfo] ([Show_Id], [Show_Date], [Show_StartTime], [Movie_Name], [Hall_No]) VALUES (CAST(30077 AS Numeric(18, 0)), CAST(0xA73A0000 AS SmallDateTime), N'02:30 PM', N'AIR LIFT', CAST(1 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[ShowInfo] OFF
/****** Object:  Table [dbo].[StateInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StateInfo](
	[State_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[State_Name] [varchar](50) NULL,
 CONSTRAINT [PK_StateInfo] PRIMARY KEY CLUSTERED 
(
	[State_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[StateInfo] ON
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(1 AS Numeric(18, 0)), N'Andhra Pradesh')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(2 AS Numeric(18, 0)), N'Arunachal Pradesh')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(3 AS Numeric(18, 0)), N'Assam')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(4 AS Numeric(18, 0)), N'Bihar')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(5 AS Numeric(18, 0)), N'Chhattisgarh')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(6 AS Numeric(18, 0)), N'Goa')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(7 AS Numeric(18, 0)), N'Gujarat')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(8 AS Numeric(18, 0)), N'Haryana')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(9 AS Numeric(18, 0)), N'Himachal Pradesh')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(10 AS Numeric(18, 0)), N'Jammu and Kashmir')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(11 AS Numeric(18, 0)), N'Jharkhand')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(12 AS Numeric(18, 0)), N'Karnataka')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(13 AS Numeric(18, 0)), N'Kerala')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(14 AS Numeric(18, 0)), N'Madhya Pradesh')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(15 AS Numeric(18, 0)), N'Maharashtra')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(16 AS Numeric(18, 0)), N'Manipur')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(17 AS Numeric(18, 0)), N'Meghalaya')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(18 AS Numeric(18, 0)), N'Mizoram')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(19 AS Numeric(18, 0)), N'Nagaland')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(20 AS Numeric(18, 0)), N'Orissa')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(21 AS Numeric(18, 0)), N'Punjab')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(22 AS Numeric(18, 0)), N'Rajasthan')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(23 AS Numeric(18, 0)), N'Sikkim')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(24 AS Numeric(18, 0)), N'Tamil Nadu')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(25 AS Numeric(18, 0)), N'Tripura')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(26 AS Numeric(18, 0)), N'Uttar Pradesh')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(27 AS Numeric(18, 0)), N'Uttarakhand')
INSERT [dbo].[StateInfo] ([State_Id], [State_Name]) VALUES (CAST(28 AS Numeric(18, 0)), N'West Bengal')
SET IDENTITY_INSERT [dbo].[StateInfo] OFF
/****** Object:  Table [dbo].[HallInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HallInfo](
	[Hall_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Hall_No] [varchar](50) NULL,
	[Hall_Capacity] [numeric](18, 0) NULL,
 CONSTRAINT [PK_HallInfo] PRIMARY KEY CLUSTERED 
(
	[Hall_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HallInfo] ON
INSERT [dbo].[HallInfo] ([Hall_Id], [Hall_No], [Hall_Capacity]) VALUES (CAST(1 AS Numeric(18, 0)), N'HE01', CAST(90 AS Numeric(18, 0)))
INSERT [dbo].[HallInfo] ([Hall_Id], [Hall_No], [Hall_Capacity]) VALUES (CAST(2 AS Numeric(18, 0)), N'BH01', CAST(90 AS Numeric(18, 0)))
INSERT [dbo].[HallInfo] ([Hall_Id], [Hall_No], [Hall_Capacity]) VALUES (CAST(3 AS Numeric(18, 0)), N'HH01', CAST(90 AS Numeric(18, 0)))
INSERT [dbo].[HallInfo] ([Hall_Id], [Hall_No], [Hall_Capacity]) VALUES (CAST(4 AS Numeric(18, 0)), N'OH01', CAST(90 AS Numeric(18, 0)))
INSERT [dbo].[HallInfo] ([Hall_Id], [Hall_No], [Hall_Capacity]) VALUES (CAST(5 AS Numeric(18, 0)), N'OE01', CAST(90 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[HallInfo] OFF
/****** Object:  Table [dbo].[MovieIndustryInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieIndustryInfo](
	[Industry_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Industry_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MovieIndustryInfo] PRIMARY KEY CLUSTERED 
(
	[Industry_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MovieIndustryInfo] ON
INSERT [dbo].[MovieIndustryInfo] ([Industry_id], [Industry_Name]) VALUES (CAST(1 AS Numeric(18, 0)), N'HOLLYWOOD')
INSERT [dbo].[MovieIndustryInfo] ([Industry_id], [Industry_Name]) VALUES (CAST(2 AS Numeric(18, 0)), N'BOLLYWOOD')
SET IDENTITY_INSERT [dbo].[MovieIndustryInfo] OFF
/****** Object:  Table [dbo].[TimingInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimingInfo](
	[Time_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Time_StartTime] [varchar](50) NULL,
 CONSTRAINT [PK_TimingInfo] PRIMARY KEY CLUSTERED 
(
	[Time_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TimingInfo] ON
INSERT [dbo].[TimingInfo] ([Time_Id], [Time_StartTime]) VALUES (CAST(1 AS Numeric(18, 0)), N'11:00 AM')
INSERT [dbo].[TimingInfo] ([Time_Id], [Time_StartTime]) VALUES (CAST(2 AS Numeric(18, 0)), N'02:30 PM')
INSERT [dbo].[TimingInfo] ([Time_Id], [Time_StartTime]) VALUES (CAST(3 AS Numeric(18, 0)), N'06:00 PM')
INSERT [dbo].[TimingInfo] ([Time_Id], [Time_StartTime]) VALUES (CAST(4 AS Numeric(18, 0)), N'09:30 PM')
SET IDENTITY_INSERT [dbo].[TimingInfo] OFF
/****** Object:  Table [dbo].[UserInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[User_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[User_LoginName] [varchar](50) NULL,
	[User_LoginPassword] [varchar](50) NULL,
	[User_Email] [varchar](50) NULL,
	[User_MobileNo] [numeric](10, 0) NULL,
	[User_FName] [varchar](50) NULL,
	[User_LName] [varchar](50) NULL,
	[User_Add] [varchar](100) NULL,
	[User_City] [varchar](50) NULL,
	[User_State] [varchar](50) NULL,
	[User_SQ] [varchar](50) NULL,
	[User_SA] [varchar](50) NULL,
	[User_Type] [varchar](50) NULL,
	[User_IsActive] [bit] NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(12 AS Numeric(18, 0)), N'ADMIN', N'admin', N'cinemaol.asct@gmail.com', CAST(8109579945 AS Numeric(10, 0)), N'MP ADMIN', N'CHAUHAN', N'INDRAPURI BHEL,', N'BHOPAL', N'MADHYA PRADESH', N'SQ', N'SA', N'ADMIN', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(13 AS Numeric(18, 0)), N'ADMIN', N'admin', N'cinemaol.asct@gmail.com', CAST(8802524849 AS Numeric(10, 0)), N'MATA PRASADX', N'CHAUHANX', N'INDRAPURI,BHEL', N'BHOPAL', N'MADHYA PRADESH', N'SQ', N'SA', N'USER', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(14 AS Numeric(18, 0)), N'MATA_PD', N'12345', N'mataprasad045@gmail.com', CAST(8109579945 AS Numeric(10, 0)), N'MATA PRASAD', N'CHAUHAN', N'INDRAPURI, BHEL', N'BHOPAL', N'MADHYA PRADESH', N'SQ', N'SA', N'USER', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(16 AS Numeric(18, 0)), N'ASHISH', N'12345', NULL, NULL, N'ASHISH', N'GUPTA', N'ARERA COLONY, BHOPAL', N'BHOPAL', N'MADHYA PRADESH', N'SQ', N'SA', N'USER', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(17 AS Numeric(18, 0)), N'MANO', N'12345', NULL, NULL, N'MANORANJAN', N'KUMAR', N'INDRAPURI, BHEL', N'BHOPAL', N'MADHYA PRADESH', N'SQ', N'SA', N'USER', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(18 AS Numeric(18, 0)), N'WASHI', N'12345', NULL, NULL, N'AHTISHAM', N'WASHI', N'BHOPAL', N'BHOPAL', N'MADHYA PRADESH', N'SQ', N'SA', N'USER', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(19 AS Numeric(18, 0)), N'MP045', N'admin', N'mail@mail.in', CAST(8802524849 AS Numeric(10, 0)), N'MATA PRASAD', N'CHAUHAN', N'STREET NO-2, MAMOORA NOIDA-66', N'NOIDA', N'UTTAR PRADESH', N'SA', N'SQ', N'USER', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(20 AS Numeric(18, 0)), N'A', N'aa', N'er.deepaksachan@gmail.com', CAST(5678567 AS Numeric(10, 0)), N'DEEPAK', N'A', N'FGHFGH, VJVGH', N'GFGF', N'UTTAR PRADESH', N'GDFGD', N'GHFGH', N'USER', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(21 AS Numeric(18, 0)), N'MATA009', N'admin', N'mail@in.com', CAST(12 AS Numeric(10, 0)), N'MATA009', N'', N', ', N'NOIDA', N'UTTAR PRADESH', N'SA', N'SA', N'USER', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(22 AS Numeric(18, 0)), N'vp', N'vp', N'mail@vp.in', CAST(1234567890 AS Numeric(10, 0)), N'Vinay', N'Pandey', N'REWA   MP', N'REWA', N'MADHYA PRADESH', N'mata', N'rewama', N'USER', 1)
INSERT [dbo].[UserInfo] ([User_Id], [User_LoginName], [User_LoginPassword], [User_Email], [User_MobileNo], [User_FName], [User_LName], [User_Add], [User_City], [User_State], [User_SQ], [User_SA], [User_Type], [User_IsActive]) VALUES (CAST(23 AS Numeric(18, 0)), N'pd', N'12345', N'gfjhg', CAST(11222 AS Numeric(10, 0)), N'MATA', N'PD', N'mm ', N'mm', N'NAGALAND', N'sa', N'sa', N'USER', 1)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Table [dbo].[MovieLanguageInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovieLanguageInfo](
	[Language_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Language_Name] [varchar](50) NULL,
 CONSTRAINT [PK_MovieLanguageInfo] PRIMARY KEY CLUSTERED 
(
	[Language_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MovieLanguageInfo] ON
INSERT [dbo].[MovieLanguageInfo] ([Language_Id], [Language_Name]) VALUES (CAST(1 AS Numeric(18, 0)), N'HINDI')
INSERT [dbo].[MovieLanguageInfo] ([Language_Id], [Language_Name]) VALUES (CAST(2 AS Numeric(18, 0)), N'ENGLISH')
INSERT [dbo].[MovieLanguageInfo] ([Language_Id], [Language_Name]) VALUES (CAST(3 AS Numeric(18, 0)), N'TAMIL')
SET IDENTITY_INSERT [dbo].[MovieLanguageInfo] OFF
/****** Object:  Table [dbo].[MovieStatusInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovieStatusInfo](
	[MovieStatus_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[MovieStatus_Value] [varchar](50) NULL,
 CONSTRAINT [PK_MovieStatusInfo] PRIMARY KEY CLUSTERED 
(
	[MovieStatus_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MovieStatusInfo] ON
INSERT [dbo].[MovieStatusInfo] ([MovieStatus_Id], [MovieStatus_Value]) VALUES (CAST(1 AS Numeric(18, 0)), N'RUNNING')
INSERT [dbo].[MovieStatusInfo] ([MovieStatus_Id], [MovieStatus_Value]) VALUES (CAST(2 AS Numeric(18, 0)), N'UPCOMMING')
INSERT [dbo].[MovieStatusInfo] ([MovieStatus_Id], [MovieStatus_Value]) VALUES (CAST(3 AS Numeric(18, 0)), N'CLOSED')
SET IDENTITY_INSERT [dbo].[MovieStatusInfo] OFF
/****** Object:  Table [dbo].[SheatType]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SheatType](
	[SheatType_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[SheatType_Value] [varchar](50) NULL,
	[SheatType_Cost] [numeric](18, 0) NULL,
 CONSTRAINT [PK_SheatType] PRIMARY KEY CLUSTERED 
(
	[SheatType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SheatType] ON
INSERT [dbo].[SheatType] ([SheatType_Id], [SheatType_Value], [SheatType_Cost]) VALUES (CAST(1 AS Numeric(18, 0)), N'SILVER', CAST(100 AS Numeric(18, 0)))
INSERT [dbo].[SheatType] ([SheatType_Id], [SheatType_Value], [SheatType_Cost]) VALUES (CAST(2 AS Numeric(18, 0)), N'GOLD', CAST(175 AS Numeric(18, 0)))
INSERT [dbo].[SheatType] ([SheatType_Id], [SheatType_Value], [SheatType_Cost]) VALUES (CAST(3 AS Numeric(18, 0)), N'PLETINUM', CAST(225 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[SheatType] OFF
/****** Object:  Table [dbo].[TicketInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TicketInfo](
	[Ticket_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Ticket_No] [numeric](18, 0) NULL,
	[User_Id] [numeric](18, 0) NULL,
	[Show_Date] [smalldatetime] NULL,
	[Show_Time] [varchar](50) NULL,
	[Show_Id] [numeric](18, 0) NULL,
	[Ticket_Amount] [numeric](5, 0) NULL,
	[IsPaid] [bit] NULL,
	[Sheats_Count] [numeric](18, 0) NULL,
	[Booking_Date] [smalldatetime] NULL,
 CONSTRAINT [PK_TicketInfo] PRIMARY KEY CLUSTERED 
(
	[Ticket_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TicketInfo] ON
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0330000 AS SmallDateTime), N'11:00 AM', CAST(26 AS Numeric(18, 0)), CAST(525 AS Numeric(5, 0)), 0, CAST(3 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(1001 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'11:00 AM', CAST(22 AS Numeric(18, 0)), CAST(1125 AS Numeric(5, 0)), 0, CAST(5 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(1002 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'09:30 PM', CAST(25 AS Numeric(18, 0)), CAST(300 AS Numeric(5, 0)), 0, CAST(3 AS Numeric(18, 0)), CAST(0xA02D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(1003 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'11:00 AM', CAST(18 AS Numeric(18, 0)), CAST(500 AS Numeric(5, 0)), 0, CAST(5 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(1004 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'06:00 PM', CAST(20 AS Numeric(18, 0)), CAST(1000 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(1005 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0320000 AS SmallDateTime), N'09:30 PM', CAST(30 AS Numeric(18, 0)), CAST(300 AS Numeric(5, 0)), 0, CAST(3 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(1006 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'06:00 PM', CAST(20 AS Numeric(18, 0)), CAST(875 AS Numeric(5, 0)), 0, CAST(5 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(1007 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0320000 AS SmallDateTime), N'09:30 PM', CAST(30 AS Numeric(18, 0)), CAST(1125 AS Numeric(5, 0)), 0, CAST(5 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(1008 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'02:30 PM', CAST(19 AS Numeric(18, 0)), CAST(200 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(1009 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0320000 AS SmallDateTime), N'09:30 PM', CAST(30 AS Numeric(18, 0)), CAST(350 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(1010 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime), N'09:30 PM', CAST(21 AS Numeric(18, 0)), CAST(175 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA0310000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(1011 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0360000 AS SmallDateTime), N'11:00 AM', CAST(31 AS Numeric(18, 0)), CAST(600 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(1012 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0360000 AS SmallDateTime), N'11:00 AM', CAST(31 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(1013 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0360000 AS SmallDateTime), N'11:00 AM', CAST(31 AS Numeric(18, 0)), CAST(225 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(27 AS Numeric(18, 0)), CAST(1014 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA0360000 AS SmallDateTime), N'11:00 AM', CAST(31 AS Numeric(18, 0)), CAST(1050 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(1015 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'11:00 AM', CAST(32 AS Numeric(18, 0)), CAST(450 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA0340000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(1016 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(0xA0360000 AS SmallDateTime), N'11:00 AM', CAST(31 AS Numeric(18, 0)), CAST(225 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA0350000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(1017 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'11:00 AM', CAST(32 AS Numeric(18, 0)), CAST(200 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA03D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(1018 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'11:00 AM', CAST(32 AS Numeric(18, 0)), CAST(500 AS Numeric(5, 0)), 0, CAST(3 AS Numeric(18, 0)), CAST(0xA03D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(1019 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'11:00 AM', CAST(32 AS Numeric(18, 0)), CAST(175 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA03E0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(1020 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'02:30 PM', CAST(34 AS Numeric(18, 0)), CAST(350 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA0400000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(34 AS Numeric(18, 0)), CAST(1021 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'11:00 AM', CAST(32 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA0400000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(35 AS Numeric(18, 0)), CAST(1022 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'11:00 AM', CAST(33 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA0400000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(36 AS Numeric(18, 0)), CAST(1023 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(0xA04D0000 AS SmallDateTime), N'11:00 AM', CAST(32 AS Numeric(18, 0)), CAST(175 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA0400000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(37 AS Numeric(18, 0)), CAST(1024 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(825 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(38 AS Numeric(18, 0)), CAST(1025 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'02:30 PM', CAST(39 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(39 AS Numeric(18, 0)), CAST(1026 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'02:30 PM', CAST(39 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(40 AS Numeric(18, 0)), CAST(1027 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'02:30 PM', CAST(39 AS Numeric(18, 0)), CAST(500 AS Numeric(5, 0)), 0, CAST(3 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(41 AS Numeric(18, 0)), CAST(1028 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'02:30 PM', CAST(39 AS Numeric(18, 0)), CAST(350 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(42 AS Numeric(18, 0)), CAST(1029 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'02:30 PM', CAST(39 AS Numeric(18, 0)), CAST(200 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(43 AS Numeric(18, 0)), CAST(1030 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(44 AS Numeric(18, 0)), CAST(1031 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(45 AS Numeric(18, 0)), CAST(1032 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(46 AS Numeric(18, 0)), CAST(1033 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(47 AS Numeric(18, 0)), CAST(1034 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(48 AS Numeric(18, 0)), CAST(1035 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(175 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(49 AS Numeric(18, 0)), CAST(1036 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'02:30 PM', CAST(39 AS Numeric(18, 0)), CAST(175 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(50 AS Numeric(18, 0)), CAST(1037 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'02:30 PM', CAST(39 AS Numeric(18, 0)), CAST(175 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(51 AS Numeric(18, 0)), CAST(1038 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0xA23C0000 AS SmallDateTime), N'11:00 AM', CAST(38 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(52 AS Numeric(18, 0)), CAST(1039 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(225 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(53 AS Numeric(18, 0)), CAST(1040 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(175 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(54 AS Numeric(18, 0)), CAST(1041 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2490000 AS SmallDateTime), N'09:30 PM', CAST(42 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2330000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(55 AS Numeric(18, 0)), CAST(1042 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2520000 AS SmallDateTime), N'06:00 PM', CAST(40 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2470000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(56 AS Numeric(18, 0)), CAST(1043 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2660000 AS SmallDateTime), N'02:30 PM', CAST(46 AS Numeric(18, 0)), CAST(825 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA2590000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(57 AS Numeric(18, 0)), CAST(1044 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2660000 AS SmallDateTime), N'02:30 PM', CAST(46 AS Numeric(18, 0)), CAST(625 AS Numeric(5, 0)), 0, CAST(4 AS Numeric(18, 0)), CAST(0xA2590000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(58 AS Numeric(18, 0)), CAST(1045 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2660000 AS SmallDateTime), N'02:30 PM', CAST(46 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2590000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(59 AS Numeric(18, 0)), CAST(1046 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2660000 AS SmallDateTime), N'02:30 PM', CAST(46 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2590000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(60 AS Numeric(18, 0)), CAST(1047 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2680000 AS SmallDateTime), N'09:30 PM', CAST(47 AS Numeric(18, 0)), CAST(200 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA2590000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(61 AS Numeric(18, 0)), CAST(1048 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2660000 AS SmallDateTime), N'02:30 PM', CAST(46 AS Numeric(18, 0)), CAST(450 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA25D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(62 AS Numeric(18, 0)), CAST(1049 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2660000 AS SmallDateTime), N'02:30 PM', CAST(46 AS Numeric(18, 0)), CAST(425 AS Numeric(5, 0)), 0, CAST(3 AS Numeric(18, 0)), CAST(0xA25D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(63 AS Numeric(18, 0)), CAST(1050 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2660000 AS SmallDateTime), N'02:30 PM', CAST(46 AS Numeric(18, 0)), CAST(1050 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA25D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(64 AS Numeric(18, 0)), CAST(1051 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2660000 AS SmallDateTime), N'02:30 PM', CAST(46 AS Numeric(18, 0)), CAST(175 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA25D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(65 AS Numeric(18, 0)), CAST(1052 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2670000 AS SmallDateTime), N'02:30 PM', CAST(48 AS Numeric(18, 0)), CAST(875 AS Numeric(5, 0)), 0, CAST(5 AS Numeric(18, 0)), CAST(0xA25D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(66 AS Numeric(18, 0)), CAST(1053 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0xA2770000 AS SmallDateTime), N'11:00 AM', CAST(50 AS Numeric(18, 0)), CAST(600 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA26D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(67 AS Numeric(18, 0)), CAST(1054 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2C40000 AS SmallDateTime), N'09:30 PM', CAST(53 AS Numeric(18, 0)), CAST(500 AS Numeric(5, 0)), 0, CAST(5 AS Numeric(18, 0)), CAST(0xA2A60000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(68 AS Numeric(18, 0)), CAST(1055 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2E00000 AS SmallDateTime), N'11:00 AM', CAST(54 AS Numeric(18, 0)), CAST(675 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA2D70000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(69 AS Numeric(18, 0)), CAST(1056 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2FD0000 AS SmallDateTime), N'11:00 AM', CAST(56 AS Numeric(18, 0)), CAST(600 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA2EE0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(70 AS Numeric(18, 0)), CAST(1057 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2FD0000 AS SmallDateTime), N'11:00 AM', CAST(56 AS Numeric(18, 0)), CAST(700 AS Numeric(5, 0)), 0, CAST(4 AS Numeric(18, 0)), CAST(0xA2EE0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(71 AS Numeric(18, 0)), CAST(1058 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA2FD0000 AS SmallDateTime), N'11:00 AM', CAST(56 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA2EE0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(72 AS Numeric(18, 0)), CAST(1059 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA33B0000 AS SmallDateTime), N'11:00 AM', CAST(59 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA3380000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(73 AS Numeric(18, 0)), CAST(1060 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA34D0000 AS SmallDateTime), N'11:00 AM', CAST(63 AS Numeric(18, 0)), CAST(500 AS Numeric(5, 0)), 0, CAST(3 AS Numeric(18, 0)), CAST(0xA33D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(74 AS Numeric(18, 0)), CAST(1061 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA34D0000 AS SmallDateTime), N'11:00 AM', CAST(63 AS Numeric(18, 0)), CAST(225 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA33D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(75 AS Numeric(18, 0)), CAST(1062 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0xA38D0000 AS SmallDateTime), N'11:00 AM', CAST(64 AS Numeric(18, 0)), CAST(675 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA37C0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(76 AS Numeric(18, 0)), CAST(1063 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA3B10000 AS SmallDateTime), N'02:30 PM', CAST(65 AS Numeric(18, 0)), CAST(200 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA3A20000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(77 AS Numeric(18, 0)), CAST(1064 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA4300000 AS SmallDateTime), N'11:00 AM', CAST(67 AS Numeric(18, 0)), CAST(825 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA42C0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(78 AS Numeric(18, 0)), CAST(1065 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA44D0000 AS SmallDateTime), N'11:00 AM', CAST(68 AS Numeric(18, 0)), CAST(825 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA43E0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(79 AS Numeric(18, 0)), CAST(1066 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0xA48A0000 AS SmallDateTime), N'11:00 AM', CAST(69 AS Numeric(18, 0)), CAST(600 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA47D0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(80 AS Numeric(18, 0)), CAST(1067 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA4EB0000 AS SmallDateTime), N'06:00 PM', CAST(71 AS Numeric(18, 0)), CAST(200 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA4E00000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(81 AS Numeric(18, 0)), CAST(1068 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA4EB0000 AS SmallDateTime), N'06:00 PM', CAST(71 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA4E00000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(82 AS Numeric(18, 0)), CAST(1069 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA4EB0000 AS SmallDateTime), N'06:00 PM', CAST(71 AS Numeric(18, 0)), CAST(350 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA4E00000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(83 AS Numeric(18, 0)), CAST(1070 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA4EB0000 AS SmallDateTime), N'06:00 PM', CAST(71 AS Numeric(18, 0)), CAST(450 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA4E00000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(84 AS Numeric(18, 0)), CAST(1071 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA4EB0000 AS SmallDateTime), N'06:00 PM', CAST(71 AS Numeric(18, 0)), CAST(175 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA4E00000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(87 AS Numeric(18, 0)), CAST(1072 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA4EB0000 AS SmallDateTime), N'06:00 PM', CAST(71 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA4E00000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(88 AS Numeric(18, 0)), CAST(1073 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA4EB0000 AS SmallDateTime), N'06:00 PM', CAST(71 AS Numeric(18, 0)), CAST(275 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA4E00000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(90 AS Numeric(18, 0)), CAST(1074 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA4E60000 AS SmallDateTime), N'11:00 AM', CAST(70 AS Numeric(18, 0)), CAST(275 AS Numeric(5, 0)), 0, CAST(2 AS Numeric(18, 0)), CAST(0xA4E00000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(91 AS Numeric(18, 0)), CAST(1075 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA5CB0000 AS SmallDateTime), N'11:00 AM', CAST(72 AS Numeric(18, 0)), CAST(825 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA5C70000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(92 AS Numeric(18, 0)), CAST(1076 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0xA62D0000 AS SmallDateTime), N'11:00 AM', CAST(73 AS Numeric(18, 0)), CAST(1175 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA62A0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(93 AS Numeric(18, 0)), CAST(1077 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(0xA62D0000 AS SmallDateTime), N'11:00 AM', CAST(73 AS Numeric(18, 0)), CAST(100 AS Numeric(5, 0)), 0, CAST(1 AS Numeric(18, 0)), CAST(0xA62A0000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(10092 AS Numeric(18, 0)), CAST(1078 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0xA68C0000 AS SmallDateTime), N'11:00 AM', CAST(20073 AS Numeric(18, 0)), CAST(825 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA6760000 AS SmallDateTime))
INSERT [dbo].[TicketInfo] ([Ticket_Id], [Ticket_No], [User_Id], [Show_Date], [Show_Time], [Show_Id], [Ticket_Amount], [IsPaid], [Sheats_Count], [Booking_Date]) VALUES (CAST(20092 AS Numeric(18, 0)), CAST(1079 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(0xA7370000 AS SmallDateTime), N'11:00 AM', CAST(30073 AS Numeric(18, 0)), CAST(825 AS Numeric(5, 0)), 0, CAST(6 AS Numeric(18, 0)), CAST(0xA7260000 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[TicketInfo] OFF
/****** Object:  Table [dbo].[TicketDetail]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TicketDetail](
	[Td_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Ticket_id] [numeric](18, 0) NULL,
	[Sheat_No] [varchar](50) NULL,
	[Sheat_Cost] [numeric](5, 0) NULL,
	[Show_Id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_TicketDetail] PRIMARY KEY CLUSTERED 
(
	[Td_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TicketDetail] ON
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), N'E5', CAST(175 AS Numeric(5, 0)), CAST(26 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), N'E6', CAST(175 AS Numeric(5, 0)), CAST(26 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), N'E7', CAST(175 AS Numeric(5, 0)), CAST(26 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), N'H7', CAST(225 AS Numeric(5, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), N'H6', CAST(225 AS Numeric(5, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), N'H5', CAST(225 AS Numeric(5, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), N'H9', CAST(225 AS Numeric(5, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), N'H8', CAST(225 AS Numeric(5, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), N'A7', CAST(100 AS Numeric(5, 0)), CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(25 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(18 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(18 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'A9', CAST(100 AS Numeric(5, 0)), CAST(18 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(27 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'A8', CAST(100 AS Numeric(5, 0)), CAST(18 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), N'A7', CAST(100 AS Numeric(5, 0)), CAST(18 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), N'D6', CAST(175 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), N'G5', CAST(225 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), N'G6', CAST(225 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(34 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(35 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(36 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), N'A7', CAST(100 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(37 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(38 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), N'D1', CAST(175 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(39 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), N'D2', CAST(175 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(40 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), N'D3', CAST(175 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(41 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), N'D0', CAST(175 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(42 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), N'D4', CAST(175 AS Numeric(5, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(43 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), N'I7', CAST(225 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(44 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), N'I6', CAST(225 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(45 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), N'I5', CAST(225 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(46 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), N'I9', CAST(225 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(47 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), N'I8', CAST(225 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(48 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)), N'B6', CAST(100 AS Numeric(5, 0)), CAST(19 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(49 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(19 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(50 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), N'D1', CAST(175 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(51 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), N'D0', CAST(175 AS Numeric(5, 0)), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(52 AS Numeric(18, 0)), CAST(23 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(53 AS Numeric(18, 0)), CAST(24 AS Numeric(18, 0)), N'A7', CAST(100 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(54 AS Numeric(18, 0)), CAST(24 AS Numeric(18, 0)), N'B7', CAST(100 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(55 AS Numeric(18, 0)), CAST(24 AS Numeric(18, 0)), N'B6', CAST(100 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(56 AS Numeric(18, 0)), CAST(24 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(57 AS Numeric(18, 0)), CAST(24 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(58 AS Numeric(18, 0)), CAST(24 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(59 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), N'B4', CAST(100 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(60 AS Numeric(18, 0)), CAST(26 AS Numeric(18, 0)), N'G5', CAST(225 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(61 AS Numeric(18, 0)), CAST(27 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(62 AS Numeric(18, 0)), CAST(27 AS Numeric(18, 0)), N'D6', CAST(175 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(63 AS Numeric(18, 0)), CAST(27 AS Numeric(18, 0)), N'F5', CAST(175 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(64 AS Numeric(18, 0)), CAST(27 AS Numeric(18, 0)), N'F6', CAST(175 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(65 AS Numeric(18, 0)), CAST(27 AS Numeric(18, 0)), N'E5', CAST(175 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(66 AS Numeric(18, 0)), CAST(27 AS Numeric(18, 0)), N'F7', CAST(175 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(67 AS Numeric(18, 0)), CAST(28 AS Numeric(18, 0)), N'H5', CAST(225 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(68 AS Numeric(18, 0)), CAST(28 AS Numeric(18, 0)), N'G5', CAST(225 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(69 AS Numeric(18, 0)), CAST(29 AS Numeric(18, 0)), N'G3', CAST(225 AS Numeric(5, 0)), CAST(31 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(70 AS Numeric(18, 0)), CAST(30 AS Numeric(18, 0)), N'B8', CAST(100 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(71 AS Numeric(18, 0)), CAST(30 AS Numeric(18, 0)), N'C8', CAST(100 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(72 AS Numeric(18, 0)), CAST(31 AS Numeric(18, 0)), N'G7', CAST(225 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(73 AS Numeric(18, 0)), CAST(31 AS Numeric(18, 0)), N'A7', CAST(100 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(74 AS Numeric(18, 0)), CAST(31 AS Numeric(18, 0)), N'D7', CAST(175 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(75 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(76 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), N'D4', CAST(175 AS Numeric(5, 0)), CAST(34 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(77 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), N'E4', CAST(175 AS Numeric(5, 0)), CAST(34 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(78 AS Numeric(18, 0)), CAST(34 AS Numeric(18, 0)), N'A3', CAST(100 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(79 AS Numeric(18, 0)), CAST(35 AS Numeric(18, 0)), N'C7', CAST(100 AS Numeric(5, 0)), CAST(33 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(80 AS Numeric(18, 0)), CAST(36 AS Numeric(18, 0)), N'D4', CAST(175 AS Numeric(5, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(81 AS Numeric(18, 0)), CAST(37 AS Numeric(18, 0)), N'B9', CAST(100 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(82 AS Numeric(18, 0)), CAST(37 AS Numeric(18, 0)), N'C9', CAST(100 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(83 AS Numeric(18, 0)), CAST(37 AS Numeric(18, 0)), N'D9', CAST(175 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(84 AS Numeric(18, 0)), CAST(37 AS Numeric(18, 0)), N'E9', CAST(175 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(85 AS Numeric(18, 0)), CAST(37 AS Numeric(18, 0)), N'F9', CAST(175 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(86 AS Numeric(18, 0)), CAST(37 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(87 AS Numeric(18, 0)), CAST(38 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(88 AS Numeric(18, 0)), CAST(39 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(89 AS Numeric(18, 0)), CAST(40 AS Numeric(18, 0)), N'A8', CAST(100 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(90 AS Numeric(18, 0)), CAST(40 AS Numeric(18, 0)), N'D8', CAST(175 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(91 AS Numeric(18, 0)), CAST(40 AS Numeric(18, 0)), N'G8', CAST(225 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(92 AS Numeric(18, 0)), CAST(41 AS Numeric(18, 0)), N'D1', CAST(175 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(93 AS Numeric(18, 0)), CAST(41 AS Numeric(18, 0)), N'E1', CAST(175 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(94 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), N'A2', CAST(100 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(95 AS Numeric(18, 0)), CAST(42 AS Numeric(18, 0)), N'B2', CAST(100 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(96 AS Numeric(18, 0)), CAST(43 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(97 AS Numeric(18, 0)), CAST(44 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(98 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(99 AS Numeric(18, 0)), CAST(46 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(100 AS Numeric(18, 0)), CAST(47 AS Numeric(18, 0)), N'B3', CAST(100 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(101 AS Numeric(18, 0)), CAST(48 AS Numeric(18, 0)), N'E2', CAST(175 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(102 AS Numeric(18, 0)), CAST(49 AS Numeric(18, 0)), N'E5', CAST(175 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(103 AS Numeric(18, 0)), CAST(50 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(39 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(104 AS Numeric(18, 0)), CAST(51 AS Numeric(18, 0)), N'B7', CAST(100 AS Numeric(5, 0)), CAST(38 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(105 AS Numeric(18, 0)), CAST(52 AS Numeric(18, 0)), N'I8', CAST(225 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(106 AS Numeric(18, 0)), CAST(53 AS Numeric(18, 0)), N'E7', CAST(175 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(107 AS Numeric(18, 0)), CAST(54 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(42 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(108 AS Numeric(18, 0)), CAST(55 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(109 AS Numeric(18, 0)), CAST(56 AS Numeric(18, 0)), N'A1', CAST(100 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(110 AS Numeric(18, 0)), CAST(56 AS Numeric(18, 0)), N'B1', CAST(100 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(111 AS Numeric(18, 0)), CAST(56 AS Numeric(18, 0)), N'C1', CAST(100 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(112 AS Numeric(18, 0)), CAST(56 AS Numeric(18, 0)), N'D1', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
GO
print 'Processed 100 total records'
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(113 AS Numeric(18, 0)), CAST(56 AS Numeric(18, 0)), N'E1', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(114 AS Numeric(18, 0)), CAST(56 AS Numeric(18, 0)), N'E2', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(115 AS Numeric(18, 0)), CAST(57 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(116 AS Numeric(18, 0)), CAST(57 AS Numeric(18, 0)), N'E5', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(117 AS Numeric(18, 0)), CAST(57 AS Numeric(18, 0)), N'F5', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(118 AS Numeric(18, 0)), CAST(57 AS Numeric(18, 0)), N'C2', CAST(100 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(119 AS Numeric(18, 0)), CAST(58 AS Numeric(18, 0)), N'A7', CAST(100 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(120 AS Numeric(18, 0)), CAST(59 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(121 AS Numeric(18, 0)), CAST(60 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(47 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(122 AS Numeric(18, 0)), CAST(60 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(47 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(123 AS Numeric(18, 0)), CAST(61 AS Numeric(18, 0)), N'H5', CAST(225 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(124 AS Numeric(18, 0)), CAST(61 AS Numeric(18, 0)), N'G5', CAST(225 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(125 AS Numeric(18, 0)), CAST(62 AS Numeric(18, 0)), N'C5', CAST(100 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(126 AS Numeric(18, 0)), CAST(62 AS Numeric(18, 0)), N'I5', CAST(225 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(127 AS Numeric(18, 0)), CAST(62 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(128 AS Numeric(18, 0)), CAST(63 AS Numeric(18, 0)), N'E3', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(129 AS Numeric(18, 0)), CAST(63 AS Numeric(18, 0)), N'E4', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(130 AS Numeric(18, 0)), CAST(63 AS Numeric(18, 0)), N'E6', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(131 AS Numeric(18, 0)), CAST(63 AS Numeric(18, 0)), N'E7', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(132 AS Numeric(18, 0)), CAST(63 AS Numeric(18, 0)), N'E8', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(133 AS Numeric(18, 0)), CAST(63 AS Numeric(18, 0)), N'E0', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(134 AS Numeric(18, 0)), CAST(64 AS Numeric(18, 0)), N'E9', CAST(175 AS Numeric(5, 0)), CAST(46 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(135 AS Numeric(18, 0)), CAST(65 AS Numeric(18, 0)), N'E4', CAST(175 AS Numeric(5, 0)), CAST(48 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(136 AS Numeric(18, 0)), CAST(65 AS Numeric(18, 0)), N'E1', CAST(175 AS Numeric(5, 0)), CAST(48 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(137 AS Numeric(18, 0)), CAST(65 AS Numeric(18, 0)), N'E2', CAST(175 AS Numeric(5, 0)), CAST(48 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(138 AS Numeric(18, 0)), CAST(65 AS Numeric(18, 0)), N'E3', CAST(175 AS Numeric(5, 0)), CAST(48 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(139 AS Numeric(18, 0)), CAST(65 AS Numeric(18, 0)), N'E0', CAST(175 AS Numeric(5, 0)), CAST(48 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(140 AS Numeric(18, 0)), CAST(66 AS Numeric(18, 0)), N'C5', CAST(100 AS Numeric(5, 0)), CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(141 AS Numeric(18, 0)), CAST(66 AS Numeric(18, 0)), N'C6', CAST(100 AS Numeric(5, 0)), CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(142 AS Numeric(18, 0)), CAST(66 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(143 AS Numeric(18, 0)), CAST(66 AS Numeric(18, 0)), N'B6', CAST(100 AS Numeric(5, 0)), CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(144 AS Numeric(18, 0)), CAST(66 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(145 AS Numeric(18, 0)), CAST(66 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(146 AS Numeric(18, 0)), CAST(67 AS Numeric(18, 0)), N'C4', CAST(100 AS Numeric(5, 0)), CAST(53 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(147 AS Numeric(18, 0)), CAST(67 AS Numeric(18, 0)), N'A4', CAST(100 AS Numeric(5, 0)), CAST(53 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(148 AS Numeric(18, 0)), CAST(67 AS Numeric(18, 0)), N'B4', CAST(100 AS Numeric(5, 0)), CAST(53 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(149 AS Numeric(18, 0)), CAST(67 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(53 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(150 AS Numeric(18, 0)), CAST(67 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(53 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(151 AS Numeric(18, 0)), CAST(68 AS Numeric(18, 0)), N'C5', CAST(100 AS Numeric(5, 0)), CAST(54 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(152 AS Numeric(18, 0)), CAST(68 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(54 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(153 AS Numeric(18, 0)), CAST(68 AS Numeric(18, 0)), N'A6', CAST(100 AS Numeric(5, 0)), CAST(54 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(154 AS Numeric(18, 0)), CAST(68 AS Numeric(18, 0)), N'A4', CAST(100 AS Numeric(5, 0)), CAST(54 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(155 AS Numeric(18, 0)), CAST(68 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(54 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(156 AS Numeric(18, 0)), CAST(68 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(54 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(157 AS Numeric(18, 0)), CAST(69 AS Numeric(18, 0)), N'A7', CAST(100 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(158 AS Numeric(18, 0)), CAST(69 AS Numeric(18, 0)), N'B7', CAST(100 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(159 AS Numeric(18, 0)), CAST(69 AS Numeric(18, 0)), N'A8', CAST(100 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(160 AS Numeric(18, 0)), CAST(69 AS Numeric(18, 0)), N'A9', CAST(100 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(161 AS Numeric(18, 0)), CAST(69 AS Numeric(18, 0)), N'B9', CAST(100 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(162 AS Numeric(18, 0)), CAST(69 AS Numeric(18, 0)), N'B8', CAST(100 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(163 AS Numeric(18, 0)), CAST(70 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(164 AS Numeric(18, 0)), CAST(70 AS Numeric(18, 0)), N'E5', CAST(175 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(165 AS Numeric(18, 0)), CAST(70 AS Numeric(18, 0)), N'D6', CAST(175 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(166 AS Numeric(18, 0)), CAST(70 AS Numeric(18, 0)), N'E6', CAST(175 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(167 AS Numeric(18, 0)), CAST(71 AS Numeric(18, 0)), N'A9', CAST(100 AS Numeric(5, 0)), CAST(56 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(168 AS Numeric(18, 0)), CAST(72 AS Numeric(18, 0)), N'A3', CAST(100 AS Numeric(5, 0)), CAST(59 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(169 AS Numeric(18, 0)), CAST(73 AS Numeric(18, 0)), N'H5', CAST(225 AS Numeric(5, 0)), CAST(63 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(170 AS Numeric(18, 0)), CAST(73 AS Numeric(18, 0)), N'A4', CAST(100 AS Numeric(5, 0)), CAST(63 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(171 AS Numeric(18, 0)), CAST(73 AS Numeric(18, 0)), N'E7', CAST(175 AS Numeric(5, 0)), CAST(63 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(172 AS Numeric(18, 0)), CAST(74 AS Numeric(18, 0)), N'I5', CAST(225 AS Numeric(5, 0)), CAST(63 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(173 AS Numeric(18, 0)), CAST(75 AS Numeric(18, 0)), N'B2', CAST(100 AS Numeric(5, 0)), CAST(64 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(174 AS Numeric(18, 0)), CAST(75 AS Numeric(18, 0)), N'A2', CAST(100 AS Numeric(5, 0)), CAST(64 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(175 AS Numeric(18, 0)), CAST(75 AS Numeric(18, 0)), N'A3', CAST(100 AS Numeric(5, 0)), CAST(64 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(176 AS Numeric(18, 0)), CAST(75 AS Numeric(18, 0)), N'C2', CAST(100 AS Numeric(5, 0)), CAST(64 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(177 AS Numeric(18, 0)), CAST(75 AS Numeric(18, 0)), N'C3', CAST(100 AS Numeric(5, 0)), CAST(64 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(178 AS Numeric(18, 0)), CAST(75 AS Numeric(18, 0)), N'D3', CAST(175 AS Numeric(5, 0)), CAST(64 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(179 AS Numeric(18, 0)), CAST(76 AS Numeric(18, 0)), N'A1', CAST(100 AS Numeric(5, 0)), CAST(65 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(180 AS Numeric(18, 0)), CAST(76 AS Numeric(18, 0)), N'A2', CAST(100 AS Numeric(5, 0)), CAST(65 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(181 AS Numeric(18, 0)), CAST(77 AS Numeric(18, 0)), N'D4', CAST(175 AS Numeric(5, 0)), CAST(67 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(182 AS Numeric(18, 0)), CAST(77 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(67 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(183 AS Numeric(18, 0)), CAST(77 AS Numeric(18, 0)), N'E4', CAST(175 AS Numeric(5, 0)), CAST(67 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(184 AS Numeric(18, 0)), CAST(77 AS Numeric(18, 0)), N'A4', CAST(100 AS Numeric(5, 0)), CAST(67 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(185 AS Numeric(18, 0)), CAST(77 AS Numeric(18, 0)), N'B4', CAST(100 AS Numeric(5, 0)), CAST(67 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(186 AS Numeric(18, 0)), CAST(77 AS Numeric(18, 0)), N'C4', CAST(100 AS Numeric(5, 0)), CAST(67 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(187 AS Numeric(18, 0)), CAST(78 AS Numeric(18, 0)), N'C5', CAST(100 AS Numeric(5, 0)), CAST(68 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(188 AS Numeric(18, 0)), CAST(78 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(68 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(189 AS Numeric(18, 0)), CAST(78 AS Numeric(18, 0)), N'E5', CAST(175 AS Numeric(5, 0)), CAST(68 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(190 AS Numeric(18, 0)), CAST(78 AS Numeric(18, 0)), N'F5', CAST(175 AS Numeric(5, 0)), CAST(68 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(191 AS Numeric(18, 0)), CAST(78 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(68 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(192 AS Numeric(18, 0)), CAST(78 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(68 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(193 AS Numeric(18, 0)), CAST(79 AS Numeric(18, 0)), N'B0', CAST(100 AS Numeric(5, 0)), CAST(69 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(194 AS Numeric(18, 0)), CAST(79 AS Numeric(18, 0)), N'B1', CAST(100 AS Numeric(5, 0)), CAST(69 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(195 AS Numeric(18, 0)), CAST(79 AS Numeric(18, 0)), N'A0', CAST(100 AS Numeric(5, 0)), CAST(69 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(196 AS Numeric(18, 0)), CAST(79 AS Numeric(18, 0)), N'A1', CAST(100 AS Numeric(5, 0)), CAST(69 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(197 AS Numeric(18, 0)), CAST(79 AS Numeric(18, 0)), N'C0', CAST(100 AS Numeric(5, 0)), CAST(69 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(198 AS Numeric(18, 0)), CAST(79 AS Numeric(18, 0)), N'C1', CAST(100 AS Numeric(5, 0)), CAST(69 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(199 AS Numeric(18, 0)), CAST(80 AS Numeric(18, 0)), N'B3', CAST(100 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(200 AS Numeric(18, 0)), CAST(80 AS Numeric(18, 0)), N'C3', CAST(100 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(201 AS Numeric(18, 0)), CAST(81 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(202 AS Numeric(18, 0)), CAST(82 AS Numeric(18, 0)), N'F5', CAST(175 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(203 AS Numeric(18, 0)), CAST(82 AS Numeric(18, 0)), N'E5', CAST(175 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(204 AS Numeric(18, 0)), CAST(83 AS Numeric(18, 0)), N'H6', CAST(225 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(205 AS Numeric(18, 0)), CAST(83 AS Numeric(18, 0)), N'G6', CAST(225 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(206 AS Numeric(18, 0)), CAST(84 AS Numeric(18, 0)), N'D8', CAST(175 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(207 AS Numeric(18, 0)), CAST(87 AS Numeric(18, 0)), N'C8', CAST(100 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(208 AS Numeric(18, 0)), CAST(88 AS Numeric(18, 0)), N'C9', CAST(100 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(209 AS Numeric(18, 0)), CAST(88 AS Numeric(18, 0)), N'D9', CAST(175 AS Numeric(5, 0)), CAST(71 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(210 AS Numeric(18, 0)), CAST(90 AS Numeric(18, 0)), N'C9', CAST(100 AS Numeric(5, 0)), CAST(70 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(211 AS Numeric(18, 0)), CAST(90 AS Numeric(18, 0)), N'D9', CAST(175 AS Numeric(5, 0)), CAST(70 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(212 AS Numeric(18, 0)), CAST(91 AS Numeric(18, 0)), N'C5', CAST(100 AS Numeric(5, 0)), CAST(72 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(213 AS Numeric(18, 0)), CAST(91 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(72 AS Numeric(18, 0)))
GO
print 'Processed 200 total records'
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(214 AS Numeric(18, 0)), CAST(91 AS Numeric(18, 0)), N'E5', CAST(175 AS Numeric(5, 0)), CAST(72 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(215 AS Numeric(18, 0)), CAST(91 AS Numeric(18, 0)), N'F5', CAST(175 AS Numeric(5, 0)), CAST(72 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(216 AS Numeric(18, 0)), CAST(91 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(72 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(217 AS Numeric(18, 0)), CAST(91 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(72 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(218 AS Numeric(18, 0)), CAST(92 AS Numeric(18, 0)), N'D4', CAST(175 AS Numeric(5, 0)), CAST(73 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(219 AS Numeric(18, 0)), CAST(92 AS Numeric(18, 0)), N'G3', CAST(225 AS Numeric(5, 0)), CAST(73 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(220 AS Numeric(18, 0)), CAST(92 AS Numeric(18, 0)), N'G4', CAST(225 AS Numeric(5, 0)), CAST(73 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(221 AS Numeric(18, 0)), CAST(92 AS Numeric(18, 0)), N'G5', CAST(225 AS Numeric(5, 0)), CAST(73 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(222 AS Numeric(18, 0)), CAST(92 AS Numeric(18, 0)), N'G6', CAST(225 AS Numeric(5, 0)), CAST(73 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(223 AS Numeric(18, 0)), CAST(92 AS Numeric(18, 0)), N'C4', CAST(100 AS Numeric(5, 0)), CAST(73 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(224 AS Numeric(18, 0)), CAST(93 AS Numeric(18, 0)), N'C5', CAST(100 AS Numeric(5, 0)), CAST(73 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(10218 AS Numeric(18, 0)), CAST(10092 AS Numeric(18, 0)), N'A1', CAST(100 AS Numeric(5, 0)), CAST(20073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(10219 AS Numeric(18, 0)), CAST(10092 AS Numeric(18, 0)), N'B1', CAST(100 AS Numeric(5, 0)), CAST(20073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(10220 AS Numeric(18, 0)), CAST(10092 AS Numeric(18, 0)), N'C1', CAST(100 AS Numeric(5, 0)), CAST(20073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(10221 AS Numeric(18, 0)), CAST(10092 AS Numeric(18, 0)), N'D1', CAST(175 AS Numeric(5, 0)), CAST(20073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(10222 AS Numeric(18, 0)), CAST(10092 AS Numeric(18, 0)), N'E1', CAST(175 AS Numeric(5, 0)), CAST(20073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(10223 AS Numeric(18, 0)), CAST(10092 AS Numeric(18, 0)), N'F1', CAST(175 AS Numeric(5, 0)), CAST(20073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(20218 AS Numeric(18, 0)), CAST(20092 AS Numeric(18, 0)), N'C5', CAST(100 AS Numeric(5, 0)), CAST(30073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(20219 AS Numeric(18, 0)), CAST(20092 AS Numeric(18, 0)), N'D5', CAST(175 AS Numeric(5, 0)), CAST(30073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(20220 AS Numeric(18, 0)), CAST(20092 AS Numeric(18, 0)), N'E5', CAST(175 AS Numeric(5, 0)), CAST(30073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(20221 AS Numeric(18, 0)), CAST(20092 AS Numeric(18, 0)), N'F5', CAST(175 AS Numeric(5, 0)), CAST(30073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(20222 AS Numeric(18, 0)), CAST(20092 AS Numeric(18, 0)), N'A5', CAST(100 AS Numeric(5, 0)), CAST(30073 AS Numeric(18, 0)))
INSERT [dbo].[TicketDetail] ([Td_Id], [Ticket_id], [Sheat_No], [Sheat_Cost], [Show_Id]) VALUES (CAST(20223 AS Numeric(18, 0)), CAST(20092 AS Numeric(18, 0)), N'B5', CAST(100 AS Numeric(5, 0)), CAST(30073 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[TicketDetail] OFF
/****** Object:  Table [dbo].[MovieInfo]    Script Date: 03/18/2017 15:26:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovieInfo](
	[Movie_Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Movie_ImageURL] [varchar](250) NULL,
	[Movie_Status] [numeric](18, 0) NULL,
	[Movie_Title] [varchar](50) NULL,
	[Movie_ReleaseDate] [varchar](15) NULL,
	[Movie_Director] [varchar](50) NULL,
	[Movie_Casts] [varchar](500) NULL,
	[Movie_Language] [varchar](50) NULL,
	[Movie_Industry] [varchar](50) NULL,
 CONSTRAINT [PK_MovieInfo] PRIMARY KEY CLUSTERED 
(
	[Movie_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MovieInfo] ON
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(8 AS Numeric(18, 0)), N'1.jpg', CAST(3 AS Numeric(18, 0)), N'KAHAANI', N'09/03/2012', N'SUJOY GHOSH', N'VIDYA BALAN,
PARAMBRATA, CHATTERJEE,
NAWAZUDDIN ', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(9 AS Numeric(18, 0)), N'2.jpg', CAST(3 AS Numeric(18, 0)), N'PAAN SINGH TOMAR', N'02/03/2012', N'TIGMANSHU DHULIA', N'IRRFAN,MAHI GILL,VIPIN SHARMA', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(10 AS Numeric(18, 0)), N'3.png', CAST(3 AS Numeric(18, 0)), N'HOUSEFULL 2', N'05/04/2012', N'SAJID KHAN', N'AKSHAY KUMAR,ASIN,
JOHN ABRAHAM,JACQUELINE FERNAN', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(11 AS Numeric(18, 0)), N'11.jpg', CAST(3 AS Numeric(18, 0)), N'DARK SHADOWS', N'11/05/2012', N'TIM BURTON', N'JOHNNY DEPP, MICHELLE PFEIFFER, EVA GREEN', N'ENGLISH', N'HOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(12 AS Numeric(18, 0)), N'12.jpg', CAST(3 AS Numeric(18, 0)), N'SNOW WHITE AND THE HUNTSMAN ', N'08/06/2012', N'RUPERT SANDERS', N'KRISTEN STEWART, CHRIS HEMSWORTH, CHARLIZE THERON', N'ENGLISH', N'HOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(13 AS Numeric(18, 0)), N'13.jpg', CAST(3 AS Numeric(18, 0)), N'LUTERA', N'01/01/2012', N'MAI', N'DIDIYA', N'TAMIL', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(14 AS Numeric(18, 0)), N'14.jpg', CAST(3 AS Numeric(18, 0)), N'Demo Movie45', N'05/09/2013', N'Mata Prasad', N'Mata Prasad,
Chauhan Mata Prasad', N'ENGLISH', N'HOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(15 AS Numeric(18, 0)), N'15.jpg', CAST(3 AS Numeric(18, 0)), N'Demo00', N'30/09/2013', N'aa', N'aaa', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(16 AS Numeric(18, 0)), N'16.jpg', CAST(3 AS Numeric(18, 0)), N'mm', N'30/09/2013', N'mm', N'mm', N'ENGLISH', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(17 AS Numeric(18, 0)), N'17.jpg', CAST(3 AS Numeric(18, 0)), N'mm', N'30/09/2013', N'aa', N'ss', N'ENGLISH', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(18 AS Numeric(18, 0)), N'18.jpg', CAST(3 AS Numeric(18, 0)), N'DARK SADOW', N'30/10/2013', N'Mata Prasad Chauhan', N'Vinay', N'ENGLISH', N'HOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(19 AS Numeric(18, 0)), N'19.jpg', CAST(3 AS Numeric(18, 0)), N'SHNOW WHITES AND HUNDS MAN', N'10/11/2013', N'Mata Prasad Chauhan', N'Vinay', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(20 AS Numeric(18, 0)), N'20.jpg', CAST(3 AS Numeric(18, 0)), N'VINAY', N'31/10/2013', N'Mata Prasad Chauhan', N'VINAY', N'ENGLISH', N'HOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(21 AS Numeric(18, 0)), N'21.png', CAST(3 AS Numeric(18, 0)), N'Jyoti', N'30/11/2013', N'vinay', N'vinay', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(22 AS Numeric(18, 0)), N'22.jpg', CAST(3 AS Numeric(18, 0)), N'UPCOMMING 001', N'30/11/2013', N'ME', N'YOU', N'ENGLISH', N'HOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(23 AS Numeric(18, 0)), N'23.jpg', CAST(1 AS Numeric(18, 0)), N'New Running Movie', N'15/05/2014', N'MATA', N'MATA', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(24 AS Numeric(18, 0)), N'24.jpg', CAST(3 AS Numeric(18, 0)), N'New Upcomming Movie', N'23/05/2014', N'MATA', N'MATA', N'ENGLISH', N'HOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(35 AS Numeric(18, 0)), N'35.jpg', CAST(3 AS Numeric(18, 0)), N'Ek Villen', N'19/06/2014', N'MATA', N'MATA', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(36 AS Numeric(18, 0)), N'36.jpg', CAST(3 AS Numeric(18, 0)), N'Ek Villen', N'19/06/2014', N'MATA', N'AT', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(37 AS Numeric(18, 0)), N'37.jpg', CAST(1 AS Numeric(18, 0)), N'AIR LIFT', N'10/03/2016', N'MATA', N'Tekesh
Monu
heroin', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(38 AS Numeric(18, 0)), N'38.jpg', CAST(1 AS Numeric(18, 0)), N'Udta Punjab', N'01/05/2016', N'Abhishek Chaubey', N'Shahid Kapoor
Kareena Kapoor
Alia Bhatt
Diljit ', N'HINDI', N'BOLLYWOOD')
INSERT [dbo].[MovieInfo] ([Movie_Id], [Movie_ImageURL], [Movie_Status], [Movie_Title], [Movie_ReleaseDate], [Movie_Director], [Movie_Casts], [Movie_Language], [Movie_Industry]) VALUES (CAST(43 AS Numeric(18, 0)), N'ee69ef00-0fb4-4ccc-a507-b611420d50b76277136250967983281.jpg', CAST(2 AS Numeric(18, 0)), N'XNWEW MOVIE', N'22/04/2017', N'MATA', N'C1', N'HINDI', N'BOLLYWOOD')
SET IDENTITY_INSERT [dbo].[MovieInfo] OFF
/****** Object:  ForeignKey [FK_MovieInfo_MovieStatusInfo]    Script Date: 03/18/2017 15:26:12 ******/
ALTER TABLE [dbo].[MovieInfo]  WITH CHECK ADD  CONSTRAINT [FK_MovieInfo_MovieStatusInfo] FOREIGN KEY([Movie_Status])
REFERENCES [dbo].[MovieStatusInfo] ([MovieStatus_Id])
GO
ALTER TABLE [dbo].[MovieInfo] CHECK CONSTRAINT [FK_MovieInfo_MovieStatusInfo]
GO
/****** Object:  ForeignKey [FK_TicketDetail_ShowInfo]    Script Date: 03/18/2017 15:26:12 ******/
ALTER TABLE [dbo].[TicketDetail]  WITH CHECK ADD  CONSTRAINT [FK_TicketDetail_ShowInfo] FOREIGN KEY([Show_Id])
REFERENCES [dbo].[ShowInfo] ([Show_Id])
GO
ALTER TABLE [dbo].[TicketDetail] CHECK CONSTRAINT [FK_TicketDetail_ShowInfo]
GO
/****** Object:  ForeignKey [FK_TicketDetail_TicketInfo]    Script Date: 03/18/2017 15:26:12 ******/
ALTER TABLE [dbo].[TicketDetail]  WITH CHECK ADD  CONSTRAINT [FK_TicketDetail_TicketInfo] FOREIGN KEY([Ticket_id])
REFERENCES [dbo].[TicketInfo] ([Ticket_Id])
GO
ALTER TABLE [dbo].[TicketDetail] CHECK CONSTRAINT [FK_TicketDetail_TicketInfo]
GO
/****** Object:  ForeignKey [FK_TicketInfo_ShowInfo]    Script Date: 03/18/2017 15:26:12 ******/
ALTER TABLE [dbo].[TicketInfo]  WITH CHECK ADD  CONSTRAINT [FK_TicketInfo_ShowInfo] FOREIGN KEY([Show_Id])
REFERENCES [dbo].[ShowInfo] ([Show_Id])
GO
ALTER TABLE [dbo].[TicketInfo] CHECK CONSTRAINT [FK_TicketInfo_ShowInfo]
GO
/****** Object:  ForeignKey [FK_TicketInfo_UserInfo]    Script Date: 03/18/2017 15:26:12 ******/
ALTER TABLE [dbo].[TicketInfo]  WITH CHECK ADD  CONSTRAINT [FK_TicketInfo_UserInfo] FOREIGN KEY([User_Id])
REFERENCES [dbo].[UserInfo] ([User_Id])
GO
ALTER TABLE [dbo].[TicketInfo] CHECK CONSTRAINT [FK_TicketInfo_UserInfo]
GO

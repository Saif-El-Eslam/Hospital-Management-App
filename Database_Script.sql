USE [DB_Hospital]
GO
/****** Object:  Table [dbo].[Accountant]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accountant](
	[FName] [varchar](30) NOT NULL,
	[MName] [varchar](30) NOT NULL,
	[LName] [varchar](30) NOT NULL,
	[A_ID] [int] NOT NULL,
	[Password] [int] NOT NULL,
	[Gender] [nchar](10) NOT NULL,
	[Address] [varchar](30) NULL,
	[BD] [date] NULL,
	[Phone] [int] NOT NULL,
	[Shift] [nchar](10) NOT NULL,
	[Salary] [int] NOT NULL,
 CONSTRAINT [PK_Accountant] PRIMARY KEY CLUSTERED 
(
	[A_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[FName] [varchar](30) NOT NULL,
	[MName] [varchar](30) NOT NULL,
	[LName] [varchar](30) NOT NULL,
	[D_ID] [int] NOT NULL,
	[Password] [int] NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Spec] [varchar](30) NOT NULL,
	[Address] [varchar](50) NULL,
	[BD] [date] NULL,
	[Phone] [int] NOT NULL,
	[Shift] [varchar](30) NOT NULL,
	[Salary] [int] NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[D_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalTests]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalTests](
	[Test_Name] [varchar](30) NOT NULL,
	[Test_Code] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_MedicalTests] PRIMARY KEY CLUSTERED 
(
	[Test_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[Med_Name] [varchar](30) NOT NULL,
	[Med_Code] [int] NULL,
	[Med_Price] [int] NOT NULL,
	[Units_Available] [int] NOT NULL,
 CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED 
(
	[Med_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nurse]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nurse](
	[FName] [varchar](30) NOT NULL,
	[MName] [varchar](30) NOT NULL,
	[LName] [varchar](30) NOT NULL,
	[N_ID] [int] NOT NULL,
	[Password] [int] NOT NULL,
	[Gender] [nchar](10) NOT NULL,
	[Address] [varchar](30) NULL,
	[BD] [date] NULL,
	[Phone] [int] NOT NULL,
	[Shift] [nchar](10) NOT NULL,
	[Salary] [int] NOT NULL,
 CONSTRAINT [PK_Nurse] PRIMARY KEY CLUSTERED 
(
	[N_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_Unit]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_Unit](
	[P_ID] [int] NOT NULL,
	[P_Unit] [int] NOT NULL,
 CONSTRAINT [PK_P_Unit] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC,
	[P_Unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[FName] [varchar](30) NOT NULL,
	[MName] [varchar](30) NOT NULL,
	[LName] [varchar](30) NOT NULL,
	[Pa_ID] [int] NOT NULL,
	[BD] [date] NULL,
	[Gender] [nchar](10) NOT NULL,
	[Address] [varchar](30) NULL,
	[Phone] [int] NOT NULL,
	[RoomNumber] [int] NULL,
	[DateCheckIn] [date] NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[Pa_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient_Medicine]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Medicine](
	[P_ID] [int] NOT NULL,
	[P_Med] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Med_Fees] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC,
	[P_Med] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient_Room]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Room](
	[P_ID] [int] NOT NULL,
	[R_Room] [int] NOT NULL,
	[Ndays] [int] NULL,
 CONSTRAINT [PK_Patient_Room] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC,
	[R_Room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient_Tests]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Tests](
	[P_ID] [int] NOT NULL,
	[P_Test] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Patient_Tests] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC,
	[P_Test] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientDiagnostic]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientDiagnostic](
	[PD_ID] [int] NOT NULL,
	[Illness] [varchar](100) NULL,
	[Notes] [varchar](100) NULL,
	[Last_Visit] [date] NULL,
 CONSTRAINT [PK_PatientDiagnostic] PRIMARY KEY CLUSTERED 
(
	[PD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientPayment]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientPayment](
	[P_ID] [int] NOT NULL,
	[Unit_fees] [int] NULL,
	[Room_fees] [int] NULL,
	[Test_fees] [int] NULL,
	[Med_fees] [int] NULL,
 CONSTRAINT [PK_PatientPayment] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmacist]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacist](
	[FName] [varchar](30) NOT NULL,
	[MName] [varchar](30) NOT NULL,
	[LName] [varchar](30) NOT NULL,
	[P_ID] [int] NOT NULL,
	[Password] [int] NOT NULL,
	[Gender] [nchar](10) NOT NULL,
	[Address] [varchar](30) NULL,
	[BD] [date] NULL,
	[Phone] [int] NOT NULL,
	[Shift] [nchar](10) NOT NULL,
	[Salary] [int] NOT NULL,
 CONSTRAINT [PK_Pharmacist] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receptionist]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receptionist](
	[FName] [varchar](30) NOT NULL,
	[MName] [varchar](30) NOT NULL,
	[LName] [varchar](30) NOT NULL,
	[R_ID] [int] NOT NULL,
	[Password] [int] NOT NULL,
	[Gender] [nchar](10) NOT NULL,
	[Address] [varchar](30) NULL,
	[BD] [date] NULL,
	[Phone] [int] NOT NULL,
	[Shift] [nchar](10) NOT NULL,
	[Salary] [int] NOT NULL,
 CONSTRAINT [PK_Receptionist] PRIMARY KEY CLUSTERED 
(
	[R_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomNumber] [int] NOT NULL,
	[RoomType] [nchar](10) NOT NULL,
	[RFees] [int] NOT NULL,
	[Availability] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 1/10/2021 3:59:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitNumber] [int] NOT NULL,
	[UnitType] [nchar](30) NOT NULL,
	[UFees] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Berton', N'Agates', N'Ritzman', 1, 95146, N'Male      ', N'7761 Stuart Circle', CAST(N'2000-06-29' AS Date), 6969, N'2-8 am    ', 2161)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Shalne', N'Preston', N'Boyson', 2, 82293, N'Female    ', N'315 Erie Terrace', CAST(N'2000-08-28' AS Date), 2834, N'2-8 am    ', 3984)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kerry', N'Duffer', N'Bedome', 3, 45160, N'Female    ', N'6 Armistice Court', CAST(N'2002-06-26' AS Date), 2546, N'2-8 pm    ', 3318)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Angie', N'Ulyatt', N'Dormon', 4, 95894, N'Male      ', N'245 Northland Hill', CAST(N'2002-04-07' AS Date), 5049, N'2-8 pm    ', 2071)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Casandra', N'Cordeau', N'Greetham', 5, 41544, N'Female    ', N'6815 Spaight Park', CAST(N'2001-07-20' AS Date), 6780, N'8-2 a     ', 2713)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Eldridge', N'Hartland', N'Beharrell', 6, 46595, N'Male      ', N'4367 Golf Alley', CAST(N'2001-06-03' AS Date), 1250, N'8-2 pm    ', 3008)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ileane', N'Fearnyough', N'Jenkyn', 7, 30893, N'Female    ', N'092 Jackson Circle', CAST(N'2001-08-07' AS Date), 6587, N'2-8 pm    ', 3833)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Augusta', N'Gimlet', N'Stillmann', 8, 64295, N'Female    ', N'5022 Di Loreto Way', CAST(N'2000-02-12' AS Date), 3212, N'2-8 pm    ', 3761)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Omero', N'Woodyer', N'Eccleshall', 9, 13551, N'Male      ', N'13 Armistice Center', CAST(N'2001-02-23' AS Date), 3116, N'2-8 pm    ', 3080)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Anett', N'Monroe', N'Ganforthe', 10, 68371, N'Female    ', N'5591 Becker Circle', CAST(N'2000-03-10' AS Date), 6253, N'2-8 am    ', 3112)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Meryl', N'Duplan', N'Sagg', 11, 92502, N'Male      ', N'757 Swallow Avenue', CAST(N'2002-01-16' AS Date), 1738, N'8-2 a     ', 3725)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Odell', N'Sarsons', N'Ormond', 12, 53737, N'Male      ', N'4 Crest Line Place', CAST(N'2002-12-30' AS Date), 5731, N'8-2 pm    ', 3484)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Tanitansy', N'Merrison', N'Dundridge', 13, 21625, N'Female    ', N'1771 Summer Ridge Way', CAST(N'2001-04-02' AS Date), 2910, N'2-8 pm    ', 3474)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Georgette', N'Loudon', N'Dockwray', 14, 75146, N'Female    ', N'942 Londonderry Junction', CAST(N'2000-09-23' AS Date), 6379, N'8-2 pm    ', 2537)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Evin', N'Storkes', N'Wigg', 15, 61296, N'Male      ', N'3254 Dayton Parkway', CAST(N'2001-08-30' AS Date), 5594, N'8-2 a     ', 2061)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Nat', N'MacClay', N'Wilbore', 16, 12345, N'Male      ', N'67 Fordem Plaza', CAST(N'2000-06-12' AS Date), 3120, N'8-2 pm    ', 3111)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Melisa', N'Di Angelo', N'Delany', 17, 84816, N'Female    ', N'7309 Alpine Pass', CAST(N'2001-12-29' AS Date), 4903, N'8-2 a     ', 2114)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Frederick', N'Pollicott', N'Renner', 18, 80378, N'Male      ', N'7 Corry Avenue', CAST(N'2002-12-22' AS Date), 1324, N'8-2 pm    ', 2567)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ida', N'McMurty', N'Werrett', 19, 38022, N'Female    ', N'1799 Stang Center', CAST(N'2001-12-20' AS Date), 4044, N'8-2 a     ', 2094)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Quintin', N'Clist', N'Ashingden', 20, 25858, N'Male      ', N'85 Grover Point', CAST(N'2001-04-21' AS Date), 4690, N'2-8 pm    ', 3909)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Christan', N'Strand', N'Casaro', 21, 92171, N'Female    ', N'17 Dryden Court', CAST(N'2001-08-08' AS Date), 1699, N'8-2 a     ', 3582)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jude', N'Rouff', N'Berrey', 22, 90744, N'Male      ', N'37480 Warrior Court', CAST(N'2002-07-28' AS Date), 5446, N'8-2 pm    ', 3304)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Sayers', N'Mustchin', N'Sugars', 23, 96839, N'Male      ', N'3613 Vernon Court', CAST(N'2001-02-21' AS Date), 2344, N'8-2 pm    ', 2166)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Dory', N'Shermar', N'Kingaby', 24, 38801, N'Male      ', N'007 Delaware Hill', CAST(N'2001-06-10' AS Date), 2152, N'8-2 a     ', 2142)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Arlie', N'Wyllt', N'Burchall', 25, 97350, N'Female    ', N'11 Lunder Terrace', CAST(N'2000-06-23' AS Date), 1740, N'2-8 am    ', 3179)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Nikolos', N'Swateridge', N'Balsellie', 26, 23620, N'Male      ', N'77465 Northland Hill', CAST(N'2001-10-15' AS Date), 6231, N'8-2 a     ', 3363)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Trueman', N'Mattisson', N'Voaden', 27, 98804, N'Male      ', N'2540 Kipling Street', CAST(N'2001-12-20' AS Date), 5014, N'2-8 pm    ', 3928)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Shannen', N'Boud', N'Nealand', 28, 37227, N'Female    ', N'06 Mariners Cove Court', CAST(N'2002-08-05' AS Date), 6065, N'2-8 am    ', 2799)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ade', N'Boynton', N'Yushkov', 29, 75666, N'Male      ', N'5 Stang Pass', CAST(N'2002-12-13' AS Date), 4029, N'2-8 am    ', 3508)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Brad', N'Wedderburn', N'Beddis', 30, 98026, N'Male      ', N'44 Straubel Drive', CAST(N'2002-02-02' AS Date), 2043, N'2-8 pm    ', 2908)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Julie', N'Pinsent', N'Umpleby', 31, 40473, N'Male      ', N'5088 Gulseth Way', CAST(N'2001-10-20' AS Date), 4139, N'2-8 pm    ', 3233)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Clevey', N'Boughton', N'Ivanin', 32, 57070, N'Male      ', N'3392 International Avenue', CAST(N'2002-07-24' AS Date), 4753, N'2-8 am    ', 2241)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lynn', N'Inglish', N'Boswell', 33, 26327, N'Male      ', N'0 Packers Point', CAST(N'2002-06-14' AS Date), 5813, N'8-2 pm    ', 3965)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kimberlyn', N'Villiers', N'Millsom', 34, 16209, N'Female    ', N'39726 Ryan Place', CAST(N'2001-12-31' AS Date), 1698, N'8-2 pm    ', 2520)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Nev', N'Jeaneau', N'Bugge', 35, 20650, N'Male      ', N'34613 Forster Alley', CAST(N'2002-10-18' AS Date), 1794, N'8-2 a     ', 2631)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Sabine', N'Dreossi', N'Headley', 36, 17799, N'Female    ', N'7 Old Gate Street', CAST(N'2000-10-29' AS Date), 6659, N'8-2 a     ', 2681)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Crin', N'Ruvel', N'Cornely', 37, 40348, N'Female    ', N'59 Rigney Parkway', CAST(N'2001-09-26' AS Date), 4225, N'2-8 pm    ', 3445)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Alleen', N'Burchell', N'Barlass', 38, 57858, N'Female    ', N'695 Schmedeman Avenue', CAST(N'2002-01-20' AS Date), 5076, N'8-2 a     ', 3311)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Nobe', N'Boswood', N'Preator', 39, 47130, N'Male      ', N'4325 Artisan Parkway', CAST(N'2000-01-30' AS Date), 3258, N'2-8 pm    ', 3118)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Baillie', N'Lambourne', N'Tremontana', 40, 32455, N'Male      ', N'448 Dovetail Hill', CAST(N'2001-11-05' AS Date), 6067, N'2-8 am    ', 2467)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Scotty', N'Jacobson', N'Gillingham', 41, 21234, N'Male      ', N'05 Aberg Junction', CAST(N'2000-03-29' AS Date), 3918, N'8-2 pm    ', 2600)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Casandra', N'Stanlick', N'Guinness', 42, 82159, N'Female    ', N'850 Lakewood Gardens Pass', CAST(N'2001-02-03' AS Date), 6779, N'2-8 pm    ', 3527)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Justino', N'Hoggan', N'Biasio', 43, 98382, N'Male      ', N'785 1st Hill', CAST(N'2002-08-20' AS Date), 5181, N'2-8 pm    ', 3203)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Stefa', N'Smedmoor', N'Jerdon', 44, 97116, N'Female    ', N'53477 Summerview Road', CAST(N'2001-02-23' AS Date), 6588, N'8-2 a     ', 3041)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Sofia', N'Garces', N'Giacopazzi', 45, 64302, N'Female    ', N'262 High Crossing Parkway', CAST(N'2002-04-05' AS Date), 2388, N'8-2 a     ', 3367)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Goldie', N'Ogborn', N'Maty', 46, 70175, N'Female    ', N'053 Bellgrove Plaza', CAST(N'2002-09-22' AS Date), 5235, N'2-8 am    ', 3393)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lark', N'Baack', N'Julian', 47, 85271, N'Female    ', N'6257 Briar Crest Road', CAST(N'2001-12-13' AS Date), 1392, N'8-2 a     ', 3924)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Dante', N'Bullas', N'Mcsarry', 48, 59278, N'Male      ', N'4511 Macpherson Hill', CAST(N'2001-11-10' AS Date), 1767, N'2-8 am    ', 2888)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jarred', N'Beeho', N'Horsfield', 49, 76830, N'Male      ', N'53288 Center Junction', CAST(N'2001-07-26' AS Date), 2930, N'8-2 pm    ', 2851)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Conn', N'Weatherley', N'Haggeth', 50, 74469, N'Male      ', N'622 Bunker Hill Plaza', CAST(N'2001-10-01' AS Date), 6201, N'2-8 pm    ', 2093)
INSERT [dbo].[Accountant] ([FName], [MName], [LName], [A_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ahmed', N'g', N'g', 51, 155, N'Male      ', N'gh', CAST(N'2021-01-09' AS Date), 2030, N'8-2 pm    ', 2000)
GO
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kev', N'Conley', N'Portman', 1, 12345, N'Male', N'Cardiologist', N'91585 Cairo street', CAST(N'2001-02-02' AS Date), 1236, N'2-8 am', 2049)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Brandon', N'Perell', N'Evesque', 2, 69570, N'Male', N'Physicians', N'4403 Ruskin Crossing', CAST(N'2000-08-05' AS Date), 5232, N'2-8 pm', 3427)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kaylyn', N'Clavey', N'Pudden', 3, 69431, N'Female', N'''Endocrinologist''', N'59449 La Follette Road', CAST(N'2001-06-20' AS Date), 7777, N'''8-2 pm''', 3906)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Worthy', N'Bowes', N'Hundy', 4, 72617, N'Male', N'Physicians', N'52 Darwin Drive', CAST(N'2002-08-27' AS Date), 5527, N'2-8 am', 3485)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Caty', N'Mitchenson', N'Aitcheson', 5, 43325, N'Female', N'''Physicians''', N'2 Barnett Terrace', CAST(N'2001-12-19' AS Date), 5555, N'''8-2 pm''', 2707)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Fax', N'Wyard', N'McClounan', 6, 44666, N'Male', N'Cardiologist', N'3 Emmet Drive', CAST(N'2001-08-05' AS Date), 5502, N'8-2 pm', 3333)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Milton', N'Rodway', N'Dounbare', 7, 49886, N'Male', N'Dermatologists', N'81629 Portage Junction', CAST(N'2000-09-06' AS Date), 4002, N'2-8 am', 2269)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Maryjo', N'Fosbraey', N'Lehemann', 8, 56938, N'Female', N'Physicians', N'77 Linden Pass', CAST(N'2001-03-31' AS Date), 4067, N'8-2 pm', 2169)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kalil', N'Horry', N'Bright', 9, 14769, N'Male', N'''Cardiologist''', N'93234 Mifflin Plaza', CAST(N'2001-11-27' AS Date), 6666, N'''8-2 am''', 2854)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ivie', N'Oganesian', N'Chainey', 10, 86693, N'Female', N'Endocrinologist', N'83 Bunting Way', CAST(N'2002-12-19' AS Date), 6095, N'2-8 pm', 2601)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lark', N'Selley', N'Bazeley', 11, 82978, N'Female', N'Physicians', N'6945 Ryan Alley', CAST(N'2001-06-09' AS Date), 2245, N'2-8 am', 2318)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Brit', N'MacLice', N'Moland', 12, 26240, N'Male', N'Cardiologist', N'15026 Straubel Center', CAST(N'2000-12-08' AS Date), 3176, N'8-2 a', 2915)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Zea', N'Verlander', N'Charge', 13, 40575, N'Female', N'Physicians', N'87 Bonner Point', CAST(N'2001-08-15' AS Date), 4691, N'8-2 a', 2088)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Helge', N'Duligal', N'Phillott', 14, 66632, N'Female', N'Physicians', N'85491 Twin Pines Place', CAST(N'2002-11-17' AS Date), 4311, N'2-8 am', 3569)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Alayne', N'Frankland', N'Springell', 15, 83393, N'Female', N'Dermatologists', N'99 Merry Crossing', CAST(N'2000-06-27' AS Date), 1940, N'8-2 a', 2149)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Tymothy', N'Tubritt', N'Collet', 16, 68118, N'Male', N'Endocrinologist', N'3516 Grayhawk Junction', CAST(N'2001-06-24' AS Date), 3588, N'8-2 pm', 2833)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Uriah', N'Addey', N'Caswall', 17, 79141, N'Male', N'Physicians', N'2 Superior Point', CAST(N'2002-05-04' AS Date), 5813, N'2-8 am', 3736)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Riane', N'Roberti', N'Laise', 18, 75586, N'Female', N'''Physicians''', N'58598 Nevada Lane', CAST(N'2001-12-19' AS Date), 2222, N'''8-2 pm''', 3982)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kit', N'Houndesome', N'Montel', 19, 99564, N'Male', N'Dermatologists', N'3 Ronald Regan Terrace', CAST(N'2002-06-11' AS Date), 6236, N'2-8 pm', 2932)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Clarissa', N'Willgress', N'Aspinell', 20, 91071, N'Female', N'Cardiologist', N'53834 Talisman Plaza', CAST(N'2000-01-28' AS Date), 5946, N'8-2 pm', 2653)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Debera', N'Letterese', N'Aubin', 21, 50596, N'Female', N'''Physicians''', N'23593 Crownhardt Avenue', CAST(N'2002-03-08' AS Date), 3333, N'''2-8 am''', 3823)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Vilma', N'Jandl', N'McGilben', 22, 26912, N'Female', N'Endocrinologist', N'814 Sunbrook Terrace', CAST(N'2002-07-28' AS Date), 3473, N'8-2 pm', 3246)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Heloise', N'Abel', N'McPhater', 23, 62130, N'Female', N'''Physicians''', N'4 Hoffman Point', CAST(N'2001-08-20' AS Date), 4444, N'''2-8 am''', 3799)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Obed', N'Cayette', N'MacFaell', 24, 50143, N'Male', N'Physicians', N'942 Eastlawn Drive', CAST(N'2002-03-10' AS Date), 3008, N'2-8 pm', 3718)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Mariette', N'Wellington', N'Ibbetson', 25, 58859, N'Female', N'''Physicians''', N'4 Transport Parkway', CAST(N'2001-04-01' AS Date), 4567, N'''2-8 pm''', 2085)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Berton', N'Gaskamp', N'Newbury', 26, 42196, N'Male', N'Cardiologist', N'138 Bowman Terrace', CAST(N'2002-03-24' AS Date), 1906, N'8-2 a', 3379)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Reed', N'Ronci', N'Rantoul', 27, 53623, N'Male', N'Physicians', N'0884 Haas Court', CAST(N'2002-11-19' AS Date), 3417, N'8-2 pm', 2879)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jade', N'Vergo', N'Screase', 28, 94404, N'Female', N'Physicians', N'12 Sutteridge Point', CAST(N'2000-02-05' AS Date), 4775, N'2-8 pm', 3963)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Anson', N'Mc Trusty', N'Hawthorn', 29, 64452, N'Male', N'Physicians', N'3 Village Hill', CAST(N'2000-03-21' AS Date), 3649, N'2-8 am', 3273)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Buckie', N'Dominico', N'Birwhistle', 30, 33624, N'Male', N'Physicians', N'548 Memorial Lane', CAST(N'2001-02-28' AS Date), 1842, N'2-8 pm', 3374)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Karylin', N'Kix', N'Turfin', 31, 35484, N'Female', N'Dermatologists', N'8258 Manufacturers Road', CAST(N'2000-04-03' AS Date), 2831, N'8-2 pm', 3945)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jens', N'Sturdy', N'Sudran', 32, 22902, N'Male', N'Endocrinologist', N'8912 4th Court', CAST(N'2000-11-27' AS Date), 1875, N'2-8 pm', 2891)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lusa', N'Folkard', N'Hiseman', 33, 48799, N'Female', N'Dermatologists', N'93 Elgar Way', CAST(N'2001-03-18' AS Date), 1136, N'8-2 a', 2213)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kermie', N'Adamczewski', N'Gronauer', 34, 91962, N'Male', N'Cardiologist', N'5262 Northview Plaza', CAST(N'2002-07-16' AS Date), 5186, N'8-2 pm', 3905)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Say', N'Memmory', N'Vanshin', 35, 25394, N'Male', N'Dermatologists', N'4260 Shelley Way', CAST(N'2001-06-25' AS Date), 6597, N'2-8 pm', 2952)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Romeo', N'Banat', N'Stobie', 36, 16700, N'Male', N'Dermatologists', N'26383 Pine View Drive', CAST(N'2001-11-02' AS Date), 4711, N'2-8 am', 2058)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Grove', N'Dilliston', N'Sired', 37, 75996, N'Male', N'Cardiologist', N'1 Parkside Trail', CAST(N'2000-06-17' AS Date), 5249, N'8-2 pm', 2627)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Tomi', N'Uden', N'Griffoen', 38, 71082, N'Female', N'Dermatologists', N'1 Evergreen Plaza', CAST(N'2000-04-08' AS Date), 5741, N'2-8 pm', 2093)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Christa', N'Hooke', N'Betke', 39, 80256, N'Female', N'Dermatologists', N'53833 Russell Lane', CAST(N'2000-01-23' AS Date), 1082, N'8-2 pm', 2058)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Trumann', N'Chessun', N'Swiers', 40, 91166, N'Male', N'Endocrinologist', N'254 Division Crossing', CAST(N'2000-06-14' AS Date), 6783, N'8-2 pm', 2273)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Emory', N'Mecco', N'Kinnon', 41, 99777, N'Male', N'Dermatologists', N'96 Eggendart Alley', CAST(N'2000-07-09' AS Date), 3641, N'8-2 pm', 3899)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Cassandra', N'Baxstare', N'Littleover', 42, 19154, N'Female', N'Physicians', N'6 Bunting Point', CAST(N'2000-04-30' AS Date), 3415, N'8-2 pm', 2058)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Sylvan', N'Aaron', N'Agass', 43, 22675, N'Male', N'''Physicians''', N'8 Pierstorff Parkway', CAST(N'2001-07-12' AS Date), 1234, N'''2-8 am''', 3315)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ric', N'Boundey', N'Stigers', 44, 35784, N'Male', N'Endocrinologist', N'377 Golf Parkway', CAST(N'2001-05-20' AS Date), 2401, N'8-2 pm', 2965)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Duane', N'Lindwasser', N'Pavlata', 45, 58555, N'Male', N'Dermatologists', N'151 Carey Avenue', CAST(N'2000-04-05' AS Date), 6604, N'8-2 pm', 2253)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Samara', N'Seal', N'Glenfield', 46, 51970, N'Female', N'Cardiologist', N'4171 Clarendon Park', CAST(N'2000-03-24' AS Date), 6436, N'2-8 am', 3851)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Iago', N'Mallam', N'Dowdall', 47, 30391, N'Male', N'Endocrinologist', N'40 Kensington Terrace', CAST(N'2000-03-06' AS Date), 4224, N'8-2 pm', 3676)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lottie', N'Vizard', N'Nacey', 48, 64074, N'Female', N'Cardiologist', N'90 Rigney Plaza', CAST(N'2001-12-20' AS Date), 2156, N'8-2 pm', 2658)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Nat', N'Fylan', N'McIlvaney', 49, 39171, N'Male', N'Dermatologists', N'0015 Golden Leaf Way', CAST(N'2001-12-10' AS Date), 6119, N'2-8 pm', 2138)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Tybalt', N'Mallows', N'Lockey', 50, 86862, N'Male', N'Cardiologist', N'5 Crowley Junction', CAST(N'2002-06-10' AS Date), 5415, N'8-2 a', 3616)
INSERT [dbo].[Doctor] ([FName], [MName], [LName], [D_ID], [Password], [Gender], [Spec], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ahmed', N'Y', N'a', 51, 155200, N'Male', N's', N'home', CAST(N'2021-01-09' AS Date), 203040, N'8-2 am', 2000)
GO
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'blood', 4, 60)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'culosis', 8, 46)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'eyes', 9, 76)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'general', 1, 42)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'Haematology', 10, 35)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'Hepatitis', 11, 60)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'HIV', 5, 23)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'musles', 6, 53)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'Serology', 3, 83)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'Syphilis', 7, 34)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'Tuber', 17, 81)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'urine', 2, 15)
INSERT [dbo].[MedicalTests] ([Test_Name], [Test_Code], [Price]) VALUES (N'xrays', 12, 88)
GO
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Abilify', 7977, 150, 8)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Acetaminophen', 3760, 181, 19)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Actos', 2487, 166, 7)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Acyclovir', 7915, 130, 5)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Adderall', 1071, 63, 26)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Gaviscon', 1476, 104, 1)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Gemcitabine', 4417, 112, 0)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Gemfibrozil', 4289, 96, 1)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Gentamicin', 1344, 175, 28)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Genvoya', 5965, 64, 10)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Geodon', 4798, 82, 1)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Gilenya', 2351, 111, 6)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Hydrocodone', 3467, 49, 16)
INSERT [dbo].[Medicine] ([Med_Name], [Med_Code], [Med_Price], [Units_Available]) VALUES (N'Test', 0, 10, 2)
GO
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kent', N'Camsey', N'Cornew', 1, 46879, N'Male      ', N'7727 Thackeray Center', CAST(N'2000-07-22' AS Date), 5534, N'8-2 a     ', 3382)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Benyamin', N'Chaim', N'Saffen', 2, 62259, N'Male      ', N'71540 Lakewood Gardens Place', CAST(N'2002-09-19' AS Date), 3940, N'8-2 a     ', 3356)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Travis', N'Burdge', N'Leetham', 3, 14509, N'Male      ', N'7 Westridge Street', CAST(N'2000-12-04' AS Date), 3075, N'2-8 pm    ', 2997)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Gerick', N'Rouff', N'Blasetti', 4, 79061, N'Male      ', N'4840 Linden Street', CAST(N'2002-07-26' AS Date), 5904, N'2-8 pm    ', 3341)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Evan', N'Blumson', N'Espinay', 5, 62431, N'Male      ', N'86217 Beilfuss Point', CAST(N'2000-05-06' AS Date), 4670, N'8-2 pm    ', 2773)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Margarethe', N'Tethcote', N'Phalp', 6, 75180, N'Female    ', N'50 John Wall Junction', CAST(N'2001-03-01' AS Date), 6472, N'8-2 a     ', 2568)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Vance', N'Shulem', N'Berick', 7, 94917, N'Male      ', N'79 Pennsylvania Terrace', CAST(N'2000-05-18' AS Date), 4210, N'2-8 am    ', 2071)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Zared', N'Abramson', N'Hallahan', 8, 47718, N'Male      ', N'88 Eagle Crest Street', CAST(N'2001-08-07' AS Date), 1433, N'2-8 am    ', 2527)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Susanetta', N'Lazar', N'Chrisp', 9, 89755, N'Female    ', N'700 Colorado Place', CAST(N'2001-04-05' AS Date), 6035, N'8-2 pm    ', 3963)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lucie', N'Niemiec', N'Edis', 10, 33313, N'Female    ', N'81756 Florence Place', CAST(N'2000-02-14' AS Date), 4258, N'2-8 pm    ', 3763)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Nanny', N'Crosen', N'De Ferraris', 11, 57657, N'Female    ', N'55704 Longview Road', CAST(N'2001-10-22' AS Date), 1305, N'8-2 pm    ', 3273)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Cherey', N'Butchart', N'Coolahan', 12, 71042, N'Female    ', N'467 Algoma Court', CAST(N'2001-02-27' AS Date), 3069, N'2-8 pm    ', 2545)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Marcus', N'Townby', N'Oehme', 13, 57918, N'Male      ', N'3478 Marcy Park', CAST(N'2000-08-28' AS Date), 6404, N'8-2 pm    ', 2742)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Myrna', N'Bullingham', N'Ahren', 14, 31829, N'Female    ', N'671 Jenna Circle', CAST(N'2002-04-09' AS Date), 4040, N'2-8 am    ', 3487)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Dicky', N'Davidovitch', N'MacTurlough', 15, 50827, N'Male      ', N'16503 Stone Corner Street', CAST(N'2002-09-30' AS Date), 1374, N'8-2 a     ', 3644)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Gayla', N'Culshew', N'Narup', 16, 86004, N'Female    ', N'672 Evergreen Pass', CAST(N'2002-10-05' AS Date), 6996, N'8-2 pm    ', 2799)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jaquelyn', N'Chetham', N'Bastin', 17, 43382, N'Female    ', N'9616 Holy Cross Place', CAST(N'2000-08-28' AS Date), 2132, N'2-8 am    ', 2192)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Archer', N'Gini', N'Piens', 18, 66060, N'Male      ', N'7 Bunting Terrace', CAST(N'2002-05-19' AS Date), 2492, N'8-2 a     ', 2032)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Vania', N'Lange', N'Allsupp', 19, 96134, N'Female    ', N'81597 Crest Line Center', CAST(N'2002-11-22' AS Date), 4983, N'8-2 a     ', 2967)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Hamish', N'Irvine', N'Allaker', 20, 84661, N'Male      ', N'11 Summit Terrace', CAST(N'2001-08-05' AS Date), 1021, N'8-2 pm    ', 3480)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Nalani', N'Butt Gow', N'Klewer', 21, 19066, N'Female    ', N'9 Bayside Point', CAST(N'2002-05-12' AS Date), 2057, N'2-8 am    ', 3130)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Wallas', N'Borzoni', N'Stonard', 22, 44018, N'Male      ', N'13046 Crowley Junction', CAST(N'2001-11-12' AS Date), 5280, N'2-8 pm    ', 3234)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Berkeley', N'Ruoss', N'Ashbridge', 23, 98512, N'Male      ', N'790 Sherman Place', CAST(N'2000-12-21' AS Date), 5300, N'2-8 pm    ', 2935)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Othelia', N'Joselevitz', N'Worthing', 24, 82704, N'Female    ', N'54797 Derek Drive', CAST(N'2001-05-22' AS Date), 1471, N'2-8 pm    ', 3458)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Phylys', N'Wratten', N'Charrisson', 25, 37862, N'Female    ', N'48282 Manitowish Lane', CAST(N'2000-10-06' AS Date), 5666, N'8-2 pm    ', 2867)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Reginauld', N'Blinco', N'Lyston', 26, 77443, N'Male      ', N'07 Schiller Plaza', CAST(N'2001-01-27' AS Date), 4393, N'8-2 pm    ', 3132)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Alvis', N'Pimblett', N'Chitter', 27, 64761, N'Male      ', N'11 Gale Junction', CAST(N'2000-05-10' AS Date), 4797, N'2-8 pm    ', 2131)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Fedora', N'Scotcher', N'Speechley', 28, 88497, N'Female    ', N'9574 Texas Terrace', CAST(N'2001-11-27' AS Date), 2070, N'2-8 pm    ', 3549)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Bonnie', N'Zamorrano', N'Rowling', 29, 34284, N'Female    ', N'96427 Northland Court', CAST(N'2002-02-16' AS Date), 5984, N'8-2 pm    ', 3008)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Luciana', N'Woodford', N'Chartre', 30, 30274, N'Female    ', N'03 Reinke Park', CAST(N'2001-07-25' AS Date), 2251, N'2-8 am    ', 3738)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Boigie', N'Michelmore', N'Keenor', 31, 17308, N'Male      ', N'4 Caliangt Crossing', CAST(N'2000-01-13' AS Date), 4605, N'8-2 a     ', 3246)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Crawford', N'McGuffie', N'Topaz', 32, 32921, N'Male      ', N'0 Helena Crossing', CAST(N'2000-12-04' AS Date), 2034, N'2-8 am    ', 2108)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Daniel', N'Yeoman', N'Bemment', 33, 78085, N'Male      ', N'0643 West Park', CAST(N'2002-09-26' AS Date), 5190, N'2-8 am    ', 2834)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lonnard', N'Gamell', N'Olifaunt', 34, 91295, N'Male      ', N'6353 Browning Crossing', CAST(N'2000-03-15' AS Date), 6864, N'8-2 a     ', 3787)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Buck', N'McPhail', N'Lownes', 35, 24933, N'Male      ', N'5352 Kipling Court', CAST(N'2002-12-23' AS Date), 6550, N'2-8 am    ', 3577)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Faunie', N'Bulter', N'Ridgers', 36, 51269, N'Female    ', N'7458 Talisman Junction', CAST(N'2002-02-06' AS Date), 4968, N'8-2 a     ', 3287)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Odie', N'Cushion', N'Kivelhan', 37, 55255, N'Male      ', N'4591 Nelson Parkway', CAST(N'2002-05-03' AS Date), 1982, N'8-2 a     ', 2718)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Wilden', N'Wormell', N'Binnell', 38, 19864, N'Male      ', N'31348 Stuart Circle', CAST(N'2000-07-15' AS Date), 5845, N'2-8 am    ', 2774)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Patty', N'Boake', N'Johnsson', 39, 60507, N'Female    ', N'11203 Monument Center', CAST(N'2000-05-23' AS Date), 3080, N'2-8 pm    ', 2183)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ambrosius', N'Dunster', N'Skarin', 40, 48620, N'Male      ', N'1826 Elgar Way', CAST(N'2000-02-27' AS Date), 3652, N'8-2 pm    ', 2850)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Carmita', N'Delion', N'Sealand', 41, 41132, N'Female    ', N'9877 Melvin Parkway', CAST(N'2001-09-01' AS Date), 4327, N'2-8 am    ', 2265)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Rozina', N'McColl', N'Dalliston', 42, 51851, N'Female    ', N'3 Rutledge Lane', CAST(N'2002-06-29' AS Date), 1535, N'8-2 pm    ', 2556)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Yard', N'Lye', N'Jedrzaszkiewicz', 43, 19453, N'Male      ', N'8 Prairieview Center', CAST(N'2000-08-05' AS Date), 2384, N'8-2 a     ', 2114)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Arney', N'Hardaker', N'Rake', 44, 68511, N'Male      ', N'68361 Carioca Junction', CAST(N'2001-03-28' AS Date), 2821, N'2-8 pm    ', 3117)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jedediah', N'Mattingley', N'Colt', 45, 40480, N'Male      ', N'0314 Main Plaza', CAST(N'2001-08-20' AS Date), 6333, N'8-2 a     ', 3237)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Bonnie', N'Hay', N'Brafferton', 46, 41549, N'Female    ', N'3 Lukken Terrace', CAST(N'2000-07-01' AS Date), 6724, N'2-8 am    ', 2567)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Terri', N'Braysher', N'Peake', 47, 55334, N'Female    ', N'3530 Schurz Park', CAST(N'2000-06-30' AS Date), 3142, N'2-8 pm    ', 2886)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Sonnnie', N'Cudbird', N'Nicolls', 48, 72681, N'Female    ', N'376 Lakewood Gardens Hill', CAST(N'2000-02-11' AS Date), 4274, N'2-8 am    ', 2960)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'James', N'Winchcombe', N'Winspire', 49, 15716, N'Male      ', N'8 Jenifer Place', CAST(N'2000-01-07' AS Date), 5297, N'2-8 pm    ', 3511)
INSERT [dbo].[Nurse] ([FName], [MName], [LName], [N_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Florence', N'Cleminshaw', N'Ambrose', 50, 44846, N'Female    ', N'181 Beilfuss Way', CAST(N'2000-09-21' AS Date), 6086, N'8-2 a     ', 2117)
GO
INSERT [dbo].[P_Unit] ([P_ID], [P_Unit]) VALUES (18, 4)
INSERT [dbo].[P_Unit] ([P_ID], [P_Unit]) VALUES (51, 3)
INSERT [dbo].[P_Unit] ([P_ID], [P_Unit]) VALUES (52, 1)
INSERT [dbo].[P_Unit] ([P_ID], [P_Unit]) VALUES (53, 1)
INSERT [dbo].[P_Unit] ([P_ID], [P_Unit]) VALUES (54, 1)
INSERT [dbo].[P_Unit] ([P_ID], [P_Unit]) VALUES (55, 6)
GO
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Cthrine', N'Alliott', N'Silkstone', 1, CAST(N'2002-09-22' AS Date), N'Female    ', N'73 Carioca Avenue', 4957, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Anna-diana', N'Stuer', N'Frankum', 4, CAST(N'2000-05-14' AS Date), N'Female    ', N'5558 Walton Lane', 5339, 0, CAST(N'2020-01-07' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Craig', N'Rougier', N'Maliffe', 6, CAST(N'2001-06-28' AS Date), N'Male      ', N'19 Norway Maple Center', 2440, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Waring', N'Rustan', N'Timcke', 7, CAST(N'2000-11-29' AS Date), N'Male      ', N'17778 Old Shore Way', 4841, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Willi', N'Jakubovicz', N'Tortoishell', 8, CAST(N'2002-05-10' AS Date), N'Male      ', N'3 Bultman Pass', 6010, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Binni', N'Bruck', N'Trench', 9, CAST(N'2002-06-11' AS Date), N'Female    ', N'0045 Fairfield Terrace', 4756, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Nettie', N'Lohden', N'Tregian', 10, CAST(N'2000-12-09' AS Date), N'Female    ', N'54 Porter Terrace', 6951, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Everard', N'Middlehurst', N'Brewster', 11, CAST(N'2000-04-05' AS Date), N'Male      ', N'38 Hoepker Street', 6780, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Rhonda', N'McGuggy', N'Guerola', 12, CAST(N'2000-04-25' AS Date), N'Female    ', N'9908 Oneill Way', 2003, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Malena', N'Allawy', N'Tigwell', 13, CAST(N'2002-09-22' AS Date), N'Female    ', N'2 Jenna Crossing', 3735, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Kelly', N'Wildber', N'Kilvington', 14, CAST(N'2000-04-16' AS Date), N'Female    ', N'731 Clyde Gallagher Drive', 1673, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Braden', N'Heazel', N'Christall', 15, CAST(N'2000-08-10' AS Date), N'Male      ', N'93 Susan Court', 2022, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Sonnnie', N'Grieve', N'Gowans', 16, CAST(N'2001-01-06' AS Date), N'Female    ', N'51 Union Junction', 6045, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Lefty', N'Pollicott', N'Giacopetti', 17, CAST(N'2001-06-05' AS Date), N'Male      ', N'36 Harper Center', 6464, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Ivy', N'McGrory', N'Raddish', 18, CAST(N'2001-06-13' AS Date), N'Female    ', N'255 4th Plaza', 1808, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Brenda', N'Cowden', N'Duncan', 19, CAST(N'2002-09-04' AS Date), N'Female    ', N'96257 Elgar Hill', 2765, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Barton', N'Charrette', N'Lipyeat', 20, CAST(N'2000-04-06' AS Date), N'Male      ', N'54 Harbort Road', 6947, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Benjamen', N'Pullin', N'Rigts', 21, CAST(N'2002-07-29' AS Date), N'Male      ', N'6 School Terrace', 1913, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Keven', N'Coultar', N'Labrow', 22, CAST(N'2002-01-04' AS Date), N'Male      ', N'6961 Lawn Way', 1348, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Clemmy', N'Cattenach', N'Daenen', 23, CAST(N'2001-08-10' AS Date), N'Female    ', N'34129 Orin Place', 2522, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Ivie', N'McAllen', N'Cogdell', 24, CAST(N'2000-06-08' AS Date), N'Female    ', N'066 Shopko Trail', 2400, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Hoebart', N'Papen', N'Hutchason', 25, CAST(N'2002-02-18' AS Date), N'Male      ', N'06 Burning Wood Park', 5596, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Mildred', N'La Batie', N'Berfoot', 26, CAST(N'2000-07-14' AS Date), N'Female    ', N'113 High Crossing Lane', 1189, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Babbette', N'Schubuser', N'Franzel', 27, CAST(N'2000-06-29' AS Date), N'Female    ', N'3984 Village Green Drive', 2056, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Ardeen', N'Bullough', N'Ewen', 28, CAST(N'2002-03-15' AS Date), N'Female    ', N'658 Maryland Crossing', 1955, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Jeffry', N'Greves', N'Nann', 29, CAST(N'2002-03-30' AS Date), N'Male      ', N'07 Randy Pass', 3046, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Camel', N'Lynds', N'Haibel', 30, CAST(N'2001-12-04' AS Date), N'Female    ', N'9636 Banding Point', 5237, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Sibilla', N'Higgen', N'Mantle', 31, CAST(N'2000-01-16' AS Date), N'Female    ', N'81935 Johnson Way', 4165, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Sheela', N'Haspineall', N'Tregidga', 32, CAST(N'2000-05-24' AS Date), N'Female    ', N'7249 John Wall Lane', 6696, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Delora', N'Thoday', N'Jovey', 33, CAST(N'2002-05-23' AS Date), N'Female    ', N'1 Forest Alley', 2254, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Sharona', N'Leitche', N'Brinklow', 34, CAST(N'2000-09-12' AS Date), N'Female    ', N'8850 Grim Court', 1347, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Glen', N'Oleksinski', N'Keat', 35, CAST(N'2000-05-04' AS Date), N'Female    ', N'840 Rockefeller Circle', 5763, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Billy', N'Sydenham', N'Orfeur', 36, CAST(N'2002-07-10' AS Date), N'Female    ', N'03 Cottonwood Avenue', 2735, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Karla', N'Vasechkin', N'Roach', 37, CAST(N'2000-01-11' AS Date), N'Female    ', N'5 Toban Street', 5146, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Esdras', N'Dranfield', N'Lannon', 38, CAST(N'2000-05-10' AS Date), N'Male      ', N'427 Washington Circle', 6562, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Morris', N'Eydel', N'Benedict', 39, CAST(N'2002-02-07' AS Date), N'Male      ', N'1 Hayes Street', 3647, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Oswald', N'Neal', N'Sarten', 40, CAST(N'2000-05-04' AS Date), N'Male      ', N'14590 Mosinee Drive', 5589, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Victor', N'Caroli', N'Stolli', 41, CAST(N'2000-05-15' AS Date), N'Male      ', N'603 Rusk Road', 5971, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Egon', N'McDonnell', N'Ainsworth', 42, CAST(N'2002-08-03' AS Date), N'Male      ', N'48924 Weeping Birch Street', 5652, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Kingsly', N'Daugherty', N'Morando', 43, CAST(N'2001-03-11' AS Date), N'Male      ', N'6162 Vermont Junction', 6993, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Rutledge', N'Yeend', N'Peach', 44, CAST(N'2002-10-27' AS Date), N'Male      ', N'4667 Marquette Parkway', 1707239322, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Joane', N'Chaimson', N'Bletsor', 45, CAST(N'2000-11-14' AS Date), N'Female    ', N'6 Pearson Parkway', 1644, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Ddene', N'Fulep', N'Arundel', 46, CAST(N'2002-07-06' AS Date), N'Female    ', N'50 Marcy Parkway', 5083, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Rosie', N'Fishlee', N'Sears', 47, CAST(N'2001-10-05' AS Date), N'Female    ', N'1 Del Mar Way', 4575, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Phillie', N'McKag', N'Delacourt', 48, CAST(N'2000-12-10' AS Date), N'Female    ', N'04 Evergreen Hill', 4398, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'Abbie', N'D''Errico', N'Pena', 49, CAST(N'2001-01-13' AS Date), N'Male      ', N'343 Prairieview Center', 5664, 0, CAST(N'2020-12-29' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'h', N'h', N'h', 51, CAST(N'2021-01-09' AS Date), N'h         ', N'h', 12, 0, CAST(N'2021-01-09' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'ff', N'f', N'f', 52, CAST(N'2021-01-09' AS Date), N'f         ', N'f', 14, 0, CAST(N'2021-01-09' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'j', N'j', N'j', 53, CAST(N'2021-01-09' AS Date), N'j         ', N'j', 75, 0, CAST(N'2021-01-09' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'k', N'k', N'k', 54, CAST(N'2021-01-09' AS Date), N'k         ', N'k', 78, 0, CAST(N'2021-01-09' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N's', N's', N's', 55, CAST(N'2021-01-09' AS Date), N's         ', N's', 474, 0, CAST(N'2021-01-09' AS Date))
INSERT [dbo].[Patient] ([FName], [MName], [LName], [Pa_ID], [BD], [Gender], [Address], [Phone], [RoomNumber], [DateCheckIn]) VALUES (N'asd', N'asd', N'asd', 56, CAST(N'2005-01-09' AS Date), N'm         ', N'asd', 12354, 0, CAST(N'2021-01-08' AS Date))
GO
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (4, N'Geodon')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (6, N'Acyclovir')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (6, N'Gemfibrozil')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (7, N'Actos')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (7, N'Gemcitabine')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (8, N'Acetaminophen')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (8, N'Geodon')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (9, N'Gaviscon')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (10, N'Gemfibrozil')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (11, N'Gemcitabine')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (12, N'Genvoya')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (13, N'Adderall')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (15, N'Gemfibrozil')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (16, N'Gemfibrozil')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (17, N'Abilify')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (18, N'Acyclovir')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (19, N'Gentamicin')
INSERT [dbo].[Patient_Medicine] ([P_ID], [P_Med]) VALUES (20, N'Actos')
GO
INSERT [dbo].[Patient_Room] ([P_ID], [R_Room], [Ndays]) VALUES (51, 2, 12)
INSERT [dbo].[Patient_Room] ([P_ID], [R_Room], [Ndays]) VALUES (52, 3, 12)
INSERT [dbo].[Patient_Room] ([P_ID], [R_Room], [Ndays]) VALUES (53, 4, 12)
INSERT [dbo].[Patient_Room] ([P_ID], [R_Room], [Ndays]) VALUES (54, 10, 12)
INSERT [dbo].[Patient_Room] ([P_ID], [R_Room], [Ndays]) VALUES (55, 2, 12)
GO
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (4, N'Hepatitis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (6, N'culosis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (6, N'Tuber')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (7, N'Syphilis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (8, N'culosis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (9, N'Haematology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (9, N'Serology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (10, N'Haematology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (10, N'HIV')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (11, N'Haematology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (12, N'Blood')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (13, N'Serology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (14, N'Hepatitis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (15, N'HIV')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (16, N'Tuber')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (17, N'Syphilis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (18, N'culosis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (19, N'Serology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (20, N'Haematology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (21, N'Haematology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (22, N'Blood')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (23, N'Serology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (24, N'Hepatitis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (25, N'HIV')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (26, N'Tuber')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (27, N'Syphilis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (28, N'culosis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (29, N'Serology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (30, N'Haematology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (31, N'Haematology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (32, N'Blood')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (33, N'Serology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (34, N'Hepatitis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (35, N'HIV')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (36, N'Tuber')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (37, N'Syphilis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (38, N'culosis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (39, N'Serology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (40, N'Haematology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (41, N'Haematology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (42, N'Blood')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (43, N'Serology')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (44, N'Hepatitis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (45, N'HIV')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (46, N'Tuber')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (47, N'Syphilis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (48, N'culosis')
INSERT [dbo].[Patient_Tests] ([P_ID], [P_Test]) VALUES (49, N'Serology')
GO
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (1, N'cold', N'', NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (4, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (6, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (7, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (8, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (9, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (10, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (11, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (12, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (13, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (14, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (15, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (16, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (17, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (18, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (19, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (20, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (21, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (22, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (23, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (24, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (25, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (26, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (27, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (28, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (29, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (30, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (31, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (32, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (33, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (34, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (35, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (36, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (37, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (38, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (39, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (40, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (41, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (42, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (43, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (44, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (45, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (46, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (47, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (48, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (49, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (51, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (52, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (53, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (54, NULL, NULL, NULL)
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (55, N' ', N' ', CAST(N'1900-01-01' AS Date))
INSERT [dbo].[PatientDiagnostic] ([PD_ID], [Illness], [Notes], [Last_Visit]) VALUES (56, N' ', N' ', CAST(N'1900-01-01' AS Date))
GO
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (1, 0, 0, 0, 0)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (4, NULL, 0, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (6, NULL, 0, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (7, NULL, NULL, NULL, 0)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (8, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (9, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (10, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (11, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (12, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (13, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (14, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (15, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (16, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (17, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (18, 100, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (19, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (20, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (21, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (22, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (23, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (24, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (25, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (26, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (27, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (28, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (29, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (30, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (31, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (32, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (33, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (34, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (35, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (36, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (37, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (38, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (39, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (40, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (41, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (42, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (43, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (44, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (45, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (46, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (47, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (48, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (49, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (51, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (52, NULL, 0, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (53, NULL, NULL, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (54, NULL, 0, NULL, NULL)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (55, 300, 0, 0, 0)
INSERT [dbo].[PatientPayment] ([P_ID], [Unit_fees], [Room_fees], [Test_fees], [Med_fees]) VALUES (56, 0, 0, 0, 0)
GO
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Aurelie', N'Sailor', N'Cater', 1, 85324, N'Female    ', N'0 Artisan Road', CAST(N'2001-12-02' AS Date), 5751, N'8-2 a     ', 3914)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kin', N'Older', N'Peatman', 2, 20863, N'Male      ', N'25 Omar ebn khatab st.', CAST(N'2000-04-19' AS Date), 1482, N'8-2 a     ', 3498)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Adah', N'Burgan', N'Clipson', 3, 66848, N'Female    ', N'26 Forest Dale Alley', CAST(N'2002-06-06' AS Date), 1478, N'8-2 pm    ', 3268)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Mahmoud', N'Lacy', N'Foord', 4, 78433, N'Male      ', N'31 Annamark Parkway', CAST(N'2001-12-18' AS Date), 1235, N'2-8 am    ', 3091)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Pincas', N'Ofen', N'Dalwood', 5, 55536, N'Male      ', N'08 Shoshone Place', CAST(N'2002-03-26' AS Date), 5469, N'8-2 a     ', 3738)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Gustave', N'Gainforth', N'Guilfoyle', 6, 31924, N'Male      ', N'529 Hoepker Terrace', CAST(N'2000-04-24' AS Date), 2345, N'8-2 pm    ', 2415)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Salvidor', N'Paddison', N'Aleksahkin', 7, 61672, N'Male      ', N'90329 Schiller Crossing', CAST(N'2002-03-16' AS Date), 3547, N'8-2 pm    ', 2166)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Hamilton', N'Ysson', N'Coppock.', 8, 56603, N'Male      ', N'1706 Bluejay Street', CAST(N'2000-07-01' AS Date), 1222, N'2-8 pm    ', 2064)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Mickey', N'Triggs', N'Sine', 9, 20541, N'Male      ', N'41 Manitowish Pass', CAST(N'2001-07-25' AS Date), 5548, N'2-8 pm    ', 3806)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Felix', N'Tiner', N'Matschuk', 10, 76227, N'Male      ', N'86 High Crossing Drive', CAST(N'2001-01-14' AS Date), 2608, N'8-2 pm    ', 3755)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kiley', N'Lowis', N'Elger', 11, 56941, N'Male      ', N'5007 Springview Place', CAST(N'2000-01-30' AS Date), 5704, N'8-2 pm    ', 3773)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Pedro', N'Tejada', N'Drews', 12, 77812, N'Male      ', N'61 Crowley Street', CAST(N'2000-09-27' AS Date), 6131, N'2-8 pm    ', 3297)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Hewitt', N'Lovart', N'Conachy', 13, 63926, N'Male      ', N'82165 Westridge Lane', CAST(N'2001-05-27' AS Date), 4502, N'8-2 a     ', 3288)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Laurie', N'Penhearow', N'Varnam', 14, 17908, N'Male      ', N'399 La Follette Pass', CAST(N'2002-06-15' AS Date), 2073, N'2-8 am    ', 2432)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Chevalier', N'Illesley', N'Glendinning', 15, 37905, N'Male      ', N'77 Clyde Gallagher Junction', CAST(N'2000-03-22' AS Date), 3789, N'2-8 am    ', 2600)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jade', N'Wakeham', N'Potkins', 16, 37381, N'Female    ', N'74069 Texas Terrace', CAST(N'2001-08-21' AS Date), 4469, N'8-2 pm    ', 3459)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Alejoa', N'Brandel', N'Amott', 17, 47965, N'Male      ', N'62 Kim Crossing', CAST(N'2000-10-13' AS Date), 1930, N'8-2 pm    ', 2584)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Charis', N'Norcliff', N'Dinley', 18, 36856, N'Female    ', N'234 Saint Paul Way', CAST(N'2002-05-18' AS Date), 4403, N'8-2 pm    ', 3070)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Giordano', N'Handrick', N'Matussevich', 19, 95268, N'Male      ', N'631 Dawn Trail', CAST(N'2002-02-08' AS Date), 5601, N'2-8 am    ', 2731)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Gail', N'O''Teague', N'Island', 20, 68402, N'Female    ', N'06768 Sunfield Hill', CAST(N'2000-02-15' AS Date), 2085, N'2-8 am    ', 3311)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Forest', N'Lempke', N'Castaneda', 21, 15482, N'Male      ', N'24944 Erie Road', CAST(N'2000-06-07' AS Date), 6253, N'8-2 a     ', 2917)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Adella', N'Hickinbottom', N'Marklew', 22, 73275, N'Female    ', N'4899 Garrison Pass', CAST(N'2001-06-21' AS Date), 2500, N'8-2 a     ', 3110)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Scarface', N'Hallgarth', N'Willment', 23, 30573, N'Male      ', N'401 Sommers Road', CAST(N'2002-06-09' AS Date), 5340, N'2-8 am    ', 3447)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lefty', N'Lindner', N'Lidstone', 24, 36564, N'Male      ', N'903 Kim Court', CAST(N'2001-03-24' AS Date), 5497, N'8-2 a     ', 2921)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kellina', N'Exeter', N'McFetridge', 25, 63622, N'Female    ', N'7 Eggendart Lane', CAST(N'2000-12-21' AS Date), 6725, N'8-2 pm    ', 2910)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Garnet', N'Jordison', N'Coleman', 26, 92882, N'Female    ', N'02203 Commercial Crossing', CAST(N'2000-12-22' AS Date), 5870, N'8-2 pm    ', 2543)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'De', N'Bromhead', N'Sharpe', 27, 16356, N'Female    ', N'7967 Westport Center', CAST(N'2001-03-25' AS Date), 1342, N'8-2 pm    ', 2376)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Remington', N'Sutty', N'Scryne', 28, 17136, N'Male      ', N'6 Eagan Plaza', CAST(N'2001-12-03' AS Date), 2074, N'8-2 pm    ', 3625)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Carmelia', N'Joannidi', N'Drache', 29, 68004, N'Female    ', N'3 Portage Place', CAST(N'2002-11-05' AS Date), 4583, N'2-8 pm    ', 3117)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Herby', N'Pomphrey', N'Doughty', 30, 36822, N'Male      ', N'59146 Macpherson Avenue', CAST(N'2001-11-30' AS Date), 5989, N'8-2 pm    ', 2020)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Adah', N'Cosgry', N'Pawlik', 31, 34894, N'Female    ', N'9367 Sloan Avenue', CAST(N'2000-07-19' AS Date), 2286, N'2-8 am    ', 2852)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Beulah', N'Karmel', N'Calladine', 32, 69139, N'Female    ', N'7193 Bonner Avenue', CAST(N'2002-03-05' AS Date), 1732, N'8-2 a     ', 3704)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lothario', N'Olivera', N'Banyard', 33, 49319, N'Male      ', N'8430 Homewood Plaza', CAST(N'2001-05-02' AS Date), 1317, N'8-2 a     ', 3761)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Cherise', N'Joscelyn', N'Sturdgess', 34, 56304, N'Female    ', N'3 Westend Park', CAST(N'2000-10-20' AS Date), 6168, N'2-8 pm    ', 3820)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Harlan', N'Tremollet', N'Antusch', 35, 43527, N'Male      ', N'722 Moland Way', CAST(N'2000-01-23' AS Date), 2751, N'2-8 pm    ', 2038)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Earl', N'Richardet', N'Setterthwait', 36, 72488, N'Male      ', N'1985 Hollow Ridge Place', CAST(N'2001-12-13' AS Date), 3620, N'2-8 pm    ', 3915)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Fidela', N'Foy', N'Farndell', 37, 31780, N'Female    ', N'91 Del Mar Junction', CAST(N'2000-09-17' AS Date), 4344, N'2-8 am    ', 2679)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Eleonora', N'Brundrett', N'Penvarne', 38, 96990, N'Female    ', N'4194 Welch Terrace', CAST(N'2000-02-28' AS Date), 1408, N'8-2 pm    ', 2889)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Maitilde', N'Norway', N'Petrashov', 39, 16868, N'Female    ', N'25 Carey Hill', CAST(N'2002-03-17' AS Date), 1373, N'2-8 am    ', 2912)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Tallou', N'Eastbury', N'Santhouse', 40, 93281, N'Female    ', N'0 Loftsgordon Road', CAST(N'2000-08-06' AS Date), 5251, N'2-8 pm    ', 3610)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lynnelle', N'Ickowicz', N'McGinnis', 41, 88950, N'Female    ', N'45477 Lillian Trail', CAST(N'2000-11-14' AS Date), 6358, N'8-2 a     ', 2182)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ellwood', N'Piggott', N'Lathleiff', 42, 80254, N'Male      ', N'078 Scoville Court', CAST(N'2001-05-01' AS Date), 5934, N'2-8 am    ', 2069)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jacques', N'Bladder', N'Duckerin', 43, 39863, N'Male      ', N'64851 Hauk Avenue', CAST(N'2000-05-10' AS Date), 5490, N'8-2 pm    ', 2699)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Hodge', N'Spoole', N'Kellert', 44, 37295, N'Male      ', N'92 Warbler Pass', CAST(N'2000-04-21' AS Date), 6954, N'8-2 pm    ', 2176)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Godfry', N'Josefsen', N'Bennie', 45, 80589, N'Male      ', N'65 Welch Point', CAST(N'2000-12-20' AS Date), 2421, N'2-8 am    ', 2022)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Chic', N'McVaugh', N'Itzkovitch', 46, 73983, N'Male      ', N'80789 Dennis Court', CAST(N'2000-02-02' AS Date), 2281, N'8-2 pm    ', 2270)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Antonie', N'Badam', N'Creese', 47, 49530, N'Female    ', N'78 Corscot Avenue', CAST(N'2002-06-07' AS Date), 3045, N'8-2 pm    ', 3175)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Taddeusz', N'Howsego', N'Yurocjkin', 48, 25336, N'Male      ', N'0 Havey Court', CAST(N'2001-11-08' AS Date), 2708, N'2-8 am    ', 3592)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Lewie', N'Barbosa', N'Rushsorth', 49, 23517, N'Male      ', N'198 La Follette Pass', CAST(N'2001-03-19' AS Date), 5428, N'8-2 pm    ', 2097)
INSERT [dbo].[Pharmacist] ([FName], [MName], [LName], [P_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Meredeth', N'Bareford', N'Penylton', 50, 27717, N'Male      ', N'25 Moulton Drive', CAST(N'2001-08-19' AS Date), 2197, N'2-8 am    ', 2927)
GO
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Yovonnda', N'Seldner', N'Van der Krui', 1, 96807, N'Female    ', N'91 Sutteridge Crossing', CAST(N'2000-08-06' AS Date), 2602, N'2-8 am    ', 2121)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Allis', N'Clausner', N'Van der Kruis', 2, 84142, N'Female    ', N'3662 Independence Way', CAST(N'2002-06-22' AS Date), 1244, N'8-2 a     ', 3558)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Margalit', N'Cawkill', N'Dowbakin', 3, 48091, N'Female    ', N'1979 Milwaukee Road', CAST(N'2000-12-20' AS Date), 6619, N'2-8 am    ', 3825)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Innis', N'Rames', N'Posnett', 4, 70084, N'Male      ', N'65438 Garrison Court', CAST(N'2000-06-15' AS Date), 6388, N'2-8 am    ', 3488)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jonis', N'Firmin', N'Matthensen', 5, 14979, N'Female    ', N'64 Transport Lane', CAST(N'2000-11-29' AS Date), 6484, N'8-2 pm    ', 3772)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Carce', N'Priter', N'Pietrowski', 6, 45743, N'Male      ', N'94 Forest Road', CAST(N'2000-03-15' AS Date), 6728, N'2-8 am    ', 3000)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Wilma', N'Wellesley', N'Taillant', 7, 79143, N'Female    ', N'05020 Mcguire Way', CAST(N'2001-04-17' AS Date), 4459, N'2-8 am    ', 3363)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Kenton', N'Piggins', N'Jacob', 8, 85987, N'Male      ', N'62 Goodland Trail', CAST(N'2002-12-09' AS Date), 6212, N'2-8 am    ', 2952)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Crystal', N'Hayselden', N'Gavin', 9, 28207, N'Female    ', N'136 Becker Point', CAST(N'2002-10-09' AS Date), 3683, N'2-8 pm    ', 2731)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Joe', N'Elfe', N'Bartels', 10, 123, N'Male      ', N'880 Linden Hill', CAST(N'2000-04-02' AS Date), 3166, N'2-8 am    ', 3006)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Cherida', N'Posvner', N'Lodevick', 11, 60052, N'Female    ', N'7 Cambridge Park', CAST(N'2000-12-17' AS Date), 1439, N'8-2 pm    ', 2213)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ruthy', N'Shere', N'Morcombe', 12, 34007, N'Female    ', N'61114 Walton Place', CAST(N'2001-03-09' AS Date), 4173, N'2-8 am    ', 3711)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Sayers', N'Maitland', N'Chastanet', 13, 53524, N'Male      ', N'64 Moulton Drive', CAST(N'2000-08-09' AS Date), 3071, N'2-8 am    ', 3462)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ara', N'Klesel', N'Sawle', 14, 64901, N'Female    ', N'144 Iowa Circle', CAST(N'2000-01-12' AS Date), 3296, N'2-8 pm    ', 2352)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Rock', N'Ghidetti', N'Tight', 15, 98095, N'Male      ', N'1 Judy Pass', CAST(N'2001-08-04' AS Date), 4837, N'2-8 pm    ', 3208)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Roch', N'Romer', N'O''Scully', 16, 69436, N'Female    ', N'14878 Sloan Trail', CAST(N'2001-07-03' AS Date), 5859, N'8-2 a     ', 3214)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Robert', N'Sprigin', N'Ballendine', 17, 96468, N'Male      ', N'0 Holmberg Road', CAST(N'2000-04-09' AS Date), 2932, N'8-2 a     ', 2366)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Adiana', N'Ellicombe', N'Sherrett', 18, 91210, N'Female    ', N'2732 Jackson Center', CAST(N'2000-11-03' AS Date), 1791, N'8-2 pm    ', 2035)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Arabela', N'McLafferty', N'Biscomb', 19, 31503, N'Female    ', N'278 Brentwood Plaza', CAST(N'2001-08-10' AS Date), 4953, N'8-2 pm    ', 3774)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Carrie', N'Coomer', N'McLaughlin', 20, 26456, N'Female    ', N'4254 Sachtjen Street', CAST(N'2000-10-14' AS Date), 5643, N'2-8 pm    ', 3188)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Clerkclaude', N'Egerton', N'Benza', 21, 67133, N'Male      ', N'24 3rd Way', CAST(N'2001-12-05' AS Date), 5268, N'8-2 pm    ', 3648)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Sayre', N'Huortic', N'Ife', 22, 45959, N'Male      ', N'2782 Moulton Park', CAST(N'2002-05-13' AS Date), 3331, N'8-2 a     ', 2490)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Talbert', N'Bessom', N'Ashman', 23, 45200, N'Male      ', N'523 Tomscot Place', CAST(N'2000-04-02' AS Date), 4263, N'8-2 a     ', 3351)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Silvanus', N'Dryburgh', N'Thomson', 24, 75351, N'Male      ', N'0967 Sachs Avenue', CAST(N'2002-12-10' AS Date), 1356, N'2-8 am    ', 2437)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Martin', N'Lukasik', N'Mallows', 25, 84481, N'Male      ', N'1016 Shelley Alley', CAST(N'2001-11-12' AS Date), 6782, N'8-2 a     ', 3504)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Maria', N'Brickdale', N'Bolter', 26, 44543, N'Female    ', N'2 Melby Crossing', CAST(N'2000-09-11' AS Date), 6720, N'2-8 pm    ', 2146)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Codie', N'Chell', N'Tordoff', 27, 68844, N'Male      ', N'2 Old Gate Center', CAST(N'2002-08-17' AS Date), 1313, N'8-2 pm    ', 3226)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Rhianon', N'Ruprich', N'Shellum', 28, 92065, N'Female    ', N'6919 Dunning Trail', CAST(N'2001-07-17' AS Date), 6286, N'2-8 pm    ', 2667)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Tiffani', N'Beniesh', N'Sisselot', 29, 53014, N'Female    ', N'54442 Brickson Park Crossing', CAST(N'2000-12-28' AS Date), 3725, N'2-8 am    ', 3744)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Jacinthe', N'McIsaac', N'Truelock', 30, 44886, N'Female    ', N'0713 Marquette Circle', CAST(N'2002-11-14' AS Date), 2981, N'2-8 pm    ', 3268)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Mozes', N'Gauvain', N'Shwalbe', 31, 18091, N'Male      ', N'904 Mesta Center', CAST(N'2001-07-30' AS Date), 4058, N'2-8 am    ', 2926)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Brear', N'Clausson', N'Mumbey', 32, 68408, N'Female    ', N'0 Clemons Alley', CAST(N'2002-07-22' AS Date), 1430, N'2-8 pm    ', 2058)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Nataniel', N'Benyon', N'Whitsun', 33, 71703, N'Male      ', N'924 Boyd Park', CAST(N'2001-12-12' AS Date), 1335, N'2-8 am    ', 3805)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Gerome', N'Dudleston', N'Gillino', 34, 31402, N'Male      ', N'361 Florence Point', CAST(N'2002-06-23' AS Date), 2781, N'2-8 pm    ', 2181)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Willey', N'Neaverson', N'Gostling', 35, 51798, N'Male      ', N'733 New Castle Parkway', CAST(N'2000-03-06' AS Date), 3218, N'8-2 a     ', 3349)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Hirsch', N'Impleton', N'Yacobsohn', 36, 39889, N'Male      ', N'764 Haas Parkway', CAST(N'2000-07-11' AS Date), 6913, N'8-2 a     ', 3161)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Etta', N'Keays', N'Arnall', 37, 79893, N'Female    ', N'45509 Stone Corner Hill', CAST(N'2000-02-08' AS Date), 6021, N'8-2 pm    ', 3738)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Germain', N'Marcos', N'Koppel', 38, 93407, N'Male      ', N'99 Riverside Avenue', CAST(N'2000-06-25' AS Date), 2715, N'8-2 pm    ', 2486)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Sibyl', N'Burgane', N'Bottelstone', 39, 13388, N'Female    ', N'398 Old Shore Way', CAST(N'2000-02-12' AS Date), 3149, N'2-8 am    ', 2247)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Ximenez', N'Tibbits', N'Sabberton', 40, 69036, N'Male      ', N'420 Fuller Street', CAST(N'2002-01-30' AS Date), 4965, N'8-2 pm    ', 3369)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Townsend', N'Arlt', N'Gregoriou', 41, 91271, N'Male      ', N'15 Carberry Center', CAST(N'2000-03-04' AS Date), 5752, N'8-2 pm    ', 3248)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Raynard', N'Tuhy', N'Gergher', 42, 65679, N'Male      ', N'351 Harper Parkway', CAST(N'2000-05-10' AS Date), 1282, N'2-8 pm    ', 2378)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Nike', N'Marde', N'Abbatucci', 43, 16173, N'Female    ', N'6 Melby Point', CAST(N'2000-10-07' AS Date), 1827, N'2-8 pm    ', 3322)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Germain', N'Sworne', N'Willmett', 44, 55227, N'Male      ', N'34 Bonner Parkway', CAST(N'2000-02-10' AS Date), 6016, N'2-8 am    ', 3698)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Mandi', N'Sunnex', N'Mottershaw', 45, 29778, N'Female    ', N'2420 Weeping Birch Place', CAST(N'2001-02-28' AS Date), 6637, N'8-2 pm    ', 3294)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Shaine', N'Thackray', N'Painter', 46, 93576, N'Female    ', N'306 Grim Hill', CAST(N'2002-05-22' AS Date), 4217, N'8-2 a     ', 3029)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Hughie', N'Gainfort', N'Arondel', 47, 19908, N'Male      ', N'61 Mitchell Street', CAST(N'2002-01-17' AS Date), 2148, N'8-2 a     ', 3329)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Christos', N'Legrand', N'Prugel', 48, 43537, N'Male      ', N'31713 Shopko Hill', CAST(N'2001-09-19' AS Date), 3741, N'2-8 pm    ', 3703)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Town', N'Dewane', N'Rambaut', 49, 44829, N'Male      ', N'4 Mayer Park', CAST(N'2003-01-01' AS Date), 4673, N'8-2 a     ', 3933)
INSERT [dbo].[Receptionist] ([FName], [MName], [LName], [R_ID], [Password], [Gender], [Address], [BD], [Phone], [Shift], [Salary]) VALUES (N'Prue', N'Dearle', N'Knappitt', 50, 22821, N'Female    ', N'34834 Independence Park', CAST(N'2002-09-25' AS Date), 6852, N'8-2 pm    ', 3717)
GO
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (1, N'A         ', 100, N'No        ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (2, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (3, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (4, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (5, N'B         ', 200, N'No        ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (6, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (7, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (8, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (9, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (10, N'A         ', 100, N'No        ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (11, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (12, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (13, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (14, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (15, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (16, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (17, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (18, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (19, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (20, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (21, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (22, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (23, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (24, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (25, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (26, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (27, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (28, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (29, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (30, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (31, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (32, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (33, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (34, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (35, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (36, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (37, N'A         ', 100, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (38, N'B         ', 200, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (39, N'C         ', 300, N'Yes       ')
INSERT [dbo].[Room] ([RoomNumber], [RoomType], [RFees], [Availability]) VALUES (40, N'A         ', 100, N'Yes       ')
GO
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (1, N'Dental Unit                   ', 100, 4)
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (2, N'Eye Unit                      ', 200, 4)
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (3, N'Dermatology Unit              ', 300, 25)
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (4, N'Dental Unit                   ', 100, 6)
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (5, N'Eye Unit                      ', 200, 14)
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (6, N'Dermatology Unit              ', 300, 19)
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (7, N'Dental Unit                   ', 100, 1)
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (8, N'Eye Unit                      ', 200, 29)
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (9, N'Dermatology Unit              ', 300, 22)
INSERT [dbo].[Unit] ([UnitNumber], [UnitType], [UFees], [Capacity]) VALUES (10, N'Eye Unit                      ', 200, 16)
GO
/****** Object:  Index [IX_Accountant]    Script Date: 1/10/2021 3:59:28 AM ******/
ALTER TABLE [dbo].[Accountant] ADD  CONSTRAINT [IX_Accountant] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Doctor]    Script Date: 1/10/2021 3:59:28 AM ******/
ALTER TABLE [dbo].[Doctor] ADD  CONSTRAINT [IX_Doctor] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MedicalTests]    Script Date: 1/10/2021 3:59:28 AM ******/
ALTER TABLE [dbo].[MedicalTests] ADD  CONSTRAINT [IX_MedicalTests] UNIQUE NONCLUSTERED 
(
	[Test_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Medicine]    Script Date: 1/10/2021 3:59:28 AM ******/
ALTER TABLE [dbo].[Medicine] ADD  CONSTRAINT [IX_Medicine] UNIQUE NONCLUSTERED 
(
	[Med_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Nurse]    Script Date: 1/10/2021 3:59:28 AM ******/
ALTER TABLE [dbo].[Nurse] ADD  CONSTRAINT [IX_Nurse] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Patient]    Script Date: 1/10/2021 3:59:28 AM ******/
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [IX_Patient] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pharmacist]    Script Date: 1/10/2021 3:59:28 AM ******/
ALTER TABLE [dbo].[Pharmacist] ADD  CONSTRAINT [IX_Pharmacist] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Receptionist]    Script Date: 1/10/2021 3:59:28 AM ******/
ALTER TABLE [dbo].[Receptionist] ADD  CONSTRAINT [IX_Receptionist] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[P_Unit]  WITH CHECK ADD  CONSTRAINT [FK_P_Unit_Patient] FOREIGN KEY([P_ID])
REFERENCES [dbo].[Patient] ([Pa_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_Unit] CHECK CONSTRAINT [FK_P_Unit_Patient]
GO
ALTER TABLE [dbo].[P_Unit]  WITH CHECK ADD  CONSTRAINT [FK_P_Unit_Unit] FOREIGN KEY([P_Unit])
REFERENCES [dbo].[Unit] ([UnitNumber])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[P_Unit] CHECK CONSTRAINT [FK_P_Unit_Unit]
GO
ALTER TABLE [dbo].[Patient_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Medicine_Medicine] FOREIGN KEY([P_Med])
REFERENCES [dbo].[Medicine] ([Med_Name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patient_Medicine] CHECK CONSTRAINT [FK_Patient_Medicine_Medicine]
GO
ALTER TABLE [dbo].[Patient_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Medicine_Patient] FOREIGN KEY([P_ID])
REFERENCES [dbo].[Patient] ([Pa_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patient_Medicine] CHECK CONSTRAINT [FK_Patient_Medicine_Patient]
GO
ALTER TABLE [dbo].[Patient_Room]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Room_Patient] FOREIGN KEY([P_ID])
REFERENCES [dbo].[Patient] ([Pa_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patient_Room] CHECK CONSTRAINT [FK_Patient_Room_Patient]
GO
ALTER TABLE [dbo].[Patient_Room]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Room_Room] FOREIGN KEY([R_Room])
REFERENCES [dbo].[Room] ([RoomNumber])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patient_Room] CHECK CONSTRAINT [FK_Patient_Room_Room]
GO
ALTER TABLE [dbo].[Patient_Tests]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Tests_MedicalTests] FOREIGN KEY([P_Test])
REFERENCES [dbo].[MedicalTests] ([Test_Name])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patient_Tests] CHECK CONSTRAINT [FK_Patient_Tests_MedicalTests]
GO
ALTER TABLE [dbo].[Patient_Tests]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Tests_Patient] FOREIGN KEY([P_ID])
REFERENCES [dbo].[Patient] ([Pa_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Patient_Tests] CHECK CONSTRAINT [FK_Patient_Tests_Patient]
GO
ALTER TABLE [dbo].[PatientDiagnostic]  WITH CHECK ADD  CONSTRAINT [FK_PatientDiagnostic_Patient] FOREIGN KEY([PD_ID])
REFERENCES [dbo].[Patient] ([Pa_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PatientDiagnostic] CHECK CONSTRAINT [FK_PatientDiagnostic_Patient]
GO
ALTER TABLE [dbo].[PatientPayment]  WITH CHECK ADD  CONSTRAINT [FK_PatientPayment_Patient] FOREIGN KEY([P_ID])
REFERENCES [dbo].[Patient] ([Pa_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PatientPayment] CHECK CONSTRAINT [FK_PatientPayment_Patient]
GO
/****** Object:  StoredProcedure [dbo].[availRoomProc]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[availRoomProc]
AS 
BEGIN
Select * from Room where Availability ='Yes'
END
GO
/****** Object:  StoredProcedure [dbo].[DecUnit]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[DecUnit] @Unit int 
as 
begin

update Unit 
Set Capacity = (Capacity -1)
where UnitNumber = @Unit;

end
GO
/****** Object:  StoredProcedure [dbo].[getAccountants]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getAccountants]
As
	Begin
 SElect 
 * 
 From 
 Accountant
 End 
GO
/****** Object:  StoredProcedure [dbo].[getDoctors]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getDoctors]
As
Begin
 SElect 
 * 
 From 
 Doctor 
 End 
GO
/****** Object:  StoredProcedure [dbo].[getMedicine]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getMedicine]
As
	Begin
 SElect 
 * 
 From 
 Medicine
 End 
GO
/****** Object:  StoredProcedure [dbo].[getNurses]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getNurses]
As
Begin
 SElect 
 * 
 From 
 Nurse
 End 
GO
/****** Object:  StoredProcedure [dbo].[GetPatientMed]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[GetPatientMed] @phone int 
as 
begin

select P_Med
from Patient, Medicine join Patient_Medicine on Med_Name = P_Med
where Pa_ID = P_ID And Units_Available > 0 AND Phone = @phone

end
GO
/****** Object:  StoredProcedure [dbo].[getPatients]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getPatients]
As
	Begin
 SElect 
 * 
 From 
 Patient
 End 
GO
/****** Object:  StoredProcedure [dbo].[getPharmacists]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getPharmacists]
As
	Begin
 SElect 
 * 
 From 
 Pharmacist
 End 
GO
/****** Object:  StoredProcedure [dbo].[getReceptionists]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getReceptionists]
As
	Begin
 SElect 
 * 
 From 
 Receptionist
 End 
GO
/****** Object:  StoredProcedure [dbo].[getRooms]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getRooms]
As
	Begin
 SElect 
 * 
 From 
 Room
 End 
GO
/****** Object:  StoredProcedure [dbo].[getTests]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getTests]
As
	Begin
 SElect 
 * 
 From 
 MedicalTests
 End 
GO
/****** Object:  StoredProcedure [dbo].[getUnits]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getUnits]
As
	Begin
 SElect 
 * 
 From 
 Unit
 End 
GO
/****** Object:  StoredProcedure [dbo].[setRoomAvailNo]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[setRoomAvailNo] @num int 
as 
begin

Update Room
set Availability = 'No'
where RoomNumber = @num

end
GO
/****** Object:  StoredProcedure [dbo].[setRoomAvailYes]    Script Date: 1/10/2021 3:59:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[setRoomAvailYes] @num int 
as 
begin

Update Room
set Availability = 'Yes'
where RoomNumber = @num

end
GO

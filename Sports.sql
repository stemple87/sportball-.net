USE [SportsLeagueOrganizer]
GO
/****** Object:  Table [dbo].[Divisions]    Script Date: 4/19/2016 4:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisions](
	[DivisionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Divisions] PRIMARY KEY CLUSTERED 
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teams]    Script Date: 4/19/2016 4:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DivisionId] [int] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Divisions] ON 

INSERT [dbo].[Divisions] ([DivisionId], [Name]) VALUES (1, N'West')
INSERT [dbo].[Divisions] ([DivisionId], [Name]) VALUES (2, N'East')
INSERT [dbo].[Divisions] ([DivisionId], [Name]) VALUES (3, N'North')
INSERT [dbo].[Divisions] ([DivisionId], [Name]) VALUES (4, N'South')
SET IDENTITY_INSERT [dbo].[Divisions] OFF
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([TeamId], [Name], [DivisionId]) VALUES (1, N'Lakers', 0)
INSERT [dbo].[Teams] ([TeamId], [Name], [DivisionId]) VALUES (2, N'Lakers', 1)
INSERT [dbo].[Teams] ([TeamId], [Name], [DivisionId]) VALUES (3, N'Sport Team', 3)
INSERT [dbo].[Teams] ([TeamId], [Name], [DivisionId]) VALUES (4, N'asdf', 3)
SET IDENTITY_INSERT [dbo].[Teams] OFF

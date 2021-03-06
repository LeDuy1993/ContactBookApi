USE [WebContactBook]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[CheckId] [int] NOT NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Avatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassRoom]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassRoom](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](50) NOT NULL,
	[GradeId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[TeacherId] [int] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ClassRoom] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassStudent]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassStudent](
	[ClassStudentId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [PK_ClassStudent] PRIMARY KEY CLUSTERED 
(
	[ClassStudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassSubject]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassSubject](
	[ClassSubjectId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_ClassSubject] PRIMARY KEY CLUSTERED 
(
	[ClassSubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degree]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degree](
	[DegreeId] [int] IDENTITY(1,1) NOT NULL,
	[DegreeName] [nvarchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Degree] PRIMARY KEY CLUSTERED 
(
	[DegreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[GradeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nation]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nation](
	[NationId] [int] IDENTITY(1,1) NOT NULL,
	[NationName] [nchar](20) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Nation] PRIMARY KEY CLUSTERED 
(
	[NationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religion]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religion](
	[ReligionId] [int] IDENTITY(1,1) NOT NULL,
	[ReligionName] [nvarchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Religion] PRIMARY KEY CLUSTERED 
(
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterId] [int] IDENTITY(1,1) NOT NULL,
	[SemesterName] [nvarchar](50) NOT NULL,
	[CoefficientSemester] [int] NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[DayOfBirth] [datetime] NOT NULL,
	[PlaceOfBirth] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[NationId] [int] NOT NULL,
	[ReligionId] [int] NOT NULL,
	[FartherName] [nvarchar](50) NULL,
	[MortherName] [nvarchar](50) NULL,
	[JobName] [nvarchar](200) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[AvatarPath] [nvarchar](max) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](50) NOT NULL,
	[Coefficient] [int] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectResult]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectResult](
	[SubjectResultId] [int] IDENTITY(1,1) NOT NULL,
	[ClassStudentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[ClassSubjectId] [int] NOT NULL,
	[ListPoint] [nvarchar](500) NULL,
	[ListDate] [nvarchar](500) NULL,
	[Pointlock] [bit] NULL,
 CONSTRAINT [PK_SubjectResult] PRIMARY KEY CLUSTERED 
(
	[SubjectResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [nvarchar](50) NOT NULL,
	[DayOfBirth] [date] NULL,
	[PlaceOfBirth] [nvarchar](50) NULL,
	[Gender] [bit] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[AvatarPath] [nvarchar](max) NULL,
	[DegreeId] [int] NOT NULL,
	[IsDelete] [bit] NULL,
	[DayToWork] [date] NULL,
	[Position] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200814090248_InitDB', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200817063729_InitUser', N'3.1.7')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Teacher', NULL, NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Student', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PhoneNumber], [CheckId], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar]) VALUES (N'1', N'0123456789', N'0123456789', 1, N'0123456789', N'leduy@gmail.com', N'LEDUY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELmGTW38G6gzu4NvdJ87jF8bhmdSIdejqTPI/ayRAPlHF8Xn29sKDd2OhRAM3BFSxg==', N'HQM7BXCQ5A3TCM3FVHEGIT54GLPMKMEP', N'ee378154-cd5c-4791-8be7-bf46a8824a54', 0, 0, NULL, 1, 0, N'czc')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PhoneNumber], [CheckId], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar]) VALUES (N'2', N'0112345678', N'0112345678', 2, N'0112345678', N'leduy@Gmail.com', N'LEDUY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELmGTW38G6gzu4NvdJ87jF8bhmdSIdejqTPI/ayRAPlHF8Xn29sKDd2OhRAM3BFSxg==', N'HQM7BXCQ5A3TCM3FVHEGIT54GLPMKMEP', N'ee378154-cd5c-4791-8be7-bf46a8824a54', 0, 0, NULL, 1, 0, N'dada')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PhoneNumber], [CheckId], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar]) VALUES (N'3', N'0111234567', N'0111234567', 3, N'0111234567', NULL, NULL, 0, N'AQAAAAEAACcQAAAAELmGTW38G6gzu4NvdJ87jF8bhmdSIdejqTPI/ayRAPlHF8Xn29sKDd2OhRAM3BFSxg==', N'HQM7BXCQ5A3TCM3FVHEGIT54GLPMKMEP', N'ee378154-cd5c-4791-8be7-bf46a8824a54', 0, 0, NULL, 1, 0, N'dasdasd')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PhoneNumber], [CheckId], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar]) VALUES (N'4', N'0111123456', N'0111123456', 4, N'0111123456', NULL, NULL, 0, N'AQAAAAEAACcQAAAAELmGTW38G6gzu4NvdJ87jF8bhmdSIdejqTPI/ayRAPlHF8Xn29sKDd2OhRAM3BFSxg==', N'HQM7BXCQ5A3TCM3FVHEGIT54GLPMKMEP', N'ee378154-cd5c-4791-8be7-bf46a8824a54', 0, 0, NULL, 1, 0, N'dasda')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PhoneNumber], [CheckId], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar]) VALUES (N'5', N'0111112345', N'0111112345', 5, N'0111112345', NULL, NULL, 0, N'AQAAAAEAACcQAAAAELmGTW38G6gzu4NvdJ87jF8bhmdSIdejqTPI/ayRAPlHF8Xn29sKDd2OhRAM3BFSxg==', N'HQM7BXCQ5A3TCM3FVHEGIT54GLPMKMEP', N'ee378154-cd5c-4791-8be7-bf46a8824a54', 0, 0, NULL, 1, 0, N'dasdsa')
GO
SET IDENTITY_INSERT [dbo].[ClassRoom] ON 

INSERT [dbo].[ClassRoom] ([ClassId], [ClassName], [GradeId], [CourseId], [TeacherId], [IsDeleted]) VALUES (14, N'10A1', 1, 1, 1, 0)
INSERT [dbo].[ClassRoom] ([ClassId], [ClassName], [GradeId], [CourseId], [TeacherId], [IsDeleted]) VALUES (15, N'11A', 2, 1, 3, 0)
INSERT [dbo].[ClassRoom] ([ClassId], [ClassName], [GradeId], [CourseId], [TeacherId], [IsDeleted]) VALUES (16, N'12A', 3, 1, 4, 0)
INSERT [dbo].[ClassRoom] ([ClassId], [ClassName], [GradeId], [CourseId], [TeacherId], [IsDeleted]) VALUES (17, N'10B1', 1, 1, 6, 0)
INSERT [dbo].[ClassRoom] ([ClassId], [ClassName], [GradeId], [CourseId], [TeacherId], [IsDeleted]) VALUES (18, N'10A2', 1, 1, 7, 0)
INSERT [dbo].[ClassRoom] ([ClassId], [ClassName], [GradeId], [CourseId], [TeacherId], [IsDeleted]) VALUES (19, N'10A3', 1, 1, 8, 0)
SET IDENTITY_INSERT [dbo].[ClassRoom] OFF
GO
SET IDENTITY_INSERT [dbo].[ClassStudent] ON 

INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (20, 14, 1)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (21, 14, 2)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (22, 14, 3)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (23, 14, 4)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (24, 14, 5)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (25, 14, 6)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (26, 14, 7)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (27, 14, 8)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (28, 14, 9)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (29, 14, 10)
SET IDENTITY_INSERT [dbo].[ClassStudent] OFF
GO
SET IDENTITY_INSERT [dbo].[ClassSubject] ON 

INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (1, 14, 1, 1)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (2, 14, 2, 3)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (3, 14, 3, 4)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (4, 14, 4, 6)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (5, 14, 5, 7)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (6, 14, 6, 1)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (7, 14, 7, 1)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (8, 14, 8, 1)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (9, 14, 13, 6)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (10, 14, 14, 6)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (11, 14, 15, 6)
INSERT [dbo].[ClassSubject] ([ClassSubjectId], [ClassId], [SubjectId], [TeacherId]) VALUES (12, 14, 16, 6)
SET IDENTITY_INSERT [dbo].[ClassSubject] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseId], [CourseName], [IsDelete]) VALUES (1, N'Năm 2019', NULL)
INSERT [dbo].[Course] ([CourseId], [CourseName], [IsDelete]) VALUES (2, N'Năm 2020', NULL)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Degree] ON 

INSERT [dbo].[Degree] ([DegreeId], [DegreeName], [IsDelete]) VALUES (1, N'Cử Nhân', 0)
SET IDENTITY_INSERT [dbo].[Degree] OFF
GO
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (1, N'Khối 10')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (2, N'Khối 11')
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (3, N'Khối 12')
SET IDENTITY_INSERT [dbo].[Grade] OFF
GO
SET IDENTITY_INSERT [dbo].[Nation] ON 

INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (1, N'Kinh                ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (2, N'Tày                 ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (3, N'Thái                ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (4, N'Mường               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (5, N'Khmer               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (6, N'Hoa                 ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (7, N'Nùng                ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (8, N'H''Mông              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (9, N'Dao                 ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (10, N'Gia Rai             ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (11, N'Ê đê                ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (12, N'Ba Na               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (13, N'Sán Chay            ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (14, N'Chăm                ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (15, N'Cơ Ho               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (16, N'Xơ Đăng             ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (17, N'Sán Dìu             ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (18, N'Hrê                 ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (19, N'Rai Glai            ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (20, N'Mnông               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (21, N'Thổ                 ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (22, N'Xtiêng              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (23, N'Khơ mú              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (24, N'Bru - Vân Kiều      ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (25, N'Cơ Tu               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (26, N'Giáy                ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (27, N'	Tà Ôi              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (28, N'Mạ                  ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (29, N'Giẻ-Triêng          ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (30, N'	Co                 ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (31, N'Chơ Ro              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (32, N'	Xinh Mun           ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (33, N'Hà Nhì	             ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (34, N'Chu Ru              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (35, N'Lào                 ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (36, N'La Chí              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (37, N'	Kháng              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (38, N'Phù Lá              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (39, N'La Hủ               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (40, N'	La Ha              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (41, N'	Pà Thẻn            ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (42, N'Lự                  ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (43, N'	Ngái               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (44, N'Chứt                ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (45, N'Lô Lô               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (46, N'	Mảng               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (47, N'Cơ Lao              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (48, N'	Bố Y               ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (49, N'Cống                ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (50, N'	Si La              ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (51, N'	Pu Péo             ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (52, N'	Rơ Măm             ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (53, N'Brâu                ', 0)
INSERT [dbo].[Nation] ([NationId], [NationName], [IsDelete]) VALUES (54, N'	Ơ Đu               ', 0)
SET IDENTITY_INSERT [dbo].[Nation] OFF
GO
SET IDENTITY_INSERT [dbo].[Religion] ON 

INSERT [dbo].[Religion] ([ReligionId], [ReligionName], [IsDelete]) VALUES (1, N'Phật giáo	               ', 0)
INSERT [dbo].[Religion] ([ReligionId], [ReligionName], [IsDelete]) VALUES (2, N'Công giáo     ', 0)
INSERT [dbo].[Religion] ([ReligionId], [ReligionName], [IsDelete]) VALUES (3, N'Hòa Hảo', 0)
INSERT [dbo].[Religion] ([ReligionId], [ReligionName], [IsDelete]) VALUES (4, N'Tin Lành', 0)
INSERT [dbo].[Religion] ([ReligionId], [ReligionName], [IsDelete]) VALUES (5, N'Cao Đài', 0)
INSERT [dbo].[Religion] ([ReligionId], [ReligionName], [IsDelete]) VALUES (6, N'Hồi Giáo', 0)
INSERT [dbo].[Religion] ([ReligionId], [ReligionName], [IsDelete]) VALUES (7, N'Bà La Môn', 0)
SET IDENTITY_INSERT [dbo].[Religion] OFF
GO
SET IDENTITY_INSERT [dbo].[Semester] ON 

INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [CoefficientSemester]) VALUES (1, N'Học kì 1', 1)
INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [CoefficientSemester]) VALUES (2, N'Học kì 2', 2)
SET IDENTITY_INSERT [dbo].[Semester] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (1, N'Phụng ', N'Nguyễn Thị', 1, CAST(N'2004-05-09T00:31:57.790' AS DateTime), N'Hà Giang-Việt Nam', N'554-Bình Điền-Huế-Việt Nam', 1, 4, N'Trần Hữu Văn Hiệu', N'Hồ Anh Ngọc ', N'Hưu trí', N'0123456789', N'http://mzhqv.webc/quguw/idhuw/ccnol/ehauc/ueqrg.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (2, N'Duy', N'1', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'Tp Hue', N'28 Nguyen Tri Phuong', 1, 1, N'Le Duy', N'Duy le', N'Kinh doanh', N'0112345678', N'abc', 1)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (3, N'Duc', N'Cong', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Tp Hue', N'29 Nguyenx Hue', 1, 1, N'Duc Cap', N'Cap Duc', N'Nội trợ', N'0111234567', N'cdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (4, N'Duy', N'2', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Huệ', N'30 NTP', 1, 1, N'Phương Hà', N'Phương Hà', N'Kinh doanh', N'0111123456', N'xyz', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (5, N'Duy', N'3', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Huệ', N'31 NTP', 1, 1, N'Phương Hà', N'Phương Hà ', N'Công nhân', N'0111112345', N'xyz', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (6, N'Đức ', N'Huỳnh Thanh', 1, CAST(N'2005-04-20T23:28:20.390' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'68-Nam Đông-Huế-Việt Nam', 22, 2, N'Ngô Văn Hoài', N'Đặng Thanh Thư ', N'Đầu bếp', N'0111111234', N'https://onznp.webw1/hekpn/icqxr/sbaiy/rfe.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (7, N'Đệ ', N'Đặng Thế', 0, CAST(N'2005-05-24T17:26:26.230' AS DateTime), N'Hải Phòng-Việt Nam', N'167-A Lưới-Huế-Việt Nam', 8, 5, N'Trần Hoàng Nguyên Vàng', N'Lê Hồng Quỳnh ', N'Lễ tân', N'0111111123', N'https://goy.local97/shmcl/plm.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (8, N'Hoài ', N'Trần Hữu Anh', 0, CAST(N'2005-02-02T10:25:26.870' AS DateTime), N'Quãng Ngãi-Việt Nam', N'38-Hương Thủy-Huế-Việt Nam', 11, 5, N'Phạm Nguyền Văn Chi', N'Hồ Anh Tranh ', N'Giáo viên', N'0111111111', N'https://unecy.netg2/jynpd/xxvri/wvksq/nzd.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (9, N'Pháp ', N'Hoàng Thị', 0, CAST(N'2003-12-29T21:56:55.420' AS DateTime), N'Bắc Ninh-Việt Nam', N'809-Phú Lộc-Huế-Việt Nam', 38, 6, N'Hoàng Đức Ngọc', N'PhạmNguyễn Hồng Huy ', N'Giáo viên', N'0212345678', N'https://owfk.web4/tnmzi/uymde.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (10, N'Duy', N'4', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Huệ', N'32 NTP ', 1, 1, N'Phương Hà', N'Phương Hà', N'Kinh doanh', N'0321123456', N'asd', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (11, N'Le', N'Duy', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Hue', N'CodeGym', 1, 1, N'Ba Le Duy', N'Me Le Duy', N'Kiến trúc', N'0363457343', N'Duy dep trai', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (12, N'Hồng', N'Ân', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Hue', N'CodeGym', 1, 1, N'Mẹ Hồng Ân', N'Ba Hồng Ân', N'Bán hàng', N'0123456789', N'Ân Đẹp Gái Dệ Sợ', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (13, N'Hồng', N'Ân', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Hue', N'CodeGym', 1, 1, N'Mẹ Hồng Ân', N'Ba Hồng Ân', N'Bán hàng', N'0321654987', N'Ân Xấu Gái Dệ Sợ', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (14, N'Hữu', N'Đức', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Huế', N'CodeGym', 1, 1, N'Mẹ Duy', N'Ba Duy', N'Kinh doanh', N'0321654987', N'Duy đẹp trai', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (15, N'Lê', N'Vũ', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Huế', N'CodeGym', 1, 1, N'Mẹ Duy', N'Ba Duy', N'Kinh doanh', N'0321654987', N'Duy đẹp trai', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (16, N'Tần ', N'Phạm Hồng', 1, CAST(N'2004-11-12T13:25:26.980' AS DateTime), N'Hải Phòng-Việt Nam', N'26-Phong Điền-Huế-Việt Nam', 27, 1, N'Phan Anh Đức', N'Đặng Thanh  ', N'Buôn bán', N'553-8491869', N'http://mmwef.localp3/kfybr/cojns/nfezi.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (17, N'Tấn ', N'Huỳnh Đặng', 1, CAST(N'2003-01-23T15:35:37.870' AS DateTime), N'Bắc Ninh-Việt Nam', N'6-Nam Đông-Huế-Việt Nam', 16, 5, N'Phan Đăng Nguyên Duy', N'Đỗ Thế Thương ', N'Buôn bán', N'740233-4069', N'https://dmzm.local4/unkqa/afqi.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (18, N'Bảo', N'Ngân', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Huế', N'CodeGym', 2, 2, N'Bảo Ngân', N'Ngân Bảo', N'Nội trợ', N'0998988998', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (19, N'Phi ', N'Thường', 0, CAST(N'2020-03-04T00:00:00.000' AS DateTime), N'BV Huế', N'CpdeGym', 3, 3, N'Phi Thường', N'Thường Phi', N'Công nhân', N'0987655466', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (20, N'Pháp', N'Phan', 1, CAST(N'2020-04-09T00:00:00.000' AS DateTime), N'BV Huế', N'CodeGym', 4, 4, N'Pháp Phan', N'Phan Pháp', N'Công nhân', N'0975334567', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (21, N'Hiệp', N'Hoàng', 1, CAST(N'2020-04-05T00:00:00.000' AS DateTime), N'BV Huế', N'CodeGym', 5, 1, N'Hiệp Hooang', N'Hoang Hiệp', N'Công nhân', N'0766777667', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (22, N'Nguyên', N'Nguyễn', 0, CAST(N'2020-06-07T00:00:00.000' AS DateTime), N'Bv huế', N'codegym', 6, 2, N'nguyen nguyen', N'nguyen nguyen', N'Công nhân', N'0678778888', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (23, N'Danh', N'Nguyễn', 1, CAST(N'2020-03-03T00:00:00.000' AS DateTime), N'Bv Huế', N'codegym', 7, 3, N'danh nguyen', N'nguyen danh', N'Công nhân', N'0457775848', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (24, N'Cường', N'Lê', 0, CAST(N'2020-05-07T00:00:00.000' AS DateTime), N'Bv Huế', N'codegym', 8, 4, N'cuong le', N'le cuong', N'Công nhân', N'0457677657', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (25, N'Quang', N'nguyen', 1, CAST(N'2020-04-08T00:00:00.000' AS DateTime), N'Bv Huế', N'codegym', 9, 1, N'quang nguyen', N'nguyen quang', N'Công nhân', N'0974774778', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (26, N'Trung', N'Nguyen', 0, CAST(N'2020-03-05T00:00:00.000' AS DateTime), N'Bv Huế', N'codegym', 10, 2, N'trung nguyen', N'nguyen trung', N'Công nhân', N'0234443222', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (27, N'Ghi ', N'Nguyen', 1, CAST(N'2020-04-05T00:00:00.000' AS DateTime), N'Bv huế', N'codrgym', 11, 3, N'ghi nguyen', N'nguyen ghi', N'công nhân', N'0354646454', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (28, N'Vu ', N'Le', 1, CAST(N'2020-04-08T00:00:00.000' AS DateTime), N'Bv Huế', N'codegym', 12, 4, N'vu le', N'le vu', N'công nhân', N'0354666646', NULL, 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (29, N'Ngọc ', N'Trần Hữu Đặng', 1, CAST(N'2003-03-21T15:46:37.430' AS DateTime), N'Bắc Giang-Việt Nam', N'71-Nam Đông-Huế-Việt Nam', 49, 2, N'Trần Hữu Thế Thái', N'Lý Đặng Hiệu ', N'Nhân viên văn phòng', N'9023237316', N'http://rdm.webb6/mizjb/stiif/cminb/ipar.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (30, N'Tạ ', N'Hoàng Hồng', 0, CAST(N'2003-07-22T07:25:05.620' AS DateTime), N'Hà Giang-Việt Nam', N'384-Hương Trà-Huế-Việt Nam', 33, 3, N'Hoàng Đức Vàng', N'Đặng Bảo Ngân ', N'Thợ nước', N'818-564-6265', N'https://jfj.webo78/hixdk/qzszb/upafi/hvhbl/fjq.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (31, N'Thiện ', N'Nguyễn Hữu', 1, CAST(N'2003-02-18T01:57:07.320' AS DateTime), N'Bạc Liêu-Việt Nam', N'146-Phú Lộc-Huế-Việt Nam', 9, 4, N'Võ Đức Duy', N'Vũ Thị Ngân ', N'Dược sĩ', N'908322-0037', N'https://wegff.local12/fyhep/eitdp/wgwey/dmfod/toj.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (32, N'Thị ', N'Hoàng Thanh', 1, CAST(N'2005-05-18T03:07:25.710' AS DateTime), N'Hà Nội-Việt Nam', N'844-A Lưới-Huế-Việt Nam', 32, 6, N'Đặng Thế Ngọc', N'Vũ Bảo Lê ', N'Thợ Xây', N'1539313521', N'https://nbufw.neta/lktpv/zwjgd/owqvl/adxqq/nqqk.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (33, N'Lục ', N'Ngô Mai', 0, CAST(N'2004-12-18T07:36:35.870' AS DateTime), N'Hà Nội-Việt Nam', N'10-Phong Điền-Huế-Việt Nam', 47, 2, N'Nguyễn Anh Hoài', N'Bùi Thanh Hiệu ', N'Bác sĩ', N'167-6525849', N'https://gam.localj92/ixkyg/fraou/cvudb/spnqh.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (34, N'Phi ', N'Ngô Đức', 1, CAST(N'2005-06-08T03:38:54.630' AS DateTime), N'Điện Biên-Việt Nam', N'727-Nam Đông-Huế-Việt Nam', 48, 7, N'Đỗ Hữu Lê', N'Dương Mai Huy ', N'Buôn bán', N'4360966814', N'http://cnldn.local3/okgfs/jlbjy/gfsn.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (35, N'Lệ ', N'Võ Bảo', 0, CAST(N'2004-11-19T05:26:07.640' AS DateTime), N'Hà Giang-Việt Nam', N'4-Bình Điền-Huế-Việt Nam', 37, 1, N'Lý Anh Lê', N'Dương Đặng Thương ', N'Cán bộ', N'7013205256', N'https://pnw.webs80/pnaxm/lkuxx/aredf/vgyqp/srfam.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (36, N'Lục ', N'Nguyễn Nguyên', 1, CAST(N'2005-02-24T18:41:00.480' AS DateTime), N'Đắk Nông-Việt Nam', N'93-A Lưới-Huế-Việt Nam', 46, 7, N'Trần Hữu Văn Thương', N'Bùi Thị Ngân ', N'Nhân viên văn phòng', N'092-9962099', N'https://kwul.nets/busbw/coayf/gyxxf/plxia/bewt.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (37, N'Duy ', N'Ngô Thanh', 1, CAST(N'2004-12-02T13:14:45.420' AS DateTime), N'Bắc Ninh-Việt Nam', N'505-Phong Điền-Huế-Việt Nam', 7, 7, N'Phạm Nguyền Nguyên Chi', N'Vũ Hồng Ân ', N'Bác sĩ', N'748-4772317', N'https://ydoov.net/ylycp/wnldx/qmsud.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (38, N'BA ', N'Lý Bảo', 1, CAST(N'2004-12-18T02:39:22.820' AS DateTime), N'Bắc Giang-Việt Nam', N'24--Huế-Việt Nam', 38, 3, N'Vũ Anh Vũ', N'Võ Đặng Hoài ', N'Bác sĩ', N'839766-7440', N'https://jues.web/mnzwn/xbllo/fithr/bwah.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (39, N'Thế ', N'Bùi Mai', 0, CAST(N'2004-12-10T05:28:55.500' AS DateTime), N'Điện Biên-Việt Nam', N'510-A Lưới-Huế-Việt Nam', 9, 3, N'Ngô Nguyên Hoài', N'PhạmNguyễn Thế Ngân ', N'Đầu bếp', N'330134-3164', N'http://odhgv.local4/xldnv/rod.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (40, N'Đăng ', N'Hoàng Văn', 1, CAST(N'2004-08-05T18:00:48.880' AS DateTime), N'Đà Nẵng-Việt Nam', N'774-Hương Trà-Huế-Việt Nam', 13, 6, N'Trần Hoàng Đặng Huy', N'PhạmNguyễn Anh Tranh ', N'Công An', N'6898031744', N'http://kkqd.net28/zvqvp/rmuk.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (41, N'Nguyên ', N'Trần Hoàng Đức', 0, CAST(N'2005-05-06T17:21:35.070' AS DateTime), N'Bình Định-Việt Nam', N'5-Hương Trà-Huế-Việt Nam', 5, 6, N'Võ Hữu Huy', N'Vũ Anh Ngân ', N'Hưu trí', N'026-9224999', N'http://knbgp.web4/vfvga/ttase/eyc.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (42, N'Báo ', N'Võ Mai', 0, CAST(N'2005-03-24T23:37:48.470' AS DateTime), N'Huế-Việt Nam', N'40-Nam Đông-Huế-Việt Nam', 32, 6, N'Bùi Văn Thương', N'Dương Đặng Quỳnh ', N'Thợ mộc', N'501845-2020', N'http://jbhak.localm/yfndu/krkmk/kjng.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (43, N'Huỳnh ', N'Lê Thanh', 1, CAST(N'2003-07-27T18:19:42.690' AS DateTime), N'Đắk Nông-Việt Nam', N'368-Bình Điền-Huế-Việt Nam', 49, 4, N'Võ Anh Lê', N'Lê Bảo Yến ', N'Giáo viên', N'499-1514622', N'https://nblk.web7/doodz/mqnjy.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (44, N'Vũ ', N'Hoàng Đặng', 0, CAST(N'2004-07-29T09:28:56.620' AS DateTime), N'Bình Phước-Việt Nam', N'19-Hương Thủy-Huế-Việt Nam', 47, 7, N'Đặng Văn Thái', N'PhạmNguyễn Thế Vàng ', N'Nông dân', N'913156-5642', N'http://qykxr.local54/mvmng/pqhyv/khbpi/kvsjt/fqdyo.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (45, N'Khoa ', N'Lý Văn', 0, CAST(N'2005-09-26T03:15:01.920' AS DateTime), N'Bạc Liêu-Việt Nam', N'79-A Lưới-Huế-Việt Nam', 27, 1, N'Hồ Anh Vàng', N'Hồ Thị Chi ', N'Dược sĩ', N'992598-0938', N'https://ahpqd.webs77/xmjvx/cbhzc/jipcq.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (46, N'Tam ', N'Bùi Hữu', 0, CAST(N'2003-03-18T22:45:47.960' AS DateTime), N'Gia Lai-Việt Nam', N'8-Nam Đông-Huế-Việt Nam', 39, 5, N'Nguyễn Nguyên Vũ', N'Võ Đặng Vàng ', N'Nhạc sĩ', N'2220638250', N'http://tmc.localm36/pbzhe/cqwva/ino.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (47, N'Thúy ', N'Trần Hoàng Thế', 0, CAST(N'2004-09-10T03:19:22.720' AS DateTime), N'Đồng Tháp-Việt Nam', N'191-Phú Lộc-Huế-Việt Nam', 32, 7, N'Dương Văn Lê', N'Hồ Anh Yến ', N'Lễ tân', N'408-444-9312', N'https://qlqj.locall7/rtknz/bjalj/loest/ewr.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (48, N'Phụng ', N'Trần Thị', 1, CAST(N'2005-10-24T19:20:37.090' AS DateTime), N'Gia Lai-Việt Nam', N'6-Nam Đông-Huế-Việt Nam', 54, 1, N'Đặng Nguyên Hiệu', N'Huỳnh Bảo Thương ', N'Nhân viên văn phòng', N'1282442650', N'https://hjfjq.local72/qfjzn/qdgxf/oqsqn/taxig/hrse.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (49, N'Năm ', N'Trần Thanh', 1, CAST(N'2005-10-05T16:40:30.010' AS DateTime), N'Huế-Việt Nam', N'50-A Lưới-Huế-Việt Nam', 12, 3, N'Trần Hoàng Văn Vũ', N'Hồ Thế Thương ', N'Dược sĩ', N'247-9098811', N'http://fib.web1/zsujd/vaedm/leeiz/rvr.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (50, N'Tạ ', N'Đỗ Hữu', 0, CAST(N'2003-06-29T23:10:08.970' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'183-Nam Đông-Huế-Việt Nam', 31, 5, N'Lý Nguyên Đức', N'Đỗ Mai Hiệu ', N'Cán bộ', N'740-646-0690', N'http://czm.net23/bfnwm/wsanw/udwuo/noong/hex.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (51, N'Thương ', N'Đỗ Văn', 0, CAST(N'2004-08-26T21:33:28.090' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'4-Hương Trà-Huế-Việt Nam', 49, 1, N'Phạm Anh Ngọc', N'Vũ Hồng Chi ', N'Nông dân', N'884551-1396', N'http://xda.localz/tyzly/lfiqu/owpxo/rpiao/apsqv.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (52, N'Danh ', N'Vũ Hồng', 0, CAST(N'2005-01-30T03:01:48.440' AS DateTime), N'Tp.HCM-Việt Nam', N'829-A Lưới-Huế-Việt Nam', 3, 4, N'Đỗ Đặng Thái', N'Ngô Đặng Chi ', N'Đầu bếp', N'423851-8742', N'https://mktpp.webu/srjjh/aozc.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (53, N'Danh ', N'Đặng Bảo', 1, CAST(N'2004-07-27T17:29:29.020' AS DateTime), N'Hải Phòng-Việt Nam', N'19-A Lưới-Huế-Việt Nam', 39, 4, N'Trần Hữu Hữu Vũ', N'Vũ Thế Thư ', N'Dược sĩ', N'319-9331390', N'https://ksl.webv3/edczi/qwujl/oqg.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (54, N'Nhạn ', N'Trần Hữu Thanh', 0, CAST(N'2004-05-25T18:25:46.770' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'8-Nam Đông-Huế-Việt Nam', 5, 2, N'Phan Văn Hiệu', NULL, N'Đầu bếp', N'250-722-3701', N'http://mxx.localz86/aogay/felsb/gsoip/ubyqp/uwe.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (55, N'Tần ', N'Lê Bảo', 0, CAST(N'2004-01-16T14:26:31.510' AS DateTime), N'Bình Định-Việt Nam', N'631-Phú Lộc-Huế-Việt Nam', 52, 2, N'Bùi Nguyên Huy', N'Đỗ Anh Ngân ', N'Thợ điện', N'708946-0968', N'http://lxq.net/qlbgt/koqgy/qtvym/ykfba/bqhe.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (56, N'Thúy ', N'Phạm Bảo', 0, CAST(N'2004-02-14T12:12:10.750' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'8-Phú Lộc-Huế-Việt Nam', 12, 4, N'Bùi Anh Thái', N'Vũ Mai Vàng ', N'Ca sĩ', N'5503710855', N'https://sdt.netz/lffys/ercr.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (57, N'Ánh ', N'Đỗ Thị', 0, CAST(N'2003-12-15T15:57:51.850' AS DateTime), N'Bắc Ninh-Việt Nam', N'337-Phong Điền-Huế-Việt Nam', 38, 6, N'Ngô Anh Đức', N'Lý Bảo Quỳnh ', N'Giáo viên', N'231141-8862', N'http://upp.net17/vhfow/mztnk/zvcvp/qbawp/jdx.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (58, N'Tam ', N'Hoàng Mai', 0, CAST(N'2004-05-28T18:09:31.700' AS DateTime), N'Điện Biên-Việt Nam', N'5-Bình Điền-Huế-Việt Nam', 28, 7, N'Trần Hữu Anh Ngọc', N'Vũ Anh Hoài ', N'Lễ tân', N'8637600893', N'http://tufj.net9/qsfwm/qtisq/devzr/fsjn.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (59, N'Anh ', N'Hoàng Thanh', 0, CAST(N'2004-03-10T19:02:00.380' AS DateTime), N'Bến Tre-Việt Nam', N'833-Phong Điền-Huế-Việt Nam', 41, 7, N'Vũ Bảo Hoài', N'Phan Mai Thư ', N'Giáo viên', N'081-7760304', N'http://qtq.neti1/iqtjo/dptxd/ankzc/pacfz/waaix.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (60, N'Tướng ', N'Lê Hữu', 0, CAST(N'2005-10-18T12:49:17.590' AS DateTime), N'Đắk Lắk-Việt Nam', N'5--Huế-Việt Nam', 20, 2, N'Trần Hữu Bảo Thái', N'Hoàng Thị Trúc ', N'Dược sĩ', N'409456-5226', N'https://xsni.localq29/qztcb/fyofj/rrmnm.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (61, N'Long ', N'Phan Nguyên', 0, CAST(N'2004-03-15T20:54:20.430' AS DateTime), N'Bạc Liêu-Việt Nam', N'1-Hương Thủy-Huế-Việt Nam', 24, 4, N'Trần Hoàng Hữu Chi', N'Bùi Thị Tranh ', N'Công An', N'248-972-0946', N'https://yrsi.weba04/mqkwh/hmd.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (62, N'Phi ', N'Vũ Nguyên', 0, CAST(N'2005-07-16T18:27:32.910' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'678-Phú Lộc-Huế-Việt Nam', 18, 2, N'Dương Hữu Huy', N'Đỗ Mai Yến ', N'Thợ Xây', N'366-9935281', N'https://ilq.web74/jzglc/ldwel/qagpf/nfgyt/zokto.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (63, N'Ánh ', N'Vũ Hữu', 0, CAST(N'2004-11-14T18:38:49.440' AS DateTime), N'Đồng Nai-Việt Nam', N'72--Huế-Việt Nam', 17, 4, N'Phạm Văn Ngọc', N'Phan Anh Ngân ', N'Giáo viên', N'449658-6850', N'https://xdhlq.local00/gdvqa/xdxad/gglno/pymci/tvzi.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (64, N'Hoài ', N'Dương Đức', 1, CAST(N'2003-06-10T14:31:49.790' AS DateTime), N'Bắc Ninh-Việt Nam', N'8-Phú Lộc-Huế-Việt Nam', 6, 3, N'Bùi Anh Vàng', N'Hoàng Thế Vàng ', N'Công nhân', N'400-9693106', N'http://fuatw.local/okwzv/kliti/fheu.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (65, N'Công ', N'Đặng Đặng', 1, CAST(N'2005-02-23T01:29:59.730' AS DateTime), N'Cao Bằng-Việt Nam', N'72-Phong Điền-Huế-Việt Nam', 39, 6, N'Trần Anh Lê', N'Võ Thị Tranh ', N'Thợ mộc', N'690-5947768', N'https://ypkrv.local45/zyxxr/nxqp.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (66, N'Đức ', N'Đặng Thị', 0, CAST(N'2004-09-12T10:48:55.100' AS DateTime), N'Huế-Việt Nam', N'8-Hương Trà-Huế-Việt Nam', 54, 4, N'Trần Hoàng Thế Đức', N'Đặng Thị  ', N'Đầu bếp', N'133-526-7510', N'http://wvos.netl/ldtbc/yxvoa/mijmj/yoi.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (67, N'Lực ', N'Trần Hữu Thế', 0, CAST(N'2004-05-08T20:27:52.890' AS DateTime), N'Điện Biên-Việt Nam', N'923-Phong Điền-Huế-Việt Nam', 32, 7, N'Vũ Đức Huy', N'Hoàng Thế Yến ', N'Cán bộ', N'552-7734546', N'https://zccnx.netv2/yjkss/cwmni/icsqz/jue.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (68, N'Mai ', N'Bùi Thế', 0, CAST(N'2003-03-17T21:04:20.060' AS DateTime), N'Đắk Lắk-Việt Nam', N'73-Hương Trà-Huế-Việt Nam', 4, 6, N'Phạm Nguyền Văn Thương', N'Vũ Đặng Huy ', N'Thợ mộc', N'2019773278', N'http://ckahf.web86/kfwrp/sltwe/vrv.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (69, N'Thư ', N'Lý Đức', 0, CAST(N'2004-01-03T21:21:58.460' AS DateTime), N'Bến Tre-Việt Nam', N'13-Bình Điền-Huế-Việt Nam', 46, 1, N'Trần Hữu Hữu Lê', N'Đỗ Thanh Ngọc ', N'Điều dưỡng', N'0742433043', N'https://pkh.net67/qckso/gubsf/vqgfg.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (70, N'Trúc ', N'Trần Hoàng Đặng', 0, CAST(N'2005-04-30T02:09:26.850' AS DateTime), N'Bạc Liêu-Việt Nam', N'72-Nam Đông-Huế-Việt Nam', 41, 3, N'Trần Đặng Ân', N'Phan Mai Lê ', N'Công nhân', N'980-736-7869', N'http://jhjd.webr55/mlvqm/fclbm/nnord/bjhcx/sgrk.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (71, N'Hai ', N'Phan Mai', 0, CAST(N'2005-12-11T00:10:41.560' AS DateTime), N'Đắk Nông-Việt Nam', N'560-Nam Đông-Huế-Việt Nam', 20, 2, N'Hồ Văn Huy', N'Phan Thanh Ngân ', N'Điều dưỡng', N'495-6057610', N'http://mrkpj.local/jcivg/noaw.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (72, N'Đức ', N'Bùi Anh', 1, CAST(N'2004-02-05T12:56:15.060' AS DateTime), N'Đà Nẵng-Việt Nam', N'3-Hương Trà-Huế-Việt Nam', 32, 3, N'Phạm Nguyền Anh Thái', N'Bùi Bảo Trúc ', N'Điều dưỡng', N'9335256121', N'https://mjnm.localu/wamcy/vnrgi/apnmp/vajby/xgwjr.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (73, N'Lê ', N'Lý Văn', 0, CAST(N'2004-11-10T17:28:26.130' AS DateTime), N'Hà Nội-Việt Nam', N'268-A Lưới-Huế-Việt Nam', 53, 3, N'Lê Nguyên Vàng', N'Hoàng Thế Ngân ', N'Thợ điện', N'374-349-8243', N'https://hwmut.net1/hioiy/lpqyc/ublfs/mvdh.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (74, N'Thanh ', N'Đỗ Văn', 1, CAST(N'2004-05-12T03:49:08.490' AS DateTime), N'Đồng Tháp-Việt Nam', N'5-Bình Điền-Huế-Việt Nam', 45, 3, N'Vũ Anh Ân', N'Vũ Thanh Ngọc ', N'Thợ Xây', N'0154462477', N'https://cssbp.net56/xxkgy/ifars/iwbsm.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (75, N'Thương ', N'Lý Anh', 0, CAST(N'2003-03-06T14:49:11.080' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'503-A Lưới-Huế-Việt Nam', 50, 4, N'Phạm Hữu Duy', N'Ngô Mai Ngọc ', N'Công nhân', N'574-916-4391', N'https://xevfs.netm82/wukbp/ytldl/ksskc/erll.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (76, N'Năm ', N'Huỳnh Bảo', 0, CAST(N'2003-08-07T06:33:50.850' AS DateTime), N'Hà Nội-Việt Nam', N'724--Huế-Việt Nam', 42, 5, N'Phan Đăng Văn Đức', N'Bùi Thế Thương ', N'Giáo viên', N'272-465-9085', N'http://njhvy.webi4/qxeam/ajfiv/begbt/kbiwb/ryn.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (77, N'Hiền ', N'Phạm Anh', 0, CAST(N'2005-08-29T18:00:04.350' AS DateTime), N'Bình Dương-Việt Nam', N'24-Nam Đông-Huế-Việt Nam', 49, 5, N'Ngô Nguyên Thương', N'Đặng Thế Huy ', N'Dược sĩ', N'971-0809446', N'http://wgq.localq69/szfoy/tyjpf/ahtvj/oybjn/psgs.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (78, N'Lục ', N'Lý Đức', 1, CAST(N'2005-04-05T08:38:10.550' AS DateTime), N'Điện Biên-Việt Nam', N'926-Nam Đông-Huế-Việt Nam', 50, 7, N'Phạm Hữu Thái', N'Võ Thế Thương ', N'Hưu trí', N'155-413-8205', N'http://jjjqw.localt70/qdqns/rhkcq/muzf.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (79, N'Long ', N'Hoàng Thị', 1, CAST(N'2005-06-16T04:47:43.970' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'642--Huế-Việt Nam', 16, 1, N'Trần Hoàng Nguyên Duy', N'Hoàng Thanh Chi ', N'Điều dưỡng', N'821-7173740', N'http://hmwsq.local06/brkul/tzvjv/hsgkb/nrrsj.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (80, N'Ánh ', N'Nguyễn Hoàng Anh', 0, CAST(N'2004-10-19T05:12:35.470' AS DateTime), N'Điện Biên-Việt Nam', N'4--Huế-Việt Nam', 14, 4, N'Trần Hoàng Đặng Đức', N'Phan Thế Ân ', N'Hưu trí', N'929-4577494', N'https://zvvu.net95/zodtb/xrxly/lyvc.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (81, N'Thư ', N'Hồ Anh', 0, CAST(N'2005-03-08T17:51:21.350' AS DateTime), N'Huế-Việt Nam', N'4-Hương Trà-Huế-Việt Nam', 35, 7, N'Vũ Anh Hoài', N'Đặng Thị Ngân ', N'Đầu bếp', N'885-6309787', N'https://huaa.web08/jdpjc/jypfl/wzblj/tojkg/gznb.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (82, N'Hiếu ', N'Trần Bảo', 1, CAST(N'2004-04-13T07:13:22.870' AS DateTime), N'Hải Phòng-Việt Nam', N'73-Bình Điền-Huế-Việt Nam', 52, 6, N'Phan Thế Vũ', NULL, N'Nông dân', N'7625393520', N'https://dmab.local81/xdvvd/amueb/nzxf.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (83, N'Đệ ', N'Võ Hồng', 1, CAST(N'2003-02-03T06:18:23.300' AS DateTime), N'Bình Định-Việt Nam', N'6-Nam Đông-Huế-Việt Nam', 33, 1, N'Dương Đặng Thái', N'Hoàng Đặng Ngọc ', N'Thợ Xây', N'312-5136145', N'http://hdsui.net/hzqwq/colvm/ichbx/cxpz.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (84, N'Huỳnh ', N'Nguyễn Hoàng Mai', 1, CAST(N'2005-09-21T16:36:28.460' AS DateTime), N'Hà Nội-Việt Nam', N'9-A Lưới-Huế-Việt Nam', 19, 4, N'Võ Thế Ân', N'Dương Thanh Huy ', N'Lễ tân', N'6691135880', N'https://qeim.netd/eksxl/qrh.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (85, N'Vân ', N'Phan Hữu', 1, CAST(N'2004-11-24T09:51:37.530' AS DateTime), N'Bắc Giang-Việt Nam', N'15-Nam Đông-Huế-Việt Nam', 38, 3, NULL, N'Vũ Anh Ân ', N'Bác sĩ', N'109-856-6376', N'http://pnh.netv9/smait/bmjhl/cqfqq/zhlfd.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (86, N'Hai ', N'Lý Bảo', 0, CAST(N'2004-01-18T22:55:18.890' AS DateTime), N'Hải Phòng-Việt Nam', N'206-Hương Trà-Huế-Việt Nam', 6, 1, N'Phan Thế Vũ', N'Đặng Hồng Chi ', N'Thợ điện', N'3946572742', N'https://fua.webx96/capqu/yjakq/refaa/niety/gmc.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (87, N'Bảy ', N'Phan Bảo', 1, CAST(N'2003-10-22T09:37:56.690' AS DateTime), N'Điện Biên-Việt Nam', N'51--Huế-Việt Nam', 48, 3, N'Đỗ Văn Thái', N'Đặng Hồng Hoài ', N'Nhân viên văn phòng', NULL, N'https://eyzt.netj6/mokol/dewec.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (88, N'Hai ', N'Dương Đặng', 1, CAST(N'2003-07-26T13:10:49.090' AS DateTime), N'Bắc Kạn-Việt Nam', N'407-Phong Điền-Huế-Việt Nam', 43, 7, N'Phạm Nguyền Đặng Ân', N'Lê Thị Ngân ', N'Điều dưỡng', N'632-522-0067', N'https://jct.netg76/jyqdr/erdsf/iveys/gbuba/aqiip.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (89, N'Quỳnh ', N'Nguyễn Hoàng Thanh', 1, CAST(N'2004-05-23T13:12:23.120' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'8-A Lưới-Huế-Việt Nam', 51, 6, N'Lý Anh Lê', N'PhạmNguyễn Thế Quỳnh ', N'Nhạc sĩ', N'737548-5339', N'https://evb.netb79/aepln/hjcje/iyl.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (90, N'Hồng ', N'Trần Đặng', 0, CAST(N'2003-10-06T17:13:56.890' AS DateTime), N'Bắc Giang-Việt Nam', N'79-Hương Thủy-Huế-Việt Nam', 26, 4, N'Dương Bảo Lê', N'Trần Anh Lê ', N'Thợ điện', N'014-2031610', N'http://wbzag.nett/nldgh/alfuf/upozx/kay.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (91, N'Sáu ', N'Bùi Mai', 0, CAST(N'2004-03-13T02:43:08.620' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'528-Bình Điền-Huế-Việt Nam', 9, 1, N'Huỳnh Hữu Chi', N'Bùi Anh Trúc ', N'Thợ nước', N'6998971588', N'https://luzxg.local87/braxk/vhqte/rjoa.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (92, N'Phi ', N'Vũ Văn', 1, CAST(N'2003-07-07T19:05:13.710' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'697-Hương Trà-Huế-Việt Nam', 33, 1, NULL, N'Ngô Đặng  ', N'Công An', N'183-8637901', N'http://jtb.local11/ymbaq/ftnph/llspo/xkuwk/fezwm.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (93, N'Vân ', N'Vũ Thị', 1, CAST(N'2003-10-10T07:37:22.430' AS DateTime), N'Điện Biên-Việt Nam', N'6-Phú Lộc-Huế-Việt Nam', 52, 4, N'Lý Văn Đức', N'Đỗ Thanh Lê ', N'Nhạc sĩ', N'9276460378', N'http://ohrg.webb3/vkaip/xmxhw/bcaum/jgp.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (94, N'Bốn ', N'Ngô Đức', 0, CAST(N'2005-02-21T16:39:37.910' AS DateTime), N'Hà Nội-Việt Nam', N'782-Phong Điền-Huế-Việt Nam', 44, 2, N'Đặng Văn Thái', N'Lý Thanh Trúc ', N'Nhạc sĩ', N'724-338-0541', N'https://dtl.nete0/orfwj/pljes/pecrp.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (95, N'Huỳnh ', N'Trần Hoàng Nguyên', 1, CAST(N'2003-05-23T21:06:28.450' AS DateTime), N'Cao Bằng-Việt Nam', N'3-Nam Đông-Huế-Việt Nam', 43, 3, N'Lý Nguyên Ân', N'Trần Mai Vàng ', N'Nhân viên văn phòng', N'896-878-7171', N'https://hmpge.local3/vsdnj/pppq.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (96, N'Nguyên ', N'Dương Đặng', 1, CAST(N'2005-10-20T22:54:02.160' AS DateTime), N'Đồng Nai-Việt Nam', N'715--Huế-Việt Nam', 41, 5, N'Huỳnh Đặng Hoài', N'Ngô Bảo Ngân ', N'Công An', N'5844555363', N'https://bceg.netp05/bysnd/cqjxi/rscz.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (97, N'Pháp ', N'Nguyễn Hoàng Đặng', 0, CAST(N'2003-05-11T04:58:59.020' AS DateTime), N'Quãng Ngãi-Việt Nam', N'580-Hương Trà-Huế-Việt Nam', 15, 3, N'Trần Hoàng Nguyên Lê', N'Bùi Thanh Yến ', N'Công An', N'004165-0347', N'http://dnzf.web9/ttfml/qxcml.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (98, N'Thá ', N'Trần Hoàng Văn', 1, CAST(N'2003-02-17T03:47:52.900' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'12-Phú Lộc-Huế-Việt Nam', 44, 1, N'Lê Nguyên Duy', N'Vũ Đặng Vàng ', N'Thợ nước', N'157-108-3392', N'http://durpr.net61/csqvt/flpec/gklct.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (99, N'Huỳnh ', N'Hồ Thị', 1, CAST(N'2005-06-05T07:58:56.890' AS DateTime), N'Gia Lai-Việt Nam', N'1-A Lưới-Huế-Việt Nam', 9, 2, N'Hồ Đức Huy', N'Hoàng Hồng Trúc ', N'Dược sĩ', N'415-7708313', N'https://ftcha.localn5/yxfxh/sgwxq/rqjhx/ltgli/qiuy.pdf', 0)
GO
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (100, N'Vũ ', N'Nguyễn Thanh', 0, CAST(N'2004-01-14T16:26:06.820' AS DateTime), N'Bắc Kạn-Việt Nam', N'2-Hương Thủy-Huế-Việt Nam', 28, 4, N'Hoàng Nguyên Đức', N'Đỗ Hồng Ân ', N'Thợ mộc', N'108-953-9115', N'https://bca.webe7/qehcd/klapb/hvmox/ylujf.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (101, N'Đặng ', N'Dương Thế', 0, CAST(N'2004-11-09T02:17:55.080' AS DateTime), N'Tp.HCM-Việt Nam', N'384-Bình Điền-Huế-Việt Nam', 7, 5, N'Huỳnh Văn Đức', N'Võ Thị Ngọc ', N'Hưu trí', N'762-982-4596', N'https://roa.webs/hbfns/mwbvy/epu.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (102, N'Đệ ', N'Hồ Mai', 1, CAST(N'2004-06-26T06:15:02.650' AS DateTime), N'Quãng Ngãi-Việt Nam', N'170-Nam Đông-Huế-Việt Nam', 29, 2, N'Phan Đặng Vàng', N'Huỳnh Hồng Chi ', N'Nhạc sĩ', N'794259-8725', N'http://bkh.localn98/gidtg/nrtgb/mdfqb/yguc.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (103, N'Bảo ', N'Đỗ Anh', 1, CAST(N'2004-10-21T21:58:38.630' AS DateTime), N'Bắc Ninh-Việt Nam', N'707-A Lưới-Huế-Việt Nam', 8, 7, N'Nguyễn Thế Vàng', N'Ngô Anh Hiệu ', N'Công An', N'5552072871', N'https://hhtsg.local98/bykgq/pzcvw/wemxe.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (104, N'Thư ', N'Trần Nguyên', 1, CAST(N'2003-06-08T14:31:03.160' AS DateTime), N'Bình Dương-Việt Nam', N'232-Phong Điền-Huế-Việt Nam', 26, 7, N'Phan Đăng Hữu Huy', N'Hoàng Thế Ngân ', N'Nhạc sĩ', N'357-065-2793', N'http://fpyx.local4/nhrva/ozeph/aml.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (105, N'Vũ ', N'Đỗ Thị', 1, CAST(N'2003-07-19T22:59:27.420' AS DateTime), N'Bến Tre-Việt Nam', N'260-Nam Đông-Huế-Việt Nam', 11, 4, N'Trần Hoàng Thế Thái', N'Dương Thanh Ngân ', N'Điều dưỡng', N'156-8016277', N'https://hrxvr.web9/rzdmw/okaey/eyodh/mmbc.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (106, N'Anh ', N'Nguyễn Hoàng Mai', 1, CAST(N'2003-07-23T08:37:13.030' AS DateTime), N'Bình Dương-Việt Nam', N'31-Phong Điền-Huế-Việt Nam', 18, 5, N'Phạm Nguyên Ân', N'Phan Thị Ngọc ', N'Thợ nước', N'3773019012', N'http://jsq.netp0/pelee/hvxii/wcyhw/zlpo.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (107, N'Bảo ', N'Võ Mai', 0, CAST(N'2003-03-22T09:33:22.310' AS DateTime), N'Hà Nội-Việt Nam', N'17-Hương Thủy-Huế-Việt Nam', 5, 1, N'Ngô Bảo Đức', N'Phan Thanh Huy ', N'Cán bộ', N'4136233401', N'https://pxut.netg/zvkiq/gownq/orztb/axbfu.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (108, N'Lê ', N'Dương Thị', 1, CAST(N'2003-03-18T13:40:20.530' AS DateTime), N'Bắc Giang-Việt Nam', N'651-Phú Lộc-Huế-Việt Nam', 48, 1, N'Lý Đặng Chi', N'Hoàng Thanh Yến ', N'Lễ tân', N'898-5990407', N'https://mbh.localz1/lfjqi/bdwtj.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (109, N'Bảy ', N'Nguyễn Nguyên', 1, CAST(N'2004-03-22T03:36:35.690' AS DateTime), N'Hà Giang-Việt Nam', N'4-Bình Điền-Huế-Việt Nam', 9, 6, N'Võ Đức Ngọc', N'Huỳnh Thanh Huy ', N'Công An', N'888-5871394', N'https://jdr.net/srifg/krlks/hwtkp/ertwp/glozh.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (110, N'Đặng ', N'Bùi Thế', 1, CAST(N'2003-06-12T07:52:40.650' AS DateTime), N'Bến Tre-Việt Nam', N'4-Nam Đông-Huế-Việt Nam', 10, 4, N'Ngô Hữu Ngọc', N'Hồ Thanh Ngân ', N'Điều dưỡng', N'809-0264265', N'http://kqmri.web72/lhonj/yvpja/bayuj/joen.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (111, N'Chín ', N'Bùi Đức', 1, CAST(N'2004-06-16T18:12:06.410' AS DateTime), N'Đà Nẵng-Việt Nam', N'7-Nam Đông-Huế-Việt Nam', 17, 7, N'Ngô Đặng Hoài', N'Hoàng Thị Ngọc ', N'Thợ mộc', N'216-4590182', N'https://bbmh.web5/zxbqa/lpbqq/iezt.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (112, N'Long ', N'Bùi Mai', 0, CAST(N'2004-09-10T07:19:41.310' AS DateTime), N'Bình Phước-Việt Nam', N'5--Huế-Việt Nam', 42, 6, N'Trần Đặng Lê', N'Hồ Đặng Lê ', N'Nhân viên văn phòng', N'194-046-6299', N'https://uyf.localh45/lhkdz/ivips/bat.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (113, N'Bảo ', N'Phan Thị', 0, CAST(N'2004-12-12T13:21:47.740' AS DateTime), N'Quãng Ngãi-Việt Nam', N'69-A Lưới-Huế-Việt Nam', 13, 6, N'Võ Bảo Duy', N'Bùi Hồng Hiệu ', N'Nông dân', N'312-9752037', N'https://ihqtv.local/ivnxa/fifef/kmmdb/ewkvl/fhvsm.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (114, N'Đức ', N'Trần Hoàng Đức', 1, CAST(N'2005-05-22T13:49:24.920' AS DateTime), N'Cao Bằng-Việt Nam', N'257--Huế-Việt Nam', 27, 3, N'Hồ Bảo Hiệu', N'Hoàng Thị Ân ', N'Cán bộ', N'8334727560', N'http://wkmnc.local8/pcfwd/svypd/mjjrs/mws.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (115, N'Mười ', N'Phạm Mai', 1, CAST(N'2003-08-12T18:57:56.240' AS DateTime), N'Cao Bằng-Việt Nam', N'9-Bình Điền-Huế-Việt Nam', 39, 2, N'Lý Đặng Ngọc', N'Lê Anh Quỳnh ', N'Thợ điện', N'260894-4475', N'https://aazaf.web95/akrmt/fps.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (116, N'Đệ ', N'Trần Hoàng Hồng', 1, CAST(N'2005-12-02T13:40:57.560' AS DateTime), N'Tp.HCM-Việt Nam', N'6-Bình Điền-Huế-Việt Nam', 27, 5, N'Trần Hoàng Văn Huy', N'Hoàng Anh Hoài ', N'Giáo viên', N'918-280-6838', N'https://sefri.net1/dgrpx/cnx.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (117, N'Hiếu ', N'Hoàng Bảo', 1, CAST(N'2005-06-13T12:09:09.600' AS DateTime), N'Tp.HCM-Việt Nam', N'8-Hương Trà-Huế-Việt Nam', 40, 1, N'Hoàng Anh Hiệu', N'Dương Đặng  ', N'Buôn bán', N'415607-9807', N'http://idac.local5/vhbwb/lbhxb/nfcci/qjcqj/woik.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (118, N'Huỳnh ', N'Trần Mai', 1, CAST(N'2005-02-23T02:02:20.990' AS DateTime), N'Đắk Nông-Việt Nam', N'504--Huế-Việt Nam', 52, 1, N'Đỗ Bảo Hoài', N'Đỗ Hồng Lê ', N'Ca sĩ', N'0976633591', N'https://lud.neto83/fmqvp/axlrw/xexoz/kbnmd/tkus.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (119, N'Bốn ', N'Võ Anh', 1, CAST(N'2004-07-16T04:40:12.260' AS DateTime), N'Tp.HCM-Việt Nam', N'3-A Lưới-Huế-Việt Nam', 22, 1, N'Trần Hữu Văn Hoài', N'Hồ Đặng Ngọc ', N'Lễ tân', N'956-3899343', N'http://hhg.net/nkqjb/afgmz/jyait/abezi/dvpl.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (120, N'Nguyên ', N'Bùi Thanh', 0, CAST(N'2004-02-06T02:34:40.840' AS DateTime), N'Bắc Ninh-Việt Nam', N'335-Phú Lộc-Huế-Việt Nam', 33, 5, N'Đặng Bảo Ân', N'Ngô Thế Quỳnh ', N'Lễ tân', N'473618-7709', N'https://rynwq.localc72/ogmig/rpwzu/bhgg.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (121, N'Nguyên ', N'Võ Nguyên', 0, CAST(N'2003-11-23T01:10:58.410' AS DateTime), N'Quãng Nam-Việt Nam', N'824--Huế-Việt Nam', 6, 1, N'Vũ Đặng Hiệu', N'Lý Thị Yến ', N'Đầu bếp', N'016319-2077', N'https://llic.localj6/jylcu/jhetc/uzsjp/wvbcr/tfeqg.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (122, N'Triệu ', N'Trần Hữu Thị', 0, CAST(N'2003-10-15T07:17:03.800' AS DateTime), N'Bắc Ninh-Việt Nam', N'85-Phong Điền-Huế-Việt Nam', 44, 7, N'Huỳnh Đặng Chi', N'Huỳnh Thế Tranh ', N'Công An', N'2295238744', N'http://jwpvc.localj/uiand/suwuk/ghi.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (123, N'Mai ', N'Phan Văn', 1, CAST(N'2004-10-24T07:51:56.950' AS DateTime), N'Bắc Ninh-Việt Nam', N'17-Hương Trà-Huế-Việt Nam', 7, 7, N'Phan Văn Vũ', N'Phan Hồng Yến ', N'Bác sĩ', N'580877-2815', N'https://sbh.webb/grcny/rxtts/nncof/xio.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (124, N'Yến ', N'Lý Đặng', 1, CAST(N'2003-03-31T04:08:01.560' AS DateTime), N'Quãng Ngãi-Việt Nam', N'2-Phú Lộc-Huế-Việt Nam', 21, 4, N'Trần Hữu Anh Thương', N'Trần Đặng Trúc ', N'Thợ điện', N'6415707796', N'https://qeq.webf/glduh/opjop/rfn.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (125, N'Ân ', N'Võ Văn', 1, CAST(N'2004-02-17T23:26:18.220' AS DateTime), N'Đà Nẵng-Việt Nam', N'78-Bình Điền-Huế-Việt Nam', 32, 3, N'Trần Hoàng Văn Đức', N'Vũ Hồng Huy ', N'Điều dưỡng', N'674-3995458', N'https://cab.webb87/kotch/czuxn.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (126, N'Nhạn ', N'Ngô Đức', 0, CAST(N'2005-06-06T05:05:27.850' AS DateTime), N'Tp.HCM-Việt Nam', N'2-Nam Đông-Huế-Việt Nam', 42, 1, N'Phạm Nguyền Thế Đức', N'Bùi Thế Thương ', N'Nhân viên văn phòng', N'708-367-7841', N'https://fzayz.web/osxzb/krubz/vtkyk/yaorh.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (127, N'Lục ', N'Đặng Anh', 1, CAST(N'2003-04-29T05:18:52.630' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'856-A Lưới-Huế-Việt Nam', 34, 6, N'Huỳnh Thế Thương', N'Hoàng Đặng Thương ', N'Nông dân', N'071-4396418', N'http://eyuqp.netw5/yfmwo/ffdgo/stvij/kur.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (128, N'Sáu ', N'Trần Thị', 1, CAST(N'2005-09-19T00:48:48.220' AS DateTime), N'Hà Giang-Việt Nam', N'3-Hương Trà-Huế-Việt Nam', 9, 2, N'Dương Đức Huy', N'Phan Đặng Ngân ', N'Công An', N'121-795-0939', N'http://weli.local75/tnrdq/cyxku/wvxns/plzua.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (129, N'BA ', N'Phan Thị', 0, CAST(N'2003-12-21T06:42:40.040' AS DateTime), N'Quãng Nam-Việt Nam', N'518--Huế-Việt Nam', 3, 7, N'Vũ Văn Ân', N'Hồ Thanh Yến ', N'Thợ Xây', N'558-721-4186', N'http://xkebt.netm86/wpanb/gpnxl/pzwh.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (130, N'Mai ', N'Trần Hoàng Thanh', 0, CAST(N'2003-05-16T15:55:08.920' AS DateTime), N'Điện Biên-Việt Nam', N'41-Phong Điền-Huế-Việt Nam', 9, 6, N'Võ Thế Ngọc', N'Lý Thế Thư ', N'Đầu bếp', N'949-469-1296', N'http://tka.local/nkscw/lsvyg/xep.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (131, N'Tám ', N'Lê Anh', 0, CAST(N'2003-03-30T01:34:51.820' AS DateTime), N'Đồng Tháp-Việt Nam', N'4-Hương Trà-Huế-Việt Nam', 27, 3, N'Bùi Bảo Lê', N'Lê Đặng Thương ', N'Thợ mộc', N'490-061-8177', N'https://pel.netd9/vxgsl/sfu.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (132, N'Lục ', N'Bùi Thế', 0, CAST(N'2005-07-13T14:12:11.440' AS DateTime), N'Hải Phòng-Việt Nam', N'3-Phú Lộc-Huế-Việt Nam', 6, 4, N'Huỳnh Đặng Huy', N'Lý Anh Thư ', N'Thợ điện', N'609-6099557', N'https://ehbj.local/qebfm/zfptw/bxxso.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (133, N'Nguyên ', N'Vũ Văn', 0, CAST(N'2005-10-31T00:39:13.660' AS DateTime), N'Đồng Tháp-Việt Nam', N'500-Nam Đông-Huế-Việt Nam', 42, 5, N'Võ Thế Thái', N'Phan Bảo Ngọc ', N'Điều dưỡng', N'424406-2283', N'http://kqsd.web48/gkpft/mywsz/bsmcj/qdzod.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (134, N'Ân ', N'Phan Bảo', 1, CAST(N'2004-06-02T12:21:37.150' AS DateTime), N'Hải Phòng-Việt Nam', N'74-Nam Đông-Huế-Việt Nam', 43, 4, N'Trần Hoàng Đức Thái', N'Huỳnh Đặng Ân ', N'Đầu bếp', N'3821364039', N'http://xdns.netd/lremc/itkkq/qwuj.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (135, N'Đăng ', N'Đỗ Hữu', 0, CAST(N'2005-12-10T02:54:40.400' AS DateTime), N'Cao Bằng-Việt Nam', N'93-Hương Thủy-Huế-Việt Nam', 7, 6, N'Bùi Văn Đức', N'Bùi Mai  ', N'Buôn bán', N'5135775356', N'http://rgf.webi4/obdcv/szdbj/kzpvm/qxehv/ykglx.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (136, N'Long ', N'Trần Hữu Thị', 1, CAST(N'2003-09-13T11:36:18.700' AS DateTime), N'Đồng Nai-Việt Nam', N'552-Bình Điền-Huế-Việt Nam', 6, 6, N'Phạm Nguyền Bảo Hoài', N'Lê Thanh  ', N'Dược sĩ', N'326-036-1641', N'https://envjn.web03/nkvfq/wwugb/fcelk/cziec/efi.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (137, N'Đăng ', N'Nguyễn Hoàng Thị', 1, CAST(N'2005-06-22T09:14:44.250' AS DateTime), N'Điện Biên-Việt Nam', N'6-Hương Trà-Huế-Việt Nam', 45, 6, N'Phạm Nguyền Đặng Đức', N'Trần Hồng Thư ', N'Thợ nước', N'4771925070', N'https://vuhp.net0/iwjxm/dkdi.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (138, N'Sáu ', N'Võ Đức', 1, CAST(N'2005-08-27T15:47:20.140' AS DateTime), N'Hà Giang-Việt Nam', N'39-Hương Thủy-Huế-Việt Nam', 7, 2, N'Phạm Đặng Vàng', N'Lê Thanh Thương ', N'Bác sĩ', N'770-2492511', N'https://axiiy.webd/lgapo/xjlqq/vekqb/ajpzn/sffqz.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (139, N'Trâm ', N'Đỗ Bảo', 1, CAST(N'2005-03-05T17:37:01.040' AS DateTime), N'Bình Định-Việt Nam', N'377-Hương Thủy-Huế-Việt Nam', 9, 7, N'Lý Hữu Duy', N'Đỗ Bảo Hoài ', N'Công nhân', N'925866-3996', N'http://szmg.net/lkqkl/dolif/uul.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (140, N'Quân ', N'Trần Hoàng Hồng', 0, CAST(N'2004-05-05T01:14:24.500' AS DateTime), N'Đắk Lắk-Việt Nam', N'51-Hương Trà-Huế-Việt Nam', 21, 5, N'Huỳnh Thế Vàng', N'Hoàng Hồng Ngọc ', N'Dược sĩ', N'955-3600776', N'https://jlg.neti/rdcoc/xdpwv/sbbob.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (141, N'Phổ ', N'Hoàng Anh', 0, CAST(N'2003-10-30T13:21:56.580' AS DateTime), N'Quãng Ngãi-Việt Nam', N'17-Bình Điền-Huế-Việt Nam', 2, 7, N'Phạm Bảo Ân', N'Trần Thanh Hoài ', N'Thợ mộc', N'670-3591161', N'https://ebn.local0/jilsr/ljude/qvwyq/jfvyg/vrqqi.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (142, N'Hoàng ', N'Hồ Văn', 1, CAST(N'2003-08-06T19:57:36.150' AS DateTime), N'Bắc Ninh-Việt Nam', N'4--Huế-Việt Nam', 1, 2, N'Đỗ Bảo Lê', N'Huỳnh Thế Thư ', N'Cán bộ', N'2426903181', N'https://scfo.net56/yuznf/vaurz/lckwz/ubxns/oqinb.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (143, N'Thiện ', N'Vũ Anh', 0, CAST(N'2005-05-05T09:34:13.410' AS DateTime), N'Bắc Kạn-Việt Nam', N'89-Hương Thủy-Huế-Việt Nam', 34, 2, N'Đặng Anh Hoài', N'Ngô Hồng Trúc ', N'Cán bộ', N'089-6974699', N'https://rrhf.localk/vttwu/zsbtv/jlbuz/iizd.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (144, N'Hóa ', N'Dương Đặng', 1, CAST(N'2003-12-13T05:19:42.460' AS DateTime), N'Đắk Nông-Việt Nam', N'169-A Lưới-Huế-Việt Nam', 41, 2, N'Hoàng Anh Duy', N'Hồ Thị Huy ', N'Thợ Xây', N'209550-7740', N'http://uufa.localv0/mrwvn/pbtnh/dbe.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (145, N'Phi ', N'Đặng Thế', 0, CAST(N'2005-04-20T23:01:50.480' AS DateTime), N'Quãng Nam-Việt Nam', N'767-Bình Điền-Huế-Việt Nam', 10, 5, N'Trần Hữu Đặng Vũ', N'Huỳnh Hồng Thư ', N'Nhân viên văn phòng', N'167-311-2736', N'https://wrwji.local/haoit/ihsmu/ovq.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (146, N'Thá ', N'Hoàng Nguyên', 1, CAST(N'2005-07-02T19:23:27.320' AS DateTime), N'Cao Bằng-Việt Nam', N'2-Bình Điền-Huế-Việt Nam', 21, 2, N'Phan Đăng Hữu Thương', N'Hoàng Thế Thương ', N'Thợ điện', N'000-2215761', N'http://bzr.netl01/wetqk/tzybb/wcejf/athns/sor.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (147, N'Tám ', N'Hoàng Thế', 1, CAST(N'2004-07-25T05:43:25.970' AS DateTime), N'Bắc Ninh-Việt Nam', N'746-Phú Lộc-Huế-Việt Nam', 21, 3, N'Dương Đức Ngọc', N'Ngô Bảo Thư ', N'Giáo viên', N'846-7870842', N'http://tzfyw.webb08/xagun/bywdj/jmbxw/xwuic/xgwj.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (148, N'Đệ ', N'Phạm Mai', 1, CAST(N'2004-05-19T17:47:57.510' AS DateTime), N'Tp.HCM-Việt Nam', N'32-Bình Điền-Huế-Việt Nam', 26, 1, N'Huỳnh Đặng Ân', N'Lý Mai Tranh ', N'Hưu trí', N'814-662-9494', N'https://wfz.local7/bfwvv/mvzei/zgtoy/wgcsv/fnw.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (149, N'Thiện ', N'Phạm Văn', 1, CAST(N'2004-07-12T21:41:41.670' AS DateTime), N'Bắc Kạn-Việt Nam', N'85-A Lưới-Huế-Việt Nam', 5, 7, N'Đỗ Anh Hiệu', N'Trần Thị Chi ', N'Công An', N'550-7002231', N'https://kcya.local2/tajzq/wzgft/wxt.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (150, N'Thị ', N'Trần Hoàng Anh', 1, CAST(N'2003-06-21T07:25:30.890' AS DateTime), N'Bình Định-Việt Nam', N'9--Huế-Việt Nam', 17, 5, N'Phạm Nguyền Văn Vàng', N'Trần Anh Tranh ', N'Thợ nước', N'4794332142', N'http://qia.webp/zledr/wnciv/gqxcl/sfbgm/mpizq.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (151, N'Chi ', N'Ngô Hồng', 0, CAST(N'2003-05-10T10:44:52.550' AS DateTime), N'Đắk Lắk-Việt Nam', N'96-Hương Trà-Huế-Việt Nam', 1, 5, N'Hồ Văn Thái', N'Huỳnh Hồng Hoài ', N'Điều dưỡng', N'282-5707161', N'https://kxxob.webp36/rjrda/zaa.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (152, N'Đại ', N'Hoàng Đặng', 0, CAST(N'2004-03-17T02:56:38.040' AS DateTime), N'Bắc Kạn-Việt Nam', N'605-A Lưới-Huế-Việt Nam', 18, 3, N'Nguyễn Thế Duy', N'Trần Đặng Chi ', N'Giáo viên', N'331-152-2122', N'https://arc.local/pwjsj/ioder/mpufq/pdvek/fpb.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (153, N'Bảy ', N'Trần Hữu Đức', 1, CAST(N'2004-08-02T23:07:40.640' AS DateTime), N'Tp.HCM-Việt Nam', N'92-Phú Lộc-Huế-Việt Nam', 22, 1, N'Lý Thế Vàng', N'Võ Thanh Yến ', N'Lễ tân', N'6683016734', N'https://enl.net/uzkkx/hdlkw/dbhcs/llntz/pja.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (154, N'Danh ', N'Nguyễn Bảo', 0, CAST(N'2004-04-30T05:24:16.050' AS DateTime), N'Bắc Ninh-Việt Nam', N'497-Nam Đông-Huế-Việt Nam', 30, 5, N'Trần Hoàng Nguyên Ân', N'Trần Bảo Hiệu ', N'Thợ Xây', N'371890-7680', N'http://qzfsa.net2/bdrpd/dfiso/pkba.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (155, N'Mười ', N'Phan Anh', 1, CAST(N'2003-02-22T15:15:08.400' AS DateTime), N'Quãng Ngãi-Việt Nam', N'522-Bình Điền-Huế-Việt Nam', 22, 4, N'Trần Văn Thương', N'Hoàng Thanh  ', N'Đầu bếp', N'357-136-3251', N'https://udak.local4/jhdxu/qhims/yujcq/hzpgq/unb.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (156, N'Hoàng ', N'Phan Thế', 0, CAST(N'2004-01-26T19:00:51.280' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'40-A Lưới-Huế-Việt Nam', 18, 5, N'Võ Hữu Thái', N'Bùi Anh Vàng ', N'Dược sĩ', N'427-505-6631', N'https://mfc.net4/yksei/xefbr/beabd/jchk.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (157, N'Phi ', N'Vũ Nguyên', 0, CAST(N'2005-09-01T22:23:05.700' AS DateTime), N'Đắk Lắk-Việt Nam', N'439-Phú Lộc-Huế-Việt Nam', 23, 2, N'Phạm Nguyền Bảo Lê', N'PhạmNguyễn Anh Huy ', N'Thợ điện', N'610-1900089', N'http://amuk.local1/owbiy/iws.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (158, N'Thá ', N'Nguyễn Nguyên', 1, CAST(N'2004-07-24T17:50:37.060' AS DateTime), N'Hải Phòng-Việt Nam', N'4--Huế-Việt Nam', 41, 4, N'Hồ Văn Hoài', N'Võ Bảo Yến ', N'Thợ điện', N'648-585-3947', N'http://bcmw.localj5/phicu/dacgv/ebil.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (159, N'Bảy ', N'Hồ Bảo', 0, CAST(N'2005-04-20T15:04:44.940' AS DateTime), N'Bắc Ninh-Việt Nam', N'63-Nam Đông-Huế-Việt Nam', 48, 5, N'Vũ Bảo Huy', N'Đặng Anh Yến ', N'Thợ mộc', N'495-210-4102', N'https://eedp.net/puhua/mapu.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (160, N'Lực ', N'Trần Thanh', 0, CAST(N'2004-02-12T17:53:59.570' AS DateTime), N'Bắc Kạn-Việt Nam', N'598-A Lưới-Huế-Việt Nam', 24, 4, N'Vũ Văn Ân', N'Phan Đặng Tranh ', N'Công An', N'5151798688', N'http://fjef.netu6/zjdls/jwkal/yakqo/vlkcp/tkf.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (161, N'Đệ ', N'Nguyễn Hoàng Mai', 1, CAST(N'2003-03-27T03:18:20.390' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'658-Phú Lộc-Huế-Việt Nam', 38, 7, N'Lê Hữu Ân', N'Dương Thanh Trúc ', N'Công An', N'1520564364', N'https://qyrsu.locala74/oucff/rfeur/wtesh.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (162, N'Tam ', N'Trần Đức', 0, CAST(N'2003-07-03T08:44:34.090' AS DateTime), N'Đà Nẵng-Việt Nam', N'4-Bình Điền-Huế-Việt Nam', 50, 6, N'Ngô Đức Vũ', N'Trần Mai Tranh ', N'Dược sĩ', N'383-1367965', N'http://gjmqg.web50/rbaeq/axyym/anyyf/aadlu/hmyym.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (163, N'Bảy ', N'Trần Hữu', 0, CAST(N'2005-03-28T06:57:40.500' AS DateTime), N'Đà Nẵng-Việt Nam', N'5-Phú Lộc-Huế-Việt Nam', 45, 2, N'Trần Hoàng Đặng Lê', N'Phan Đặng Hiệu ', N'Ca sĩ', N'5229840575', N'https://qqmvs.webc3/xipti/zfzcx/gvxeg/kmghn.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (164, N'Lệ ', N'Lý Anh', 0, CAST(N'2003-11-07T11:41:26.760' AS DateTime), N'Quãng Ngãi-Việt Nam', N'62-A Lưới-Huế-Việt Nam', 54, 7, N'Trần Hoàng Đức Vũ', N'Dương Hồng Chi ', N'Dược sĩ', N'7150257947', N'http://ffgxj.localn98/rlmen/goxcx/pzvaq/fsfpu/ctd.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (165, N'Tứ ', N'Dương Hồng', 1, CAST(N'2003-03-16T06:17:48.830' AS DateTime), N'Bình Phước-Việt Nam', N'56-Bình Điền-Huế-Việt Nam', 38, 2, N'Lý Đặng Huy', N'Bùi Thanh Thư ', N'Đầu bếp', N'1811194376', N'https://xiak.localu96/hcjbu/imr.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (166, N'Mai ', N'Nguyễn Thanh', 0, CAST(N'2004-12-04T03:59:54.970' AS DateTime), N'Điện Biên-Việt Nam', N'5--Huế-Việt Nam', 11, 3, N'Phan Đăng Nguyên Vàng', N'Hồ Mai Thương ', N'Lễ tân', N'660-637-3752', N'https://lbrm.web1/fpvef/gnv.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (167, N'Ngọc ', N'Phạm Đặng', 0, CAST(N'2004-11-10T06:40:27.650' AS DateTime), N'Đắk Lắk-Việt Nam', N'8-Hương Trà-Huế-Việt Nam', 54, 1, N'Dương Đặng Duy', N'Huỳnh Thanh Quỳnh ', N'Công An', N'0461416190', N'https://hrqa.localu87/yrjha/aptxx/gpo.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (168, N'Hiếu ', N'Đỗ Nguyên', 0, CAST(N'2003-07-13T01:00:10.590' AS DateTime), N'Gia Lai-Việt Nam', N'63-Phong Điền-Huế-Việt Nam', 25, 2, N'Dương Thế Ngọc', N'Võ Đặng Trúc ', N'Công An', N'6591807183', N'http://ibout.web82/olxif/kynro/xjtwu/ufzrl.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (169, N'Lê ', N'Hoàng Nguyên', 1, CAST(N'2005-06-12T10:54:44.520' AS DateTime), N'Hà Giang-Việt Nam', N'9-Hương Thủy-Huế-Việt Nam', 20, 4, N'Ngô Văn Thái', N'Đặng Đặng Yến ', N'Cán bộ', N'3560602511', N'https://xjkxi.localf4/kadir/mgxj.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (170, N'Khoa ', N'Trần Hữu Hồng', 0, CAST(N'2005-11-29T07:21:37.540' AS DateTime), N'Đồng Nai-Việt Nam', N'47-Hương Trà-Huế-Việt Nam', 34, 4, N'Bùi Bảo Chi', N'Bùi Thanh Huy ', N'Hưu trí', N'446-888-1414', N'http://nleox.webk60/jucsa/awyuc/zue.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (171, N'Năm ', N'Trần Hồng', 1, CAST(N'2003-06-13T04:26:13.310' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'6-Phú Lộc-Huế-Việt Nam', 36, 6, N'Phạm Nguyền Thế Lê', N'Đỗ Mai Tranh ', N'Nông dân', N'057142-9497', N'http://dkpu.webq4/ijcub/rdfjy/lpq.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (172, N'Hiệu ', N'Nguyễn Hoàng Văn', 1, CAST(N'2005-10-16T20:21:49.460' AS DateTime), N'Tp.HCM-Việt Nam', N'97-Hương Thủy-Huế-Việt Nam', 33, 6, N'Nguyễn Thế Vàng', N'Vũ Anh Tranh ', N'Công An', N'568-2435628', N'https://gds.localy05/bnvlk/kzxyl/oaeel/frasp.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (173, N'Ân ', N'Phan Hữu', 1, CAST(N'2005-12-20T08:25:19.960' AS DateTime), N'Hải Phòng-Việt Nam', N'622-Bình Điền-Huế-Việt Nam', 44, 1, N'Võ Anh Vàng', N'Hồ Thị Yến ', N'Lễ tân', N'655-676-9247', N'http://mhe.localt01/nbzfc/zuqev.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (174, N'Đặng ', N'Võ Anh', 1, CAST(N'2003-03-14T03:25:47.760' AS DateTime), N'Bắc Kạn-Việt Nam', N'606-Phú Lộc-Huế-Việt Nam', 1, 3, N'Hoàng Nguyên Chi', N'Lê Thị Hiệu ', N'Ca sĩ', N'3915505209', N'https://wju.weby0/dvfxs/mwiax/flxsq.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (175, N'Hai ', N'Đỗ Anh', 1, CAST(N'2003-04-09T13:12:44.260' AS DateTime), N'Hải Phòng-Việt Nam', N'4-A Lưới-Huế-Việt Nam', 32, 6, N'Trần Hoàng Hữu Huy', N'Huỳnh Thanh Thương ', N'Nhạc sĩ', N'424-3998067', N'https://rkkz.webk88/kwchu/bjryo/ttd.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (176, N'Đức ', N'Võ Nguyên', 0, CAST(N'2003-04-19T05:13:22.250' AS DateTime), N'Đắk Nông-Việt Nam', N'33-Phong Điền-Huế-Việt Nam', 6, 6, N'Bùi Nguyên Thương', N'PhạmNguyễn Thanh Tranh ', N'Thợ điện', N'0956530583', N'http://icfb.net2/vkbmm/sjiqy/klxt.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (177, N'Yến ', N'Trần Hữu Mai', 1, CAST(N'2004-06-10T21:42:50.400' AS DateTime), N'Hà Nội-Việt Nam', N'92-Hương Trà-Huế-Việt Nam', 10, 6, N'Bùi Bảo Vàng', N'Lý Đặng Lê ', N'Bác sĩ', N'3766703919', N'https://kgcyf.neti4/pjtnh/cgjbu/lsusu/rxszh.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (178, N'Chi ', N'Trần Thị', 1, CAST(N'2003-11-13T02:32:14.480' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'11-Phong Điền-Huế-Việt Nam', 20, 6, N'Phạm Hữu Hoài', N'Hồ Bảo Thương ', N'Thợ nước', N'4835618982', N'https://wyab.net/erxqv/lwj.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (179, N'Tam ', N'Nguyễn Hoàng Thanh', 1, CAST(N'2003-12-10T05:06:11.090' AS DateTime), N'Gia Lai-Việt Nam', N'59-Hương Trà-Huế-Việt Nam', 12, 6, N'Trần Hoàng Bảo Vũ', N'Lê Đặng Tranh ', N'Thợ mộc', N'8061382905', N'http://mtto.web1/rtvbe/isxar/pbwn.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (180, N'Hóa ', N'Lý Nguyên', 1, CAST(N'2004-08-17T04:02:50.910' AS DateTime), N'Bạc Liêu-Việt Nam', N'992-Phú Lộc-Huế-Việt Nam', 12, 1, N'Đặng Văn Chi', N'Trần Mai Trúc ', N'Thợ điện', N'634-2206590', N'http://dyqrz.neth1/qtdzd/uoeoq/bvddr/sxhwm/bbwrz.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (181, N'Hoài ', N'Lý Thế', 1, CAST(N'2003-11-12T23:22:01.870' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'3-Bình Điền-Huế-Việt Nam', 21, 6, N'Phạm Đức Vũ', N'Hoàng Thế Thương ', N'Đầu bếp', N'787-235-1957', N'https://tnbp.nett/cphbq/fcpwk/ftgzy/ycpft/vntnq.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (182, N'Thế ', N'Dương Văn', 0, CAST(N'2004-12-09T11:30:55.120' AS DateTime), N'Tp.HCM-Việt Nam', N'379--Huế-Việt Nam', 9, 5, N'Nguyễn Nguyên Hiệu', N'Võ Hồng Hiệu ', N'Giáo viên', N'6664575099', N'https://vqtww.webs8/emhhj/drtzb/vffdk/lzx.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (183, N'Công ', N'Võ Thế', 0, CAST(N'2004-03-09T03:07:06.550' AS DateTime), N'Bình Phước-Việt Nam', N'20-Nam Đông-Huế-Việt Nam', 5, 3, N'Nguyễn Bảo Hiệu', N'Bùi Thanh Chi ', N'Buôn bán', N'5373153817', N'http://zjcx.netq/wifle/mhgwp.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (184, N'Hai ', N'Hồ Văn', 1, CAST(N'2003-07-02T23:17:09.140' AS DateTime), N'Cao Bằng-Việt Nam', N'906-Phú Lộc-Huế-Việt Nam', 40, 2, N'Lê Bảo Vàng', N'Hoàng Thị Lê ', N'Thợ nước', N'273-090-1026', N'http://uhhu.neta/izkfa/iibai/xynim/eozdi/djzv.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (185, N'Hiền ', N'Lê Thanh', 1, CAST(N'2003-01-07T05:10:16.360' AS DateTime), N'Hà Nội-Việt Nam', N'9-Nam Đông-Huế-Việt Nam', 9, 2, N'Võ Đặng Huy', N'Bùi Mai Hiệu ', N'Nông dân', N'245-728-5072', N'http://cgm.webt27/uaixk/hdykq/teqy.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (186, N'Vũ ', N'Dương Đặng', 1, CAST(N'2005-01-11T22:38:13.780' AS DateTime), N'Bến Tre-Việt Nam', N'77-Phong Điền-Huế-Việt Nam', 10, 1, N'Đỗ Đặng Hiệu', N'Phan Thị Thương ', N'Công An', N'6308776271', N'https://mbrg.web8/fjkzs/idgyq/dmjms/ypu.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (187, N'Thiện ', N'Nguyễn Hoàng Đặng', 1, CAST(N'2003-12-11T15:04:30.800' AS DateTime), N'Đà Nẵng-Việt Nam', N'31-Bình Điền-Huế-Việt Nam', 38, 4, N'Huỳnh Văn Ân', N'Dương Thị Vàng ', N'Đầu bếp', N'2898280802', N'https://bedtc.web0/bfoav/uwsxy/ext.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (188, N'Tạ ', N'Bùi Thị', 1, CAST(N'2004-07-02T19:14:57.610' AS DateTime), N'Bạc Liêu-Việt Nam', N'7-Hương Trà-Huế-Việt Nam', 13, 1, N'Đặng Văn Thái', N'Võ Mai Yến ', N'Đầu bếp', N'918-803-4653', N'https://sub.localy2/zzdoo/hgetd/aixid.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (189, N'Huỳnh ', N'Phạm Nguyên', 1, CAST(N'2004-04-10T21:06:28.740' AS DateTime), N'Hà Nội-Việt Nam', N'41--Huế-Việt Nam', 21, 1, N'Vũ Văn Hiệu', N'Võ Thế Thương ', N'Buôn bán', N'457-6183511', N'https://ihi.netu3/mptsw/ujjkp/uxtkt/wvuhg/trr.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (190, N'Lục ', N'Hoàng Đặng', 0, CAST(N'2004-11-14T07:53:49.120' AS DateTime), N'Huế-Việt Nam', N'776-Phú Lộc-Huế-Việt Nam', 44, 2, N'Đặng Anh Chi', N'Ngô Mai Huy ', N'Công nhân', N'975-445-2587', N'http://dzf.netn2/otwoh/nlxxa/lgvei/zebid.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (191, N'Quỳnh ', N'Hoàng Bảo', 1, CAST(N'2004-01-11T13:13:13.000' AS DateTime), N'Tp.HCM-Việt Nam', N'38-A Lưới-Huế-Việt Nam', 38, 4, N'Nguyễn Bảo Vũ', N'Trần Thanh Ngọc ', N'Thợ nước', N'164419-8393', N'http://hgpf.localg/kskxe/ojteo/tdfmh/cgqhh.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (192, N'Thúy ', N'Dương Anh', 0, CAST(N'2003-11-29T15:24:07.180' AS DateTime), N'Bình Định-Việt Nam', N'25-Phong Điền-Huế-Việt Nam', 4, 3, N'Trần Hữu Thế Vũ', N'Huỳnh Thị Thương ', N'Cán bộ', N'291-711-0056', N'https://vszor.local/rbavt/wcb.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (193, N'Ngân ', N'Nguyễn Hoàng Bảo', 1, CAST(N'2003-05-10T00:42:35.200' AS DateTime), N'Bến Tre-Việt Nam', N'9-Bình Điền-Huế-Việt Nam', 14, 5, N'Phạm Đặng Hoài', N'PhạmNguyễn Thế Vàng ', N'Thợ điện', N'020-6038705', N'https://alfz.netj47/jwjfn/zyjou/ghnxk/peujr.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (194, N'Ngân ', N'Phan Đức', 1, CAST(N'2004-01-22T23:43:01.460' AS DateTime), N'Tp.HCM-Việt Nam', N'4-Phú Lộc-Huế-Việt Nam', 39, 4, N'Trần Hữu Hữu Thương', N'Lý Đặng Thư ', N'Đầu bếp', N'0513330510', N'http://eyk.netx/wjqph/oclqz/inmsg/fcafu/vqb.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (195, N'Anh ', N'Ngô Thanh', 0, CAST(N'2004-02-09T21:56:04.100' AS DateTime), N'Bắc Ninh-Việt Nam', N'81-Phong Điền-Huế-Việt Nam', 38, 6, N'Ngô Anh Đức', N'Hồ Mai Tranh ', N'Hưu trí', N'4635282544', N'https://xndv.net/vghgy/yvkxx/tma.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (196, N'Đặng ', N'Bùi Mai', 0, CAST(N'2003-04-30T04:37:22.480' AS DateTime), N'Đà Nẵng-Việt Nam', N'1-Nam Đông-Huế-Việt Nam', 6, 1, NULL, NULL, N'Hưu trí', NULL, N'https://utri.localb/mxzyq/kwsyw/wuqqw/dbck.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (197, N'Triệu ', N'Trần Hữu Hữu', 1, CAST(N'2004-05-10T12:59:55.660' AS DateTime), N'Bắc Giang-Việt Nam', N'741-Nam Đông-Huế-Việt Nam', 10, 1, N'Trần Anh Chi', N'Trần Thị Yến ', N'Thợ nước', N'916-4806958', N'https://wqn.web29/nyyhy/esssi/wrimq/jmcx.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (198, N'Phi ', N'Phan Thị', 1, CAST(N'2004-06-28T21:52:46.640' AS DateTime), N'Quãng Nam-Việt Nam', N'1-Hương Thủy-Huế-Việt Nam', 34, 3, N'Bùi Bảo Huy', N'Lý Đặng Ngân ', N'Bác sĩ', N'193-1307656', N'https://ewp.local5/csyce/yrgfq/uvy.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (199, N'Tứ ', N'Bùi Hồng', 0, CAST(N'2003-09-29T23:01:53.630' AS DateTime), N'Quãng Ngãi-Việt Nam', N'39-Hương Thủy-Huế-Việt Nam', 4, 7, N'Phan Đặng Lê', N'Hồ Anh Huy ', N'Thợ nước', N'799-888-5688', N'https://owgp.local7/xycui/oponl/olrvi/kbrjg/zrenu.pdf', 0)
GO
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (200, N'Lê ', N'Hoàng Thanh', 1, CAST(N'2003-05-18T19:01:55.500' AS DateTime), N'Bạc Liêu-Việt Nam', N'317-A Lưới-Huế-Việt Nam', 53, 2, N'Nguyễn Nguyên Chi', N'Hồ Hồng Chi ', N'Hưu trí', N'6703206006', N'https://tkti.web3/xzeei/ycqri/worav/hbv.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (201, N'Hồng ', N'Bùi Đặng', 0, CAST(N'2003-08-23T12:42:59.670' AS DateTime), N'Gia Lai-Việt Nam', N'9-Phong Điền-Huế-Việt Nam', 21, 1, N'Phạm Bảo Huy', N'Đỗ Thế Chi ', N'Ca sĩ', N'8337922095', N'https://qdr.net1/jmhwv/josjx/pnfqc/yagnh/enfep.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (202, N'Tạ ', N'Trần Hoàng Văn', 0, CAST(N'2004-01-14T04:43:15.380' AS DateTime), N'Bình Định-Việt Nam', N'185-Phong Điền-Huế-Việt Nam', 50, 1, N'Võ Nguyên Duy', N'PhạmNguyễn Đặng Tranh ', N'Thợ mộc', N'552-0555910', N'http://gknc.netz9/gaxbp/sqkfb/vefri/ezifk.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (203, N'Hoài ', N'Hồ Văn', 0, CAST(N'2004-12-07T06:53:13.000' AS DateTime), N'Tp.HCM-Việt Nam', N'4-Hương Thủy-Huế-Việt Nam', 6, 5, N'Phạm Nguyên Thái', N'Lý Thị Hiệu ', N'Nhân viên văn phòng', N'772-221-6531', N'http://cgx.web73/hmpsw/shexr/emrft/uapbw/ilsj.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (204, N'BA ', N'Bùi Hồng', 1, CAST(N'2004-08-13T14:20:04.140' AS DateTime), N'Bến Tre-Việt Nam', N'31-Phú Lộc-Huế-Việt Nam', 26, 4, N'Phạm Thế Hiệu', N'Lê Thanh Lê ', N'Công nhân', N'3240862851', N'https://lce.net4/mcrhi/cljki/palfp/jkbjr/efvzb.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (205, N'Phi ', N'Trần Hữu Thế', 1, CAST(N'2003-01-09T02:59:17.580' AS DateTime), N'Quãng Nam-Việt Nam', N'954-Hương Trà-Huế-Việt Nam', 35, 7, N'Đặng Anh Thái', N'PhạmNguyễn Thị Hoài ', N'Công An', N'771-484-3378', N'https://jfnmj.nete2/qmvbt/gocsn.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (206, N'Thường ', N'Dương Bảo', 1, CAST(N'2003-07-24T14:23:03.100' AS DateTime), N'Bình Dương-Việt Nam', N'73-Phú Lộc-Huế-Việt Nam', 23, 6, N'Nguyễn Nguyên Lê', N'Vũ Thế Vàng ', N'Nhân viên văn phòng', N'523-2449156', N'http://ccjc.net/kmywz/faujm/rktgx/cerrk/xmfvh.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (207, N'Lực ', N'Phạm Thế', 1, CAST(N'2004-03-27T18:31:18.090' AS DateTime), N'Đà Nẵng-Việt Nam', N'84-Hương Thủy-Huế-Việt Nam', 28, 2, N'Dương Nguyên Ngọc', N'Bùi Bảo Trúc ', N'Ca sĩ', N'469832-4709', N'http://pplo.localg/ttyyk/pvm.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (208, N'Thúy ', N'Ngô Anh', 0, CAST(N'2004-05-22T19:41:52.870' AS DateTime), N'Đắk Nông-Việt Nam', N'2-Hương Trà-Huế-Việt Nam', 21, 5, N'Vũ Thế Hiệu', N'Vũ Thế Yến ', N'Dược sĩ', N'608-042-3365', N'https://ftc.local4/xyyyc/emoif/ayrdz/mfmjm.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (209, N'Tần ', N'Hoàng Anh', 0, CAST(N'2004-01-22T16:11:31.780' AS DateTime), N'Quãng Nam-Việt Nam', N'7-Hương Thủy-Huế-Việt Nam', 52, 6, N'Lê Thế Huy', N'Bùi Đặng Trúc ', N'Bác sĩ', N'328641-1923', N'https://rmyk.localn/zzitl/yqkp.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (210, N'Hai ', N'Dương Bảo', 0, CAST(N'2005-11-05T10:01:46.160' AS DateTime), N'Bắc Kạn-Việt Nam', N'164-Hương Trà-Huế-Việt Nam', 17, 6, N'Ngô Nguyên Huy', N'Huỳnh Bảo Thương ', N'Cán bộ', N'445-922-0490', N'https://tzlz.webo0/groeo/sbdvd/ttudl/ldfwb/kikjr.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (211, N'BA ', N'Đặng Thế', 0, CAST(N'2005-08-16T21:18:00.890' AS DateTime), N'Bình Phước-Việt Nam', N'4-Phong Điền-Huế-Việt Nam', 8, 7, N'Phạm Nguyền Đặng Duy', N'Huỳnh Anh Trúc ', N'Giáo viên', N'567-2932888', N'http://uqm.local/wdrpp/rgjdc/qbmjq/tfjjk/mfe.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (212, N'Duy ', N'Phan Đức', 0, CAST(N'2004-10-20T19:50:51.220' AS DateTime), N'Đà Nẵng-Việt Nam', N'259-Phú Lộc-Huế-Việt Nam', 3, 4, N'Dương Thế Vũ', N'Vũ Mai Trúc ', N'Buôn bán', N'118-9831058', N'http://irtvg.webm4/zneth/dccla/gns.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (213, N'Hiền ', N'Võ Thị', 0, CAST(N'2003-08-16T12:44:25.970' AS DateTime), N'Bắc Giang-Việt Nam', N'320-Phú Lộc-Huế-Việt Nam', 30, 5, N'Đỗ Văn Hoài', N'Hoàng Thanh Trúc ', N'Nhân viên văn phòng', N'1415115097', N'http://vpzi.localw/eeuio/jwsty.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (214, N'Tạ ', N'Dương Văn', 0, CAST(N'2003-09-04T11:01:54.030' AS DateTime), N'Hà Nội-Việt Nam', N'704-Hương Trà-Huế-Việt Nam', 37, 4, N'Lê Bảo Chi', N'Hoàng Đặng Ngân ', N'Lễ tân', N'144-8657209', N'https://ywqwp.localj1/frrsw/xsxyr/ibd.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (215, N'Nguyên ', N'Nguyễn Hoàng Thanh', 0, CAST(N'2003-04-02T18:31:57.690' AS DateTime), N'Đắk Lắk-Việt Nam', N'464-Bình Điền-Huế-Việt Nam', 3, 5, N'Trần Hữu Đặng Thương', N'Đặng Đặng Huy ', N'Thợ Xây', N'235-7619919', N'http://mjpu.net/cbuup/mzsez/lnggz/ynopo/zsgmk.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (216, N'Khoa ', N'Đặng Thị', 1, CAST(N'2004-04-16T15:47:25.280' AS DateTime), N'Tp.HCM-Việt Nam', N'94-Nam Đông-Huế-Việt Nam', 29, 2, N'Dương Văn Duy', N'PhạmNguyễn Thanh Yến ', N'Nông dân', N'886-763-5932', N'https://vhv.locald08/qdmbv/ojtwm/mmnux/aolmc/dsodw.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (217, N'Quan ', N'Hồ Đức', 0, CAST(N'2005-04-25T05:37:27.550' AS DateTime), N'Bắc Ninh-Việt Nam', N'404-Hương Thủy-Huế-Việt Nam', 46, 4, N'Lý Văn Lê', N'Đỗ Mai Ngọc ', N'Dược sĩ', N'212-157-5255', N'https://mexd.net0/zaiqi/pidow.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (218, N'Bảo ', N'Phạm Anh', 1, CAST(N'2004-09-26T07:40:31.350' AS DateTime), N'Bạc Liêu-Việt Nam', N'605-Phú Lộc-Huế-Việt Nam', 6, 7, N'Võ Đức Đức', N'PhạmNguyễn Hồng Yến ', N'Bác sĩ', N'946-869-5037', N'https://alxdu.net9/ipkhh/xsnmb.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (219, N'Quan ', N'Nguyễn Hoàng Đức', 0, CAST(N'2003-11-01T06:31:10.400' AS DateTime), N'Tp.HCM-Việt Nam', N'318--Huế-Việt Nam', 46, 5, N'Huỳnh Anh Chi', N'Đặng Thanh Ân ', N'Ca sĩ', N'8387793122', N'https://knna.net/dcthh/jjbnl/pfbwo/umrys/tkxa.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (220, N'Huy ', N'Ngô Hữu', 1, CAST(N'2004-03-03T07:39:35.050' AS DateTime), N'Đà Nẵng-Việt Nam', N'286-A Lưới-Huế-Việt Nam', 29, 2, N'Trần Đặng Lê', N'Đỗ Đặng  ', N'Nông dân', N'407-1206215', N'https://fewgf.net2/afcju/mevwe/bejjn/ojumm/wtywi.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (221, N'Duy ', N'Vũ Văn', 1, CAST(N'2003-12-25T12:55:24.170' AS DateTime), N'Cao Bằng-Việt Nam', N'1-Bình Điền-Huế-Việt Nam', 27, 7, N'Phạm Nguyền Đức Thái', N'Vũ Thế Huy ', N'Cán bộ', N'119238-1507', N'http://hoyn.webp5/daluc/fftsu/nswnb/qwao.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (222, N'Huỳnh ', N'Đỗ Đức', 1, CAST(N'2003-05-11T11:25:30.030' AS DateTime), N'Bắc Giang-Việt Nam', N'6-Hương Thủy-Huế-Việt Nam', 42, 7, N'Hoàng Thế Ân', N'Phan Anh Chi ', N'Thợ Xây', N'737520-5223', N'http://gvbd.web/ifkyw/cpoun/kulwo/xnupi.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (223, N'Tam ', N'Dương Thị', 1, CAST(N'2005-04-02T03:53:41.850' AS DateTime), N'Đồng Nai-Việt Nam', N'3--Huế-Việt Nam', 5, 2, N'Hồ Nguyên Thương', N'Dương Anh Vàng ', N'Công An', N'563116-1253', N'http://zdb.net/krcdn/tkzw.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (224, N'Thư ', N'Nguyễn Hoàng Văn', 0, CAST(N'2003-07-30T03:00:55.400' AS DateTime), N'Hà Giang-Việt Nam', N'657-Phong Điền-Huế-Việt Nam', 31, 3, N'Đỗ Nguyên Ngọc', N'PhạmNguyễn Đặng Ngọc ', N'Thợ mộc', N'522-245-8179', N'http://bpg.local/twjqa/zocbo.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (225, N'Danh ', N'Đặng Thị', 1, CAST(N'2004-11-18T18:08:24.530' AS DateTime), N'Đắk Lắk-Việt Nam', N'51-A Lưới-Huế-Việt Nam', 50, 1, N'Đặng Đức Hoài', N'Bùi Anh Lê ', N'Ca sĩ', N'914510-5763', N'https://utlr.web5/bayou/xazxq/tmnou/xui.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (226, N'Đức ', N'Lý Văn', 1, CAST(N'2005-07-14T13:02:06.130' AS DateTime), N'Đắk Nông-Việt Nam', N'95-Phú Lộc-Huế-Việt Nam', 33, 4, N'Hoàng Nguyên Ân', N'Phan Thanh Ân ', N'Nhạc sĩ', N'2762970008', N'http://vmhd.neto32/cktje/jrtya/esy.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (227, N'Lê ', N'Đặng Đức', 1, CAST(N'2005-06-09T19:39:14.260' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'71-Hương Thủy-Huế-Việt Nam', 20, 2, N'Phạm Nguyền Bảo Thái', N'Phan Hồng Chi ', N'Thợ điện', N'0469884283', N'https://vfu.web47/jmloy/mjcoq/mpxwm/zxfam.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (228, N'Vũ ', N'Trần Mai', 0, CAST(N'2004-11-28T08:42:18.490' AS DateTime), N'Tp.HCM-Việt Nam', N'28-Bình Điền-Huế-Việt Nam', 5, 5, N'Ngô Nguyên Hiệu', N'Hoàng Anh Yến ', N'Nhân viên văn phòng', N'581-1400462', N'http://fusl.locale2/laqgp/dacse/vvdul/jzse.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (229, N'Bảo ', N'Nguyễn Hoàng Bảo', 0, CAST(N'2005-02-01T05:29:43.660' AS DateTime), N'Đồng Tháp-Việt Nam', N'206-Nam Đông-Huế-Việt Nam', 18, 4, N'Vũ Anh Duy', N'Huỳnh Mai Hoài ', N'Giáo viên', N'411109-3879', N'http://rrr.web/jahjr/pjrhq/kxptp/yyh.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (230, N'Đại ', N'Trần Hữu Thanh', 1, CAST(N'2005-12-10T08:35:21.790' AS DateTime), N'Tp.HCM-Việt Nam', N'746-Phong Điền-Huế-Việt Nam', 26, 5, N'Trần Hữu Thế Ngọc', N'Lê Thanh Hoài ', N'Hưu trí', N'0132975383', N'http://ioyt.net8/muvku/tqaxy.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (231, N'Phi ', N'Phan Bảo', 1, CAST(N'2004-12-08T16:13:26.590' AS DateTime), N'Bạc Liêu-Việt Nam', N'40--Huế-Việt Nam', 51, 5, N'Dương Đức Thương', N'Huỳnh Thanh Quỳnh ', N'Buôn bán', N'526308-5891', N'http://cyq.local3/wadrw/yuvdp/uxfz.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (232, N'Nhị ', N'Trần Thanh', 0, CAST(N'2005-12-12T23:50:03.760' AS DateTime), N'Điện Biên-Việt Nam', N'5-Hương Trà-Huế-Việt Nam', 30, 3, N'Đặng Thế Thái', N'Vũ Hồng Trúc ', N'Buôn bán', N'270-800-5325', N'http://ujnb.webq1/omxaz/qixtc/derih.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (233, N'Tạ ', N'Phan Đức', 1, CAST(N'2003-02-14T03:30:20.850' AS DateTime), N'Bắc Ninh-Việt Nam', N'14-Phong Điền-Huế-Việt Nam', 17, 6, N'Đặng Thế Hiệu', N'Hoàng Thị Huy ', N'Buôn bán', N'7261200206', N'http://ber.locali/fjvca/dnux.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (234, N'Đức ', N'Lý Mai', 1, CAST(N'2003-07-25T10:04:15.580' AS DateTime), N'Bình Định-Việt Nam', N'2-Bình Điền-Huế-Việt Nam', 13, 5, N'Phạm Văn Vũ', N'PhạmNguyễn Thanh Thương ', N'Dược sĩ', N'395-725-5115', N'http://hxrf.net8/rutju/pqluu/jhadp/vncr.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (235, N'Khôi ', N'Ngô Anh', 0, CAST(N'2003-12-26T15:19:51.240' AS DateTime), N'Bến Tre-Việt Nam', N'20-A Lưới-Huế-Việt Nam', 45, 7, N'Ngô Hữu Hoài', N'Bùi Anh Trúc ', N'Bác sĩ', N'9733210649', N'http://tdf.localg/dhgfj/ehin.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (236, N'Tam ', N'Trần Thanh', 1, CAST(N'2005-10-29T18:38:46.500' AS DateTime), N'Đà Nẵng-Việt Nam', N'50--Huế-Việt Nam', 26, 5, N'Hoàng Bảo Duy', N'Võ Đặng Tranh ', N'Giáo viên', N'694-579-4644', N'https://jfgi.web/ghmaa/rkncu/etwke/ivia.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (237, N'Ánh ', N'Hồ Thanh', 1, CAST(N'2003-01-03T04:37:42.120' AS DateTime), N'Huế-Việt Nam', N'9-Hương Trà-Huế-Việt Nam', 4, 1, N'Hồ Đặng Vàng', N'Lê Thị  ', N'Hưu trí', N'905293-1898', N'http://tasse.localn09/jupya/ucfmk/xnn.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (238, N'Đức ', N'Bùi Anh', 1, CAST(N'2005-07-26T12:47:02.410' AS DateTime), N'Đà Nẵng-Việt Nam', N'11-Nam Đông-Huế-Việt Nam', 33, 7, N'Phạm Nguyền Đặng Vũ', N'Võ Hồng Lê ', N'Dược sĩ', N'0855701798', N'https://qdvgk.local3/aswqv/ngjay.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (239, N'Ngọc ', N'Nguyễn Hoàng Đức', 1, CAST(N'2003-06-24T20:17:51.550' AS DateTime), N'Bắc Ninh-Việt Nam', N'87-Phong Điền-Huế-Việt Nam', 5, 3, NULL, N'Dương Đặng Huy ', N'Nông dân', N'6769167602', N'http://nhug.web/jpnck/hrjae/uohcl/iif.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (240, N'Hiếu ', N'Vũ Thế', 0, CAST(N'2005-06-15T14:47:13.270' AS DateTime), N'Bắc Ninh-Việt Nam', N'815-Phú Lộc-Huế-Việt Nam', 40, 3, N'Vũ Đặng Ngọc', N'Lý Bảo Ngân ', N'Ca sĩ', N'781-6151086', N'https://sws.locale95/bizdq/jonyj.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (241, N'Hiền ', N'Ngô Mai', 0, CAST(N'2003-10-18T04:06:55.690' AS DateTime), N'Bắc Kạn-Việt Nam', N'99-Bình Điền-Huế-Việt Nam', 37, 6, N'Lê Anh Vàng', N'Hoàng Thanh Quỳnh ', N'Giáo viên', N'504-323-9100', N'https://etoq.web/koxko/ueqxb.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (242, N'Hoàng ', N'Đỗ Hồng', 0, CAST(N'2005-07-20T19:22:37.930' AS DateTime), N'Bắc Giang-Việt Nam', N'91--Huế-Việt Nam', 17, 6, N'Trần Đức Lê', NULL, N'Ca sĩ', N'978-366-5281', N'https://wrfv.webu0/yksil/vcnpp.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (243, N'Văn ', N'Ngô Anh', 0, CAST(N'2003-06-12T03:03:25.820' AS DateTime), N'Quãng Ngãi-Việt Nam', N'2-Hương Trà-Huế-Việt Nam', 15, 3, N'Dương Thế Ân', N'Lê Bảo Thương ', N'Bác sĩ', N'920-7165471', N'https://ist.local/hryxt/wzbly/qucvf/fdgw.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (244, N'Hóa ', N'Bùi Thế', 0, CAST(N'2004-06-05T11:04:42.580' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'2-Bình Điền-Huế-Việt Nam', 5, 2, N'Phạm Văn Vàng', N'Dương Thanh Ân ', N'Đầu bếp', N'404417-8342', N'https://bukb.neth51/nnhfo/dureo/yngme/klajs/myl.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (245, N'Đăng ', N'Hồ Đức', 0, CAST(N'2005-03-30T10:35:48.240' AS DateTime), N'Bắc Kạn-Việt Nam', N'905-Hương Trà-Huế-Việt Nam', 36, 3, N'Nguyễn Đặng Thái', N'Dương Hồng Ngọc ', N'Nhạc sĩ', N'1316168198', N'https://brc.net98/ddwwg/cczux/spke.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (246, N'Đăng ', N'Trần Thế', 0, CAST(N'2005-03-22T17:22:21.790' AS DateTime), N'Hà Nội-Việt Nam', N'43-Bình Điền-Huế-Việt Nam', 36, 7, N'Phan Văn Thương', N'Hồ Thị Ngân ', N'Đầu bếp', N'895-4727484', N'https://qby.web85/enhkb/wnvms/jgwcp/nbn.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (247, N'Chín ', N'Đỗ Hữu', 1, CAST(N'2003-04-16T02:39:41.210' AS DateTime), N'Quãng Nam-Việt Nam', N'35-Phong Điền-Huế-Việt Nam', 28, 5, N'Hồ Thế Ngọc', N'Hoàng Mai Ân ', N'Cán bộ', N'363-2373473', N'http://cheae.locale2/qarhn/zbau.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (248, N'Thương ', N'Dương Bảo', 0, CAST(N'2005-09-04T13:40:41.170' AS DateTime), N'Bắc Ninh-Việt Nam', N'301-Phong Điền-Huế-Việt Nam', 32, 1, N'Phan Đăng Đặng Lê', N'Vũ Thế Tranh ', N'Thợ nước', N'329-983-4140', N'https://qmxbk.net13/wibco/dmplp.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (249, N'Nhạn ', N'Trần Hoàng Thị', 0, CAST(N'2003-10-23T05:11:03.770' AS DateTime), N'Bạc Liêu-Việt Nam', N'781-Hương Trà-Huế-Việt Nam', 37, 6, N'Trần Bảo Ân', N'Phan Thế Huy ', N'Nhạc sĩ', N'121-1785158', N'http://whjd.web7/ndfww/msxdr/xympp.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (250, N'Công ', N'Lê Thị', 1, CAST(N'2005-10-25T06:08:38.830' AS DateTime), N'Bắc Giang-Việt Nam', N'9-Nam Đông-Huế-Việt Nam', 9, 4, N'Trần Hữu Bảo Lê', N'Lê Thế Ngọc ', N'Thợ nước', N'008-555-4387', N'https://xovxm.net02/uupkz/qkzwk/vojlq.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (251, N'Nhất ', N'Phạm Đức', 0, CAST(N'2004-01-04T22:59:54.930' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'69-A Lưới-Huế-Việt Nam', 15, 5, N'Hoàng Đức Vũ', N'Hoàng Hồng Ngọc ', N'Công An', N'197026-5325', N'https://akjyi.webf4/nondj/qiphf/dtbyh.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (252, N'Tám ', N'Nguyễn Hữu', 1, CAST(N'2005-08-14T05:19:24.310' AS DateTime), N'Gia Lai-Việt Nam', N'70-Bình Điền-Huế-Việt Nam', 5, 1, N'Phạm Anh Vàng', N'Đặng Anh Ngân ', N'Nông dân', N'825-423-6675', N'http://fick.net68/mgsoh/fbobr/tfjup/lyech.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (253, N'Bảy ', N'Trần Hữu Hồng', 0, CAST(N'2003-08-29T15:21:36.240' AS DateTime), N'Hà Nội-Việt Nam', N'7-A Lưới-Huế-Việt Nam', 43, 5, N'Hoàng Hữu Chi', N'Huỳnh Thị  ', N'Giáo viên', N'881-6307355', N'http://dttz.locale7/euxbg/hor.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (254, N'Vũ ', N'Bùi Thế', 1, CAST(N'2005-07-28T15:22:18.580' AS DateTime), N'Đà Nẵng-Việt Nam', N'52-Bình Điền-Huế-Việt Nam', 30, 6, N'Phan Đăng Thế Hoài', N'Đỗ Anh Trúc ', N'Bác sĩ', N'120178-8536', N'http://vnjll.localy48/iocgm/mojl.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (255, N'Nguyên ', N'Trần Hoàng Đức', 1, CAST(N'2005-05-24T06:06:31.340' AS DateTime), N'Cao Bằng-Việt Nam', N'676-Hương Trà-Huế-Việt Nam', 26, 3, N'Hoàng Thế Thương', N'Ngô Hồng Thương ', N'Cán bộ', N'3507224286', N'https://ygz.local97/pzsoi/ety.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (256, N'Lệ ', N'Lê Mai', 1, CAST(N'2003-04-15T01:17:29.630' AS DateTime), N'Bình Phước-Việt Nam', N'3--Huế-Việt Nam', 34, 1, N'Phan Anh Đức', N'Lý Bảo Tranh ', N'Thợ Xây', N'068-4670977', N'https://hfi.web/cwxov/yjxtz/lbmgu/esf.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (257, N'Danh ', N'Đặng Hữu', 1, CAST(N'2004-10-13T00:49:33.530' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'23-Hương Trà-Huế-Việt Nam', 46, 7, N'Đỗ Nguyên Ngọc', N'Hồ Bảo Hoài ', N'Giáo viên', N'003-2379001', N'https://iazt.netc24/betex/wfavm/tbjen/gki.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (258, N'Phi ', N'Lý Đặng', 1, CAST(N'2004-05-11T03:52:17.590' AS DateTime), N'Tp.HCM-Việt Nam', N'58-A Lưới-Huế-Việt Nam', 30, 2, N'Lý Anh Ngọc', N'Vũ Thanh Hoài ', N'Nông dân', N'9922707723', N'http://eeu.net/qtfpb/vkvio/otan.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (259, N'Huy ', N'Lý Đức', 0, CAST(N'2005-09-24T20:11:39.610' AS DateTime), N'Đắk Nông-Việt Nam', N'29-A Lưới-Huế-Việt Nam', 31, 4, N'Trần Nguyên Chi', N'Bùi Đặng Lê ', N'Cán bộ', N'744-4856899', N'https://mea.net/sbioi/mpzwu.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (260, N'Lê ', N'Lý Văn', 1, CAST(N'2003-06-27T13:57:11.450' AS DateTime), N'Bắc Ninh-Việt Nam', N'14-Nam Đông-Huế-Việt Nam', 3, 3, N'Ngô Văn Ân', N'Lý Đặng Huy ', N'Nhạc sĩ', N'365-179-3932', N'https://wpz.local41/syawq/mrdzd/mtffc/bqfvg.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (261, N'Mười ', N'Hoàng Đặng', 1, CAST(N'2004-02-13T18:43:48.840' AS DateTime), N'Gia Lai-Việt Nam', N'29-Nam Đông-Huế-Việt Nam', 3, 5, N'Đỗ Đặng Thương', N'PhạmNguyễn Thị Hiệu ', N'Ca sĩ', N'404-457-0365', N'http://kyfr.net/jhpyp/cynv.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (262, N'Thế ', N'Võ Thị', 1, CAST(N'2005-04-29T09:48:59.610' AS DateTime), N'Hà Giang-Việt Nam', N'364-Nam Đông-Huế-Việt Nam', 23, 5, N'Phạm Nguyền Văn Thương', N'Huỳnh Thanh Vàng ', N'Ca sĩ', N'380-0280407', N'http://onegc.netx/fzolm/oorxw/mfmgc/tsu.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (263, N'Huỳnh ', N'Nguyễn Hoàng Thị', 1, CAST(N'2005-04-20T14:12:09.220' AS DateTime), N'Đồng Nai-Việt Nam', N'197-Hương Thủy-Huế-Việt Nam', 4, 2, N'Phạm Nguyền Hữu Hoài', N'Dương Anh Tranh ', N'Bác sĩ', N'443-545-8825', N'http://snim.webz7/pwrmd/ykiso/apjgb/utxue/zbc.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (264, N'Huy ', N'Vũ Bảo', 1, CAST(N'2004-02-12T07:36:10.000' AS DateTime), N'Hà Nội-Việt Nam', N'575-A Lưới-Huế-Việt Nam', 27, 2, N'Phạm Nguyền Anh Huy', N'Lý Mai Thư ', N'Ca sĩ', N'8045912258', N'http://fdk.net4/mwwwq/uhwue/rahuu/ync.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (265, N'Ngọc ', N'Lý Thị', 1, CAST(N'2003-11-28T17:48:19.560' AS DateTime), N'Hà Giang-Việt Nam', N'296-Phú Lộc-Huế-Việt Nam', 21, 1, N'Huỳnh Hữu Đức', N'Dương Thanh Ngọc ', N'Hưu trí', N'9495948268', N'https://jmkhn.localv/xaynp/tgpca/ddscr/vnij.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (266, N'Hoài ', N'Lê Hồng', 1, CAST(N'2005-09-03T21:27:57.130' AS DateTime), N'Đắk Nông-Việt Nam', N'8-Phú Lộc-Huế-Việt Nam', 32, 4, N'Nguyễn Hữu Huy', N'PhạmNguyễn Anh Ngân ', N'Giáo viên', N'293-9024280', N'http://tnteu.webi/wdijj/xcjzh/vqijv/zoi.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (267, N'Phụng ', N'Đặng Nguyên', 0, CAST(N'2004-09-06T16:20:30.360' AS DateTime), N'Bình Phước-Việt Nam', N'9-Hương Trà-Huế-Việt Nam', 41, 6, N'Phan Đức Duy', N'Ngô Bảo Huy ', N'Buôn bán', N'386382-8677', N'http://qzc.local/sxfnd/ellqd/ljxol/kmswl/tmtj.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (268, N'Công ', N'Hồ Thế', 0, CAST(N'2003-01-23T02:40:10.380' AS DateTime), N'Đắk Nông-Việt Nam', N'261-Hương Trà-Huế-Việt Nam', 18, 1, N'Hoàng Bảo Ngọc', N'Ngô Thanh Hiệu ', N'Công nhân', N'233391-9239', N'http://ptvk.localu36/riekg/njujt/wlv.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (269, N'Thiện ', N'Lê Bảo', 0, CAST(N'2005-09-08T19:42:02.800' AS DateTime), N'Bình Định-Việt Nam', N'12-Nam Đông-Huế-Việt Nam', 47, 4, N'Hoàng Anh Hoài', N'PhạmNguyễn Hồng Lê ', N'Bác sĩ', N'304-057-4725', N'https://uqj.web6/drubu/ttboc.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (270, N'Quan ', N'Hoàng Bảo', 1, CAST(N'2003-06-03T23:53:11.200' AS DateTime), N'Bình Phước-Việt Nam', N'8--Huế-Việt Nam', 31, 1, N'Đỗ Anh Chi', N'PhạmNguyễn Thế Hiệu ', N'Công An', N'324-191-3643', N'http://sofac.neto56/tkutu/bkrai.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (271, N'Hoàng ', N'Lý Mai', 1, CAST(N'2004-04-14T11:09:43.150' AS DateTime), N'Đà Nẵng-Việt Nam', N'92-A Lưới-Huế-Việt Nam', 26, 2, N'Trần Hữu Bảo Ân', N'Trần Thị Chi ', N'Giáo viên', N'142-7256683', N'https://rtfpg.netq/nknor/kxhaj/viegw/oxcol.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (272, N'Hai ', N'Huỳnh Thế', 0, CAST(N'2005-09-29T16:50:25.140' AS DateTime), N'Bắc Giang-Việt Nam', N'1-Bình Điền-Huế-Việt Nam', 13, 5, N'Phạm Nguyền Nguyên Vũ', N'Đỗ Anh Chi ', N'Buôn bán', N'566670-3930', N'https://ykk.netr3/ovaux/gbinj/bfmqe/iyyt.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (273, N'Đăng ', N'Phan Anh', 1, CAST(N'2004-04-04T11:22:39.800' AS DateTime), N'Gia Lai-Việt Nam', N'756-Hương Thủy-Huế-Việt Nam', 1, 4, N'Huỳnh Nguyên Huy', N'Đặng Đặng Ngân ', N'Hưu trí', N'313-9421750', N'https://amsyr.localb70/abhjm/lrifc.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (274, N'Trúc ', N'Phan Bảo', 0, CAST(N'2004-05-17T15:43:57.130' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'371-Phú Lộc-Huế-Việt Nam', 6, 3, N'Võ Hữu Ân', N'Vũ Thị Hoài ', N'Buôn bán', N'508-698-3401', N'https://ahyvb.webx5/txfum/qjjhq/gmkpr/pmdrm/ixz.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (275, N'Nhất ', N'Nguyễn Hoàng Thế', 1, CAST(N'2003-05-18T03:32:39.360' AS DateTime), N'Cao Bằng-Việt Nam', N'37-Phú Lộc-Huế-Việt Nam', 47, 4, N'Hồ Anh Chi', N'Trần Đặng Quỳnh ', N'Giáo viên', N'884527-1476', N'http://ntgvo.netn/dssqk/puxfg/qmb.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (276, N'Tạ ', N'Hồ Anh', 1, CAST(N'2004-06-05T17:32:46.240' AS DateTime), N'Bắc Kạn-Việt Nam', N'1-Phong Điền-Huế-Việt Nam', 10, 1, N'Huỳnh Thế Đức', N'Lê Hồng  ', N'Thợ nước', N'820-219-4312', N'http://pkvc.web/xvceo/qaytd/jkakx/upimd.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (277, N'Lục ', N'Lê Văn', 1, CAST(N'2005-11-29T08:22:04.210' AS DateTime), N'Tp.HCM-Việt Nam', N'47-Hương Trà-Huế-Việt Nam', 27, 5, N'Đỗ Đặng Vàng', N'Lý Hồng Lê ', N'Giáo viên', N'441239-2387', N'http://habmy.localc/arazm/riofa.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (278, N'Kiều ', N'Lý Bảo', 0, CAST(N'2003-10-28T16:48:59.270' AS DateTime), N'Quãng Ngãi-Việt Nam', N'89-A Lưới-Huế-Việt Nam', 54, 7, N'Hồ Hữu Chi', N'Vũ Hồng Vàng ', N'Dược sĩ', N'222-1376907', N'https://ncsd.net14/ymukw/sbpxo/pvj.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (279, N'Quỳnh ', N'Dương Anh', 0, CAST(N'2004-04-30T16:25:07.170' AS DateTime), N'Bình Dương-Việt Nam', N'20-Hương Thủy-Huế-Việt Nam', 49, 1, N'Trần Hữu Bảo Vũ', N'Trần Thanh Hiệu ', N'Công An', N'205-739-5287', N'https://xhej.webq9/txgjj/qwysy/tclyi/hcgiq.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (280, N'Tướng ', N'Lý Thế', 0, CAST(N'2005-08-29T00:46:02.740' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'598-A Lưới-Huế-Việt Nam', 15, 1, N'Lý Văn Huy', N'Trần Thanh Vàng ', N'Bác sĩ', N'931-100-1628', N'http://pjjt.netm/ikghs/uuzz.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (281, N'Nhị ', N'Nguyễn Thị', 1, CAST(N'2005-03-31T10:22:24.920' AS DateTime), N'Bình Định-Việt Nam', N'16-Nam Đông-Huế-Việt Nam', 5, 7, N'Trần Hoàng Đặng Lê', N'Lý Bảo Vàng ', N'Giáo viên', N'3322769273', N'http://nhh.netz2/xyhne/qvygm/yvaj.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (282, N'Bảo ', N'Trần Hoàng Thị', 1, CAST(N'2005-10-05T05:58:33.100' AS DateTime), N'Quãng Nam-Việt Nam', N'3-Hương Thủy-Huế-Việt Nam', 43, 1, N'Vũ Hữu Lê', N'Đặng Mai Ngân ', N'Lễ tân', N'859379-1013', N'https://okb.web/rhvms/kjjkb/ojema/xjlqu.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (283, N'Khoa ', N'Phan Thế', 0, CAST(N'2004-02-07T03:31:14.720' AS DateTime), N'Cao Bằng-Việt Nam', N'353-Hương Thủy-Huế-Việt Nam', 22, 6, N'Đỗ Đức Thương', N'Dương Hồng Vàng ', N'Thợ nước', N'001-202-1653', N'https://eqwq.net/ndutz/mryq.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (284, N'Long ', N'Trần Hoàng Mai', 1, CAST(N'2005-04-08T23:21:04.830' AS DateTime), N'Bình Định-Việt Nam', N'385-Bình Điền-Huế-Việt Nam', 9, 7, N'Ngô Bảo Thương', N'Hoàng Đặng Ngọc ', N'Công nhân', N'836-6755303', N'http://gohly.web44/mtmtu/xokqj/mxvyz.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (285, N'Mai ', N'Đặng Nguyên', 1, CAST(N'2004-12-06T09:35:26.850' AS DateTime), N'Bến Tre-Việt Nam', N'50-Phú Lộc-Huế-Việt Nam', 11, 1, N'Trần Bảo Thương', N'Trần Mai Ngọc ', N'Dược sĩ', N'2638178249', N'https://byk.webe/xaqek/uaxeg/tupfb.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (286, N'Mười ', N'Bùi Anh', 0, CAST(N'2005-04-26T10:54:02.280' AS DateTime), N'Bắc Ninh-Việt Nam', N'85-A Lưới-Huế-Việt Nam', 46, 4, N'Vũ Bảo Duy', N'Đặng Mai Yến ', N'Dược sĩ', N'726830-3529', N'http://wbrur.web1/phjnp/cbkby/rlyid/cgf.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (287, N'Tấn ', N'Bùi Anh', 1, CAST(N'2005-04-16T08:28:27.520' AS DateTime), N'Đắk Nông-Việt Nam', N'2-Bình Điền-Huế-Việt Nam', 42, 6, N'Trần Hoàng Anh Thương', N'Lý Thị Thư ', N'Thợ điện', N'909-5297570', N'http://vjvn.webk/rskha/zxqfx/zisyj/cekw.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (288, N'Hai ', N'Phạm Mai', 1, CAST(N'2003-07-19T12:08:02.270' AS DateTime), N'Bắc Kạn-Việt Nam', N'5-Phú Lộc-Huế-Việt Nam', 42, 7, N'Phạm Thế Vàng', N'Hồ Bảo Quỳnh ', N'Điều dưỡng', N'325-3748680', N'http://fxo.localq51/xwtpg/delvj.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (289, N'Hữu ', N'Võ Thị', 1, CAST(N'2004-03-02T03:57:44.240' AS DateTime), N'Đồng Nai-Việt Nam', N'4--Huế-Việt Nam', 41, 2, N'Huỳnh Anh Ân', N'Vũ Hồng Trúc ', N'Điều dưỡng', N'398-731-4288', N'https://qvsid.local5/kzfou/wonb.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (290, N'Huy ', N'Bùi Thế', 1, CAST(N'2003-09-13T14:02:21.610' AS DateTime), N'Đồng Tháp-Việt Nam', N'6-Bình Điền-Huế-Việt Nam', 11, 6, N'Ngô Hữu Vũ', N'Vũ Bảo Quỳnh ', N'Thợ nước', N'269-0912619', N'https://xdss.net/tuukg/zjngy/wixpq/nyhd.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (291, N'Thanh ', N'Hồ Bảo', 0, CAST(N'2004-01-17T17:49:12.960' AS DateTime), N'Bạc Liêu-Việt Nam', N'574-Bình Điền-Huế-Việt Nam', 34, 5, N'Trần Văn Hiệu', N'Huỳnh Anh Thương ', N'Buôn bán', N'9488750018', N'http://kaccv.local62/kexpd/gwnbv/dylim/pruf.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (292, N'Lệ ', N'Trần Hoàng Nguyên', 0, CAST(N'2004-08-24T00:45:24.530' AS DateTime), N'Đồng Nai-Việt Nam', N'6-Nam Đông-Huế-Việt Nam', 29, 6, N'Trần Nguyên Thương', N'PhạmNguyễn Thị Lê ', N'Thợ nước', N'096-2644726', N'https://hsn.local04/gqiep/dsi.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (293, N'Khôi ', N'Nguyễn Nguyên', 1, CAST(N'2005-10-31T16:35:22.800' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'6-Phong Điền-Huế-Việt Nam', 3, 3, N'Phạm Nguyên Đức', N'Lý Mai  ', N'Điều dưỡng', N'112942-4091', N'http://whr.localq/hxsvv/xrw.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (294, N'Pháp ', N'Trần Hữu Anh', 1, CAST(N'2005-12-28T06:20:40.110' AS DateTime), N'Huế-Việt Nam', N'3-Hương Thủy-Huế-Việt Nam', 2, 1, N'Hồ Hữu Hoài', N'Trần Bảo  ', N'Cán bộ', N'9823002083', N'http://sfrdi.local5/piwfh/clrvb/spi.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (295, N'Thương ', N'Trần Hữu', 0, CAST(N'2004-05-02T20:03:24.430' AS DateTime), N'Bình Định-Việt Nam', N'57-Phong Điền-Huế-Việt Nam', 38, 6, N'Bùi Thế Ân', N'Dương Mai Ngọc ', N'Nhân viên văn phòng', N'049-8855611', N'http://amlxr.webz7/jrtcd/znqou/rmrgz.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (296, N'Triệu ', N'Lê Nguyên', 1, CAST(N'2004-06-19T18:17:56.090' AS DateTime), N'Bạc Liêu-Việt Nam', N'2-Phong Điền-Huế-Việt Nam', 14, 2, N'Hoàng Đặng Hiệu', N'Lê Thế Hiệu ', N'Lễ tân', N'263557-1141', N'http://tkmcj.local/ohusm/fqmuv/pmrdf/lvabu/fyer.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (297, N'Báo ', N'Đỗ Hữu', 1, CAST(N'2003-04-02T05:10:28.710' AS DateTime), N'Bắc Ninh-Việt Nam', N'701-Phú Lộc-Huế-Việt Nam', 14, 5, N'Trần Hữu Hữu Đức', N'Võ Mai Trúc ', N'Thợ nước', N'9580081265', N'http://fji.webn/ajbfj/uakgm/hihnm/nnfow/xpfgm.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (298, N'Tấn ', N'Trần Đức', 0, CAST(N'2005-04-29T19:27:15.830' AS DateTime), N'Đà Nẵng-Việt Nam', N'6--Huế-Việt Nam', 43, 1, N'Trần Hữu Đặng Hiệu', N'Dương Hồng Huy ', N'Hưu trí', N'688-679-4786', N'https://edurz.netb12/mybbn/fmnbm/ziuy.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (299, N'Năm ', N'Đặng Đặng', 1, CAST(N'2003-07-09T17:16:23.020' AS DateTime), N'Cao Bằng-Việt Nam', N'560-Hương Thủy-Huế-Việt Nam', 39, 2, N'Nguyễn Nguyên Huy', N'Đặng Hồng  ', N'Thợ điện', N'643075-1837', N'https://qggdn.net/jchjd/refzf/urcie/fhdpo.bmp', 0)
GO
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (300, N'Sáu ', N'Bùi Thanh', 0, CAST(N'2005-07-26T13:07:51.120' AS DateTime), N'Bình Dương-Việt Nam', N'77-Nam Đông-Huế-Việt Nam', 4, 6, N'Phạm Văn Lê', N'Dương Bảo Lê ', N'Nhân viên văn phòng', N'381-2322561', N'https://fun.net90/fcwxc/ipzgm/bfkns/itnfn/fxqu.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (301, N'Đệ ', N'Lê Đặng', 1, CAST(N'2003-07-17T01:01:51.420' AS DateTime), N'Bạc Liêu-Việt Nam', N'579-Bình Điền-Huế-Việt Nam', 49, 1, N'Đỗ Thế Hoài', N'Lý Đặng Yến ', N'Đầu bếp', N'2116819265', N'http://todc.webi32/pfrsi/mizsk.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (302, N'Pháp ', N'Vũ Bảo', 1, CAST(N'2003-03-24T23:59:30.820' AS DateTime), N'Bắc Ninh-Việt Nam', N'2--Huế-Việt Nam', 11, 4, N'Hoàng Đặng Thương', N'Hồ Anh Hiệu ', N'Thợ Xây', N'832-5563251', N'http://lrfe.net/aycij/uzlo.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (303, N'Lê ', N'Nguyễn Hồng', 0, CAST(N'2005-12-26T17:58:38.380' AS DateTime), N'Đồng Tháp-Việt Nam', N'81--Huế-Việt Nam', 40, 5, N'Hồ Văn Ngọc', N'Lê Đặng Lê ', N'Nông dân', N'404064-4763', N'https://oehum.localb61/qzetj/unqug/dxesy/wrf.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (304, N'Đức ', N'Lý Đặng', 0, CAST(N'2003-05-22T05:17:52.560' AS DateTime), N'Đắk Nông-Việt Nam', N'1-Hương Trà-Huế-Việt Nam', 6, 6, N'Trần Đặng Ngọc', N'Lý Thanh  ', N'Thợ điện', N'966925-7430', N'http://tda.web/wruuu/exdsx/bcjxi/eufum/xhzf.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (305, N'Khoa ', N'Huỳnh Hồng', 1, CAST(N'2004-07-12T18:58:55.670' AS DateTime), N'Quãng Nam-Việt Nam', N'189-Phú Lộc-Huế-Việt Nam', 38, 3, N'Trần Hữu Bảo Duy', N'Dương Mai Lê ', N'Dược sĩ', N'339888-1806', N'http://tog.locald9/zonfs/ruczi/mtbeh/msz.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (306, N'Tranh ', N'Đặng Đặng', 1, CAST(N'2004-04-06T06:09:29.800' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'30--Huế-Việt Nam', 3, 7, N'Trần Đặng Đức', N'Võ Đặng Tranh ', N'Điều dưỡng', N'8936671528', N'https://evu.web/ybgfy/fmikc.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (307, N'Khôi ', N'Huỳnh Nguyên', 1, CAST(N'2004-05-11T17:56:44.510' AS DateTime), N'Hà Giang-Việt Nam', N'664-Bình Điền-Huế-Việt Nam', 4, 5, N'Phan Đặng Hiệu', N'Phan Mai Thương ', N'Giáo viên', N'534079-0837', N'https://cnthv.neto/rbxbj/ibyuk/vgara/opci.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (308, N'Khôi ', N'Nguyễn Hoàng Nguyên', 0, CAST(N'2005-04-12T23:37:39.110' AS DateTime), N'Bắc Kạn-Việt Nam', N'41-Phú Lộc-Huế-Việt Nam', 37, 3, N'Phan Đặng Đức', N'Bùi Thế Quỳnh ', N'Nhạc sĩ', N'028814-7638', N'https://npzly.nety21/zmulp/raxau/kffrv/zetv.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (309, N'Yến ', N'Võ Hồng', 0, CAST(N'2005-03-13T11:49:39.220' AS DateTime), N'Bắc Kạn-Việt Nam', N'29--Huế-Việt Nam', 37, 3, NULL, N'Huỳnh Thị Hoài ', N'Ca sĩ', N'2608410938', N'http://zkco.net/jbvrt/ahqpe/odcgl/gdr.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (310, N'Danh ', N'Hồ Thanh', 0, CAST(N'2003-12-19T12:33:45.090' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'19-Bình Điền-Huế-Việt Nam', 17, 3, N'Phạm Thế Thương', N'Dương Thế Trúc ', N'Ca sĩ', N'830-9673924', N'http://vpwp.netc/vdwep/dmfse/lgzhc/pfx.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (311, N'Nguyên ', N'Huỳnh Đặng', 1, CAST(N'2003-05-16T16:55:25.420' AS DateTime), N'Bắc Ninh-Việt Nam', N'3-Bình Điền-Huế-Việt Nam', 7, 4, N'Võ Đặng Đức', N'Ngô Thị Hoài ', N'Bác sĩ', N'441476-6139', N'https://vezl.localm17/khjca/ymgve/pdgcj/yphli.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (312, N'Tranh ', N'Bùi Hồng', 0, CAST(N'2003-12-17T08:00:34.260' AS DateTime), N'Bến Tre-Việt Nam', N'743-Bình Điền-Huế-Việt Nam', 46, 1, N'Đỗ Văn Huy', N'Bùi Anh Quỳnh ', N'Điều dưỡng', N'886-4506839', N'http://rzf.local/xvqme/hkd.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (313, N'Phụng ', N'Đỗ Đức', 0, CAST(N'2003-01-11T11:27:10.420' AS DateTime), N'Bình Định-Việt Nam', N'184-Phong Điền-Huế-Việt Nam', 35, 2, N'Lê Văn Hoài', N'PhạmNguyễn Thị Vàng ', N'Thợ nước', N'916-5840697', N'https://wrzk.local/yyyyi/zgiyk/oglm.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (314, N'Tấn ', N'Lý Anh', 1, CAST(N'2003-01-27T19:25:36.860' AS DateTime), N'Đà Nẵng-Việt Nam', N'328-Hương Trà-Huế-Việt Nam', 16, 3, N'Trần Bảo Ân', N'Vũ Thế Hoài ', N'Thợ Xây', N'8384298416', N'http://ixihl.local/byzgj/xro.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (315, N'Nhạn ', N'Nguyễn Thanh', 1, CAST(N'2004-03-28T03:34:46.530' AS DateTime), N'Gia Lai-Việt Nam', N'23-Phú Lộc-Huế-Việt Nam', 53, 4, N'Dương Đức Ngọc', N'Huỳnh Hồng Hoài ', N'Nhân viên văn phòng', N'5374410469', N'http://ducpt.webo/nkuqq/dnozk/zlkfh/vhfbz/nfv.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (316, N'Năm ', N'Trần Hữu Hữu', 0, CAST(N'2004-05-10T12:45:15.750' AS DateTime), N'Đắk Lắk-Việt Nam', N'5--Huế-Việt Nam', 15, 4, N'Trần Hoàng Văn Chi', N'Vũ Thế Huy ', N'Nông dân', N'763307-6292', N'http://lybd.net3/ljqit/cdidd/csqmk/clrca.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (317, N'Trúc ', N'Phan Thị', 1, CAST(N'2004-03-23T06:17:44.890' AS DateTime), N'Hải Phòng-Việt Nam', N'2-Hương Trà-Huế-Việt Nam', 1, 7, N'Nguyễn Văn Vũ', N'Võ Bảo Ngọc ', N'Công An', N'177699-4200', N'https://fwao.net68/razds/jkk.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (318, N'Nguyên ', N'Dương Đặng', 1, CAST(N'2003-01-12T14:51:04.380' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'593--Huế-Việt Nam', 49, 2, N'Hồ Anh Duy', N'Lê Bảo Yến ', N'Cán bộ', N'060-214-4661', N'http://ylmf.localj6/ifdum/skvuc.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (319, N'Ân ', N'Bùi Mai', 1, CAST(N'2005-03-07T22:00:43.160' AS DateTime), N'Bình Dương-Việt Nam', N'4-Nam Đông-Huế-Việt Nam', 16, 1, N'Ngô Nguyên Vũ', N'Đặng Anh Tranh ', N'Thợ mộc', N'258-368-8619', N'http://hzjqp.web/cetlf/nuxtq/oxxfr/nswt.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (320, N'Thúy ', N'Nguyễn Hữu', 1, CAST(N'2004-08-03T06:54:17.290' AS DateTime), N'Bình Định-Việt Nam', N'855-Hương Thủy-Huế-Việt Nam', 29, 4, N'Trần Hoàng Hữu Ân', N'Trần Đặng Hoài ', N'Công An', N'097-918-0238', N'http://mzsa.net8/hlhfi/hvhnk/lsjlf/qeisr/snv.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (321, N'Tứ ', N'Trần Hữu Hồng', 0, CAST(N'2003-05-21T12:59:29.600' AS DateTime), N'Huế-Việt Nam', N'206-Phú Lộc-Huế-Việt Nam', 45, 6, N'Phạm Thế Hiệu', N'Đặng Thanh Trúc ', N'Công nhân', N'028-9363891', N'http://dbmfp.localf45/odboz/dlef.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (322, N'Tạ ', N'Đặng Đặng', 1, CAST(N'2004-02-20T04:12:28.080' AS DateTime), N'Hải Phòng-Việt Nam', N'6-Hương Trà-Huế-Việt Nam', 54, 6, N'Trần Đặng Hoài', N'Dương Hồng Ngọc ', N'Bác sĩ', N'594584-0683', N'http://tjmu.net2/ygdpb/deqlo/urzwd/qzvov.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (323, N'Mười ', N'Ngô Bảo', 0, CAST(N'2004-11-21T22:42:26.150' AS DateTime), N'Gia Lai-Việt Nam', N'773-Hương Trà-Huế-Việt Nam', 32, 7, N'Bùi Bảo Ngọc', N'Huỳnh Hồng Ngọc ', N'Thợ nước', N'039589-7306', N'http://tkbbk.localu28/mabhy/qovuo/joknj/cnzgt/oaqyz.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (324, N'Tám ', N'Võ Đức', 1, CAST(N'2004-12-27T05:39:41.190' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'84-Hương Trà-Huế-Việt Nam', 36, 5, N'Vũ Thế Thương', N'Vũ Mai Quỳnh ', N'Thợ Xây', N'116077-1842', N'https://caeyt.web44/mraju/twtnd.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (325, N'Năm ', N'Lý Văn', 0, CAST(N'2005-05-17T06:03:58.250' AS DateTime), N'Quãng Ngãi-Việt Nam', N'8-Phú Lộc-Huế-Việt Nam', 52, 3, N'Dương Văn Vũ', N'Đỗ Anh Yến ', N'Công An', N'242-083-7017', N'http://syj.local15/kltco/cmidq/agesu/gox.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (326, N'Trúc ', N'Dương Hữu', 1, CAST(N'2005-08-21T10:24:18.630' AS DateTime), N'Quãng Nam-Việt Nam', N'9--Huế-Việt Nam', 52, 3, N'Huỳnh Đặng Ân', N'Hoàng Thanh Tranh ', N'Công nhân', N'188-8922588', N'https://oyq.local4/rzinr/rlqxd.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (327, N'Tấn ', N'Trần Hoàng Thế', 1, CAST(N'2005-11-29T00:15:02.340' AS DateTime), N'Huế-Việt Nam', N'34-Phú Lộc-Huế-Việt Nam', 10, 2, N'Trần Hữu Anh Ngọc', N'Hồ Thế Hoài ', N'Bác sĩ', N'646208-3837', N'https://cnw.neti/uynql/osqtl/hwedn/cgan.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (328, N'Hiền ', N'Đỗ Anh', 1, CAST(N'2004-04-07T05:01:59.690' AS DateTime), N'Gia Lai-Việt Nam', N'43-Nam Đông-Huế-Việt Nam', 53, 4, N'Bùi Thế Thái', N'Ngô Mai Hiệu ', N'Cán bộ', N'060-393-2249', N'https://ogaee.net55/rfcbf/pkpvq/itt.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (329, N'BA ', N'Lê Mai', 1, CAST(N'2003-01-15T19:40:32.700' AS DateTime), N'Tp.HCM-Việt Nam', N'81-Bình Điền-Huế-Việt Nam', 23, 4, N'Trần Hoàng Anh Vũ', N'Đỗ Bảo Quỳnh ', N'Buôn bán', N'494233-1977', N'http://hlvp.localn4/ctjpa/jafua/hlspi/lvbbb/dibia.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (330, N'Tám ', N'Huỳnh Đức', 1, CAST(N'2004-11-27T09:14:43.280' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'61-Hương Thủy-Huế-Việt Nam', 33, 2, N'Huỳnh Thế Ân', N'Đặng Thị  ', N'Nhạc sĩ', N'064658-7012', N'https://lqnbh.webx6/hnnee/fsai.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (331, N'Nhạn ', N'Phan Bảo', 1, CAST(N'2004-03-06T12:22:17.530' AS DateTime), N'Đồng Tháp-Việt Nam', N'697--Huế-Việt Nam', 51, 4, N'Phan Văn Lê', N'Vũ Hồng Vàng ', N'Buôn bán', N'0583476392', N'http://dlr.locala0/ryrhf/nmlc.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (332, N'Chín ', N'Phan Hồng', 0, CAST(N'2003-08-02T12:54:48.380' AS DateTime), N'Huế-Việt Nam', N'355-Hương Thủy-Huế-Việt Nam', 39, 4, N'Trần Hoàng Đặng Chi', N'Lê Thanh Hiệu ', N'Nhân viên văn phòng', N'326-6749123', N'https://uwem.net18/drqcj/ioiaw/nfzen/hxh.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (333, N'Báo ', N'Hoàng Anh', 1, CAST(N'2003-04-21T23:32:36.240' AS DateTime), N'Bến Tre-Việt Nam', N'24-Phú Lộc-Huế-Việt Nam', 16, 5, N'Phan Đăng Đặng Huy', N'PhạmNguyễn Hồng Thư ', N'Đầu bếp', N'2105196894', N'https://ywn.webz7/doxlc/uvppy/qhjum/podyv.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (334, N'Danh ', N'Phạm Đặng', 0, CAST(N'2004-10-05T03:17:16.060' AS DateTime), N'Huế-Việt Nam', N'94-Phong Điền-Huế-Việt Nam', 45, 2, N'Phạm Đức Vàng', N'Lý Thị Yến ', N'Công An', N'2555312121', N'http://calj.netv03/tmdlq/yiffy/mcewd/tehps.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (335, N'Anh ', N'Trần Hoàng Thanh', 0, CAST(N'2005-02-12T23:44:11.320' AS DateTime), N'Hải Phòng-Việt Nam', N'819-Hương Trà-Huế-Việt Nam', 20, 7, N'Huỳnh Bảo Duy', N'Hoàng Thị Quỳnh ', N'Điều dưỡng', N'213-4212380', N'http://xwukg.local5/riouu/wcdxo/ycvqc/dtjbj/couz.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (336, N'Đệ ', N'Nguyễn Hoàng Anh', 0, CAST(N'2005-01-07T10:22:54.100' AS DateTime), N'Hà Nội-Việt Nam', N'158-Phú Lộc-Huế-Việt Nam', 49, 3, N'Lý Thế Vũ', N'Dương Mai  ', N'Công An', N'7793568051', N'https://oblmx.webm86/jyvhk/lqkjb/ygsgm/djwzw/qxms.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (337, N'Tranh ', N'Huỳnh Bảo', 1, CAST(N'2005-10-09T11:59:54.720' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'3-Phong Điền-Huế-Việt Nam', 4, 4, N'Huỳnh Nguyên Duy', N'Võ Anh Ngân ', N'Điều dưỡng', N'397459-0405', N'https://rva.localt5/kesjw/ysguy/wmjb.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (338, N'Vũ ', N'Đặng Mai', 1, CAST(N'2003-09-18T22:13:22.150' AS DateTime), N'Gia Lai-Việt Nam', N'143-Phú Lộc-Huế-Việt Nam', 17, 7, N'Trần Hoàng Văn Huy', N'Trần Bảo Tranh ', N'Nhân viên văn phòng', N'2514126480', N'https://vtjo.nett/nzhna/vedty/aaayd/nqc.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (339, N'Văn ', N'Phạm Đặng', 0, CAST(N'2003-09-28T04:22:09.160' AS DateTime), N'Bắc Giang-Việt Nam', N'9-Phong Điền-Huế-Việt Nam', 26, 4, N'Bùi Đặng Đức', N'Trần Mai Yến ', N'Thợ điện', N'470358-2887', N'https://tpapg.localb1/rawan/dxoht/nmgu.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (340, N'Trâm ', N'Đỗ Văn', 0, CAST(N'2003-09-02T03:25:57.050' AS DateTime), N'Quãng Ngãi-Việt Nam', N'19-Phong Điền-Huế-Việt Nam', 9, 1, N'Lý Thế Hoài', N'Bùi Hồng Quỳnh ', N'Cán bộ', N'951389-2695', N'https://bdft.netf/wxwhf/cbmce/ynmwr/utira/srl.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (341, N'Nhạn ', N'Ngô Thị', 0, CAST(N'2003-12-16T16:57:17.760' AS DateTime), N'Bắc Ninh-Việt Nam', N'192-Hương Thủy-Huế-Việt Nam', 43, 7, N'Trần Hữu Đặng Vàng', N'Dương Bảo Hoài ', N'Công nhân', N'0793306790', N'http://hzzh.localx31/xnhtf/hotdc/ifwep/wvpxu/irvcy.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (342, N'Báo ', N'Bùi Hữu', 1, CAST(N'2003-01-04T08:50:48.400' AS DateTime), N'Bắc Kạn-Việt Nam', N'6-Phú Lộc-Huế-Việt Nam', 6, 4, N'Phan Bảo Huy', N'Đặng Thế Hiệu ', N'Điều dưỡng', N'634139-5878', N'https://ppum.net7/vewpy/nsmui/dztcl/vepdj/vtkj.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (343, N'Thư ', N'Dương Nguyên', 1, CAST(N'2004-05-07T00:18:23.060' AS DateTime), N'Hà Giang-Việt Nam', N'59-Phong Điền-Huế-Việt Nam', 5, 5, N'Đặng Đức Hoài', N'Đặng Bảo Yến ', N'Nhạc sĩ', N'763-580-5416', N'https://curcq.web/gezhg/utimy/visuk/fbd.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (344, N'Chín ', N'Trần Bảo', 1, CAST(N'2003-03-15T15:23:59.140' AS DateTime), N'Bình Định-Việt Nam', N'68-Hương Trà-Huế-Việt Nam', 25, 7, NULL, N'Phan Đặng Hiệu ', N'Ca sĩ', N'698914-7767', N'https://gol.localu/pjyjf/hqql.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (345, N'Đức ', N'Phan Anh', 1, CAST(N'2003-04-30T21:06:56.180' AS DateTime), N'Bạc Liêu-Việt Nam', N'43-Bình Điền-Huế-Việt Nam', 5, 3, N'Ngô Bảo Thái', N'Huỳnh Đặng Trúc ', N'Công nhân', N'5619477345', N'http://zjjvx.localh2/bsaxq/ucmfy/keexl/mqqc.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (346, N'Thá ', N'Bùi Thế', 0, CAST(N'2003-02-01T09:48:38.690' AS DateTime), N'Gia Lai-Việt Nam', N'911--Huế-Việt Nam', 42, 5, N'Phạm Nguyền Nguyên Huy', N'Đặng Bảo Lê ', N'Bác sĩ', N'712-592-5222', N'http://hwsi.webc1/htzyj/rtlqk/vpvxu/qydyj/qbtg.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (347, N'Thương ', N'Ngô Đức', 1, CAST(N'2004-08-13T13:18:14.110' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'345-Phong Điền-Huế-Việt Nam', 48, 5, N'Trần Đặng Thương', N'Lý Đặng Tranh ', N'Buôn bán', N'712926-2223', N'https://hagqs.net64/xwdxt/ghxm.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (348, N'Thanh ', N'Ngô Mai', 1, CAST(N'2005-10-04T21:09:45.940' AS DateTime), N'Quãng Nam-Việt Nam', N'8-Hương Thủy-Huế-Việt Nam', 42, 1, N'Lý Anh Thương', N'Dương Bảo Yến ', N'Đầu bếp', N'678-655-5371', N'https://jqhig.net4/pyckf/aniim/neaxu/guvmi/xhzk.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (349, N'Đức ', N'Lý Hữu', 0, CAST(N'2004-10-02T02:45:53.570' AS DateTime), N'Hà Nội-Việt Nam', N'98-Hương Thủy-Huế-Việt Nam', 4, 4, N'Võ Văn Đức', N'Đặng Đặng Yến ', N'Nhân viên văn phòng', N'715606-4409', N'http://ktliu.web44/axdte/nxzgi/cqu.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (350, N'Vân ', N'Đỗ Anh', 0, CAST(N'2005-12-23T07:18:08.680' AS DateTime), N'Điện Biên-Việt Nam', N'41-Nam Đông-Huế-Việt Nam', 23, 2, N'Trần Hữu Anh Thái', N'Hồ Thị Tranh ', N'Thợ Xây', N'368831-1591', N'https://pmfg.web82/nuhda/ltnue/ecek.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (351, N'Nin ', N'Hoàng Hữu', 0, CAST(N'2003-03-30T12:00:11.190' AS DateTime), N'Tp.HCM-Việt Nam', N'14-Hương Thủy-Huế-Việt Nam', 14, 3, N'Trần Hữu Đức Thái', N'Ngô Đặng Trúc ', N'Bác sĩ', N'655-1736081', N'http://mjdzx.webt/iawzl/asbii/lrlya/xjmqa.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (352, N'Yến ', N'Đỗ Hồng', 1, CAST(N'2003-03-21T14:19:24.320' AS DateTime), N'Quãng Ngãi-Việt Nam', N'4-Phong Điền-Huế-Việt Nam', 20, 4, N'Đặng Đặng Lê', N'Phan Thị Huy ', N'Thợ điện', N'146-859-4958', N'https://vkxu.net8/rersk/dvdqr/lgeqy/fszsl.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (353, N'Lục ', N'Dương Anh', 1, CAST(N'2003-02-22T21:26:32.670' AS DateTime), N'Bình Định-Việt Nam', N'27-Nam Đông-Huế-Việt Nam', 28, 7, N'Phan Hữu Huy', N'Ngô Đặng Ân ', N'Bác sĩ', N'005-9995397', N'https://vhut.net22/ezqmf/xsm.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (354, N'Đức ', N'Nguyễn Mai', 0, CAST(N'2004-12-05T10:22:05.740' AS DateTime), N'Tp.HCM-Việt Nam', N'2-Bình Điền-Huế-Việt Nam', 11, 5, N'Trần Bảo Đức', N'PhạmNguyễn Anh Chi ', N'Nhạc sĩ', N'850-7990510', N'https://xrjp.localy/ubwak/cdezi/tbpgu.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (355, N'Chi ', N'Đặng Thị', 1, CAST(N'2005-03-08T00:08:21.510' AS DateTime), N'Bình Dương-Việt Nam', N'772--Huế-Việt Nam', 14, 1, N'Phạm Nguyền Anh Vũ', N'PhạmNguyễn Mai Hiệu ', N'Dược sĩ', N'1255462509', N'https://dqdrx.weba1/wcepp/prqjv/htyhz/kffi.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (356, N'Chín ', N'Trần Hoàng Bảo', 0, CAST(N'2005-05-26T20:49:23.340' AS DateTime), N'Quãng Ngãi-Việt Nam', N'30-Hương Trà-Huế-Việt Nam', 50, 3, N'Võ Hữu Thương', N'Lê Hồng Ngân ', N'Công nhân', N'562-9921171', N'http://fdi.webt62/waqpd/ruvmk/esaws/xndar.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (357, N'Lê ', N'Võ Đức', 0, CAST(N'2004-05-02T01:17:04.680' AS DateTime), N'Bến Tre-Việt Nam', N'786-Phong Điền-Huế-Việt Nam', 34, 5, N'Trần Hoàng Nguyên Ân', N'Võ Mai Thương ', N'Đầu bếp', N'3893723813', N'http://kopub.webh9/ciqei/vzdo.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (358, N'Hai ', N'Võ Anh', 0, CAST(N'2003-12-31T12:18:57.190' AS DateTime), N'Hải Phòng-Việt Nam', N'908-Bình Điền-Huế-Việt Nam', 4, 7, N'Trần Đức Đức', N'Lê Mai Ngọc ', N'Thợ mộc', N'199-4292950', N'https://niunv.webo/eakis/hbzya/xysgn/dwosl.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (359, N'Quân ', N'Vũ Hữu', 0, CAST(N'2004-01-04T23:13:54.320' AS DateTime), N'Bình Phước-Việt Nam', N'7-A Lưới-Huế-Việt Nam', 9, 3, N'Bùi Thế Vàng', N'Vũ Thế Ân ', N'Nhạc sĩ', N'464464-8356', N'https://tpqp.webx0/mgggz/jntwp/btmrp/lpwp.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (360, N'Quân ', N'Đặng Anh', 0, CAST(N'2004-11-21T08:34:37.050' AS DateTime), N'Huế-Việt Nam', N'7-Nam Đông-Huế-Việt Nam', 41, 1, N'Vũ Văn Hiệu', N'Đặng Thế Hoài ', N'Nhạc sĩ', N'079-1270925', N'http://kjs.local9/avwqo/caaud/pwspi/osd.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (361, N'Hữu ', N'Phạm Nguyên', 1, CAST(N'2004-05-08T05:54:27.460' AS DateTime), N'Hải Phòng-Việt Nam', N'621-Hương Thủy-Huế-Việt Nam', 48, 5, N'Đặng Anh Đức', N'Dương Đặng Chi ', N'Cán bộ', N'4116455486', N'http://oooru.web/srvzz/nwpg.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (362, N'Ngân ', N'Nguyễn Đặng', 0, CAST(N'2003-02-04T12:54:44.820' AS DateTime), N'Hà Nội-Việt Nam', N'35-A Lưới-Huế-Việt Nam', 5, 1, N'Lý Bảo Đức', N'Vũ Mai Thư ', N'Hưu trí', N'0725022977', N'http://nac.netj/ptbag/fyglr/dauja/fgiyc/sbrrr.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (363, N'Ngọc ', N'Võ Anh', 0, CAST(N'2005-03-29T03:57:06.410' AS DateTime), N'Hải Phòng-Việt Nam', N'8-Nam Đông-Huế-Việt Nam', 14, 6, N'Phạm Nguyền Hữu Huy', N'Hồ Thanh Yến ', N'Ca sĩ', N'548-6166101', N'http://rpbbx.localc6/pbjzi/jlmwv.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (364, N'Đặng ', N'Đỗ Văn', 0, CAST(N'2003-04-17T02:34:55.940' AS DateTime), N'Đà Nẵng-Việt Nam', N'18-Bình Điền-Huế-Việt Nam', 5, 1, N'Trần Hoàng Thế Ngọc', N'Đặng Đặng Quỳnh ', N'Cán bộ', N'630-3654941', N'https://het.netd50/slamd/ryoqq/rjr.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (365, N'Đại ', N'Dương Nguyên', 0, CAST(N'2005-10-14T00:11:27.570' AS DateTime), N'Bạc Liêu-Việt Nam', N'970-Hương Trà-Huế-Việt Nam', 20, 6, N'Võ Thế Hoài', N'Đỗ Bảo Hiệu ', N'Ca sĩ', N'768-1648164', N'https://vtkl.web31/lazva/oizif/tceqm/epihz.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (366, N'Tứ ', N'Dương Thị', 0, CAST(N'2005-10-14T04:00:37.050' AS DateTime), N'Bạc Liêu-Việt Nam', N'212-Phú Lộc-Huế-Việt Nam', 23, 7, N'Phan Đăng Đức Đức', N'Hồ Bảo Quỳnh ', N'Công nhân', N'390885-8922', N'https://hkjg.local01/wrucl/hpqqj/btg.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (367, N'Hóa ', N'Hoàng Hồng', 0, CAST(N'2003-08-28T08:27:58.010' AS DateTime), N'Hà Giang-Việt Nam', N'7--Huế-Việt Nam', 31, 3, N'Trần Hoàng Văn Lê', N'Phan Hồng Quỳnh ', N'Thợ mộc', N'764936-0922', N'https://data.nete/swryn/pkjmx/sqex.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (368, N'Hữu ', N'Võ Thanh', 0, CAST(N'2004-04-07T08:09:54.370' AS DateTime), N'Bình Định-Việt Nam', N'3-Hương Thủy-Huế-Việt Nam', 44, 7, N'Đỗ Thế Vàng', N'Lê Thanh Ngọc ', N'Nông dân', N'190-486-8173', N'http://noomn.local/mylet/uyk.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (369, N'Quan ', N'Phan Hữu', 1, CAST(N'2003-12-14T19:41:25.550' AS DateTime), N'Đồng Nai-Việt Nam', N'9-Hương Trà-Huế-Việt Nam', 51, 4, N'Dương Văn Đức', N'Ngô Bảo Hoài ', N'Cán bộ', N'241-2699361', N'http://voiqu.webw3/eyeje/xbtfx/leyt.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (370, N'Nhất ', N'Đặng Anh', 1, CAST(N'2005-03-20T17:11:52.440' AS DateTime), N'Đồng Nai-Việt Nam', N'191-Hương Trà-Huế-Việt Nam', 5, 2, N'Võ Thế Ngọc', N'Hồ Bảo Ân ', N'Điều dưỡng', N'963-880-8027', N'https://cfks.localx28/cgtau/luk.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (371, N'Khôi ', N'Phan Anh', 1, CAST(N'2004-08-01T00:45:21.030' AS DateTime), N'Bạc Liêu-Việt Nam', N'782-Bình Điền-Huế-Việt Nam', 12, 1, N'Phạm Đức Duy', N'Đỗ Hồng Yến ', N'Thợ điện', N'862679-5008', N'http://qrte.neti6/mugee/uqgun.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (372, N'Năm ', N'Võ Anh', 1, CAST(N'2003-07-06T08:04:22.730' AS DateTime), N'Bắc Giang-Việt Nam', N'6-Bình Điền-Huế-Việt Nam', 39, 7, N'Trần Hoàng Đức Đức', N'Võ Thanh Huy ', N'Bác sĩ', N'125-275-3372', N'http://eda.locald2/ilspx/mbhrh/oogmq/tocwl/kgho.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (373, N'Đức ', N'Lê Văn', 1, CAST(N'2005-04-16T10:28:55.230' AS DateTime), N'Hà Giang-Việt Nam', N'49-Phú Lộc-Huế-Việt Nam', 23, 5, N'Võ Bảo Huy', N'Võ Anh  ', N'Ca sĩ', N'131-3001635', N'https://gte.local1/immqk/pmrrm/mmz.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (374, N'Hóa ', N'Võ Thị', 1, CAST(N'2004-07-06T18:34:46.110' AS DateTime), N'Bắc Kạn-Việt Nam', N'9-Phong Điền-Huế-Việt Nam', 8, 1, N'Phạm Đặng Thái', N'Đỗ Thanh Lê ', N'Thợ Xây', N'7726400096', N'https://freyq.net43/xmdzg/jucmr/wtf.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (375, N'Mười ', N'Dương Hồng', 0, CAST(N'2003-08-19T13:56:59.520' AS DateTime), N'Hà Nội-Việt Nam', N'418-Phú Lộc-Huế-Việt Nam', 40, 4, N'Đỗ Văn Lê', N'Vũ Thanh Trúc ', N'Cán bộ', N'207197-0198', N'https://fjtjz.web8/ilete/arm.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (376, N'Quân ', N'Ngô Mai', 1, CAST(N'2003-05-18T04:08:41.190' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'56-Hương Trà-Huế-Việt Nam', 40, 2, N'Bùi Văn Chi', N'Đỗ Mai Thương ', N'Đầu bếp', N'649511-7349', N'http://ecsaj.web5/eiton/kwunw/ambra/lhawh.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (377, N'Pháp ', N'Ngô Hồng', 1, CAST(N'2005-10-15T03:54:05.030' AS DateTime), N'Hải Phòng-Việt Nam', N'85-Hương Trà-Huế-Việt Nam', 49, 2, N'Ngô Hữu Chi', N'Vũ Anh Hiệu ', N'Giáo viên', N'313-186-8990', N'http://bfizl.webf/fnqcj/piisn/jvgdz/hbehg.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (378, N'Thị ', N'Trần Hồng', 1, CAST(N'2004-09-09T07:18:27.000' AS DateTime), N'Bạc Liêu-Việt Nam', N'3-Phong Điền-Huế-Việt Nam', 7, 7, N'Bùi Nguyên Đức', N'Đặng Thị Yến ', N'Điều dưỡng', N'441519-0830', N'http://ubos.localq86/qisgx/nyye.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (379, N'Phổ ', N'Lý Đặng', 1, CAST(N'2004-08-29T08:32:45.000' AS DateTime), N'Quãng Nam-Việt Nam', N'124-Bình Điền-Huế-Việt Nam', 32, 2, N'Lý Thế Thương', N'Bùi Thanh Thương ', N'Ca sĩ', N'7479747876', N'http://arjgy.web/nuqwb/capi.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (380, N'Danh ', N'Nguyễn Hoàng Anh', 0, CAST(N'2005-04-15T20:15:19.550' AS DateTime), N'Quãng Nam-Việt Nam', N'3--Huế-Việt Nam', 10, 5, N'Phan Văn Thương', N'Vũ Anh Hoài ', N'Cán bộ', N'521216-1199', N'https://ixj.local56/qvuga/lfh.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (381, N'BA ', N'Dương Hữu', 1, CAST(N'2004-01-08T21:06:04.510' AS DateTime), N'Đồng Tháp-Việt Nam', N'7-Nam Đông-Huế-Việt Nam', 4, 5, N'Võ Anh Vũ', N'Huỳnh Thị Hoài ', N'Công nhân', N'355-4226040', N'https://mhrlh.localp/saion/rhcrk/bhkbe/cmtje.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (382, N'Chín ', N'Huỳnh Mai', 0, CAST(N'2003-02-25T03:05:16.400' AS DateTime), N'Điện Biên-Việt Nam', N'53-Hương Thủy-Huế-Việt Nam', 23, 2, N'Trần Hoàng Nguyên Hoài', N'Dương Đặng Huy ', N'Điều dưỡng', N'733-8686747', N'http://bysng.netj27/dpnmn/hpewu/lturj/wml.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (383, N'Tấn ', N'Lê Thị', 1, CAST(N'2005-07-06T02:16:06.130' AS DateTime), N'Đồng Nai-Việt Nam', N'459--Huế-Việt Nam', 50, 7, N'Bùi Nguyên Chi', N'Vũ Thanh Trúc ', N'Nhân viên văn phòng', N'785223-3926', N'https://pkxq.locale8/xgwrj/mwcxo/tnrrj/umc.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (384, N'Hồng ', N'Phạm Đức', 1, CAST(N'2003-01-23T12:22:24.020' AS DateTime), N'Bắc Giang-Việt Nam', N'949-Phong Điền-Huế-Việt Nam', 54, 3, N'Phạm Bảo Đức', N'Võ Thanh Hoài ', N'Ca sĩ', N'276-878-6669', N'https://cdq.local/ftxlm/msyer/apecb/uncu.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (385, N'Tần ', N'Dương Bảo', 1, CAST(N'2004-08-30T21:14:32.080' AS DateTime), N'Tp.HCM-Việt Nam', N'736--Huế-Việt Nam', 20, 7, N'Lê Thế Hoài', N'Dương Đặng Lê ', N'Thợ điện', N'6758484932', N'http://zpgdq.localm6/fffib/xfhx.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (386, N'Thanh ', N'Vũ Đức', 1, CAST(N'2003-12-17T22:02:53.210' AS DateTime), N'Đắk Lắk-Việt Nam', N'6-Phú Lộc-Huế-Việt Nam', 31, 7, N'Vũ Thế Thái', N'Hoàng Anh Thư ', N'Nhạc sĩ', N'842-819-0053', N'https://vkyx.localw/pgpig/enzem/iofah/vacch/unkp.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (387, N'Đức ', N'Ngô Văn', 1, CAST(N'2003-06-10T15:28:15.700' AS DateTime), N'Bến Tre-Việt Nam', N'4-Phú Lộc-Huế-Việt Nam', 11, 4, N'Ngô Hữu Đức', N'Đỗ Thị Tranh ', N'Dược sĩ', N'663-6337908', N'http://tbspb.netr/mubac/rzdwb/lmzzo/wpaub/tqy.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (388, N'Thư ', N'Huỳnh Thế', 1, CAST(N'2004-05-16T13:10:30.510' AS DateTime), N'Bắc Giang-Việt Nam', N'69-Bình Điền-Huế-Việt Nam', 6, 7, N'Đặng Anh Huy', NULL, N'Dược sĩ', N'946-2425707', N'https://ixysq.net/xnbgs/gdcnq/amjrs/glkom.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (389, N'Thế ', N'Huỳnh Thế', 0, CAST(N'2005-07-30T03:08:54.550' AS DateTime), N'Bạc Liêu-Việt Nam', N'419-Phong Điền-Huế-Việt Nam', 32, 2, N'Hoàng Đặng Hiệu', N'Võ Mai  ', N'Đầu bếp', N'7948615077', N'https://fswml.localv/vavjv/amjxl/ytgnz/jbas.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (390, N'Phi ', N'Bùi Nguyên', 1, CAST(N'2005-09-19T02:54:47.980' AS DateTime), N'Đà Nẵng-Việt Nam', N'116-Phong Điền-Huế-Việt Nam', 24, 5, N'Trần Anh Vàng', N'Hồ Hồng Hoài ', N'Giáo viên', N'9015401361', N'https://hpcv.netu/hkcpn/negu.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (391, N'Vũ ', N'Phan Mai', 1, CAST(N'2003-09-08T09:05:49.410' AS DateTime), N'Bình Dương-Việt Nam', N'4-Hương Thủy-Huế-Việt Nam', 15, 5, N'Đỗ Bảo Thương', N'Trần Thanh  ', N'Thợ Xây', N'825-7422364', N'https://egi.webk/dvolx/trqla/zdxbv/nniye/wxpi.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (392, N'Hoài ', N'Nguyễn Bảo', 0, CAST(N'2004-10-09T23:40:57.530' AS DateTime), N'Hà Nội-Việt Nam', N'895-Hương Thủy-Huế-Việt Nam', 54, 4, N'Nguyễn Anh Vũ', N'Phan Thị  ', N'Đầu bếp', N'175-4643952', N'http://fvvh.webb8/dyxxf/ldnvf/dfqfo/ckqey.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (393, N'Bảy ', N'Hoàng Văn', 0, CAST(N'2005-09-13T22:59:27.830' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'49-Hương Trà-Huế-Việt Nam', 8, 4, N'Hồ Bảo Ân', N'Huỳnh Mai Lê ', N'Thợ nước', N'409-2524826', N'http://wqbtb.netu/zrlxx/ragsb/vnnua/zzdwc/ubtuo.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (394, N'Tướng ', N'Nguyễn Nguyên', 1, CAST(N'2004-11-05T19:47:32.110' AS DateTime), N'Bắc Giang-Việt Nam', N'3-Phong Điền-Huế-Việt Nam', 40, 4, N'Đặng Thế Vũ', N'Bùi Hồng Quỳnh ', N'Điều dưỡng', N'275-474-1899', N'http://ltpj.net/tulua/gnvbw/gicpe/vfwlt/qebx.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (395, N'Huy ', N'Lê Mai', 1, CAST(N'2005-04-25T21:31:29.590' AS DateTime), N'Gia Lai-Việt Nam', N'5--Huế-Việt Nam', 16, 4, N'Trần Bảo Ngọc', N'Đặng Thanh Ân ', N'Buôn bán', N'889-233-6573', N'http://etrj.web7/gtkmq/lnull.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (396, N'Hiền ', N'Ngô Mai', 0, CAST(N'2003-11-12T04:02:32.940' AS DateTime), N'Bạc Liêu-Việt Nam', N'57--Huế-Việt Nam', 39, 6, N'Phan Anh Thái', N'Phan Thế Quỳnh ', N'Nhạc sĩ', N'6475357590', N'http://hace.localj6/boyzy/iztqs/wzaq.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (397, N'Chín ', N'Vũ Văn', 0, CAST(N'2003-10-08T04:53:42.000' AS DateTime), N'Đà Nẵng-Việt Nam', N'7-Nam Đông-Huế-Việt Nam', 46, 5, N'Hồ Thế Thái', N'Đặng Mai Chi ', N'Ca sĩ', N'452-680-9424', N'http://bhs.webb3/cwcvv/pmnw.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (398, N'Quan ', N'Đỗ Hữu', 1, CAST(N'2004-01-21T21:43:27.120' AS DateTime), N'Đồng Tháp-Việt Nam', N'7-Nam Đông-Huế-Việt Nam', 1, 4, N'Phan Đăng Nguyên Huy', N'Lê Anh Chi ', N'Giáo viên', N'990-7024208', N'http://hup.locale/aynki/wxjjj/qtqnb.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (399, N'Hoài ', N'Đặng Hồng', 0, CAST(N'2003-06-01T15:12:31.580' AS DateTime), N'Tp.HCM-Việt Nam', N'9-Nam Đông-Huế-Việt Nam', 5, 1, N'Phan Đăng Bảo Duy', N'PhạmNguyễn Bảo Thương ', N'Nhân viên văn phòng', N'633-023-8360', N'http://vnyxj.netm3/dcwdh/ghppm/tprbz/ftlke/aqbx.asm', 0)
GO
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (400, N'Quan ', N'Hoàng Hữu', 0, CAST(N'2003-07-17T17:06:19.140' AS DateTime), N'Huế-Việt Nam', N'3-Nam Đông-Huế-Việt Nam', 36, 4, N'Phan Thế Duy', N'Đặng Đặng Vàng ', N'Buôn bán', N'111-755-3244', N'http://afhe.net2/cnfam/ttkmf/kqtyk.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (401, N'Nhị ', N'Huỳnh Hữu', 1, CAST(N'2005-06-06T01:20:40.680' AS DateTime), N'Gia Lai-Việt Nam', N'6-Phú Lộc-Huế-Việt Nam', 12, 3, N'Đỗ Đức Chi', N'Hoàng Thị Quỳnh ', N'Thợ điện', N'372-508-6665', N'https://ikfb.netm1/zopiw/mnmid/xixvq/pmjnh/sid.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (402, N'Ân ', N'Lê Hồng', 0, CAST(N'2003-05-09T05:08:19.740' AS DateTime), N'Đắk Nông-Việt Nam', N'891-Hương Thủy-Huế-Việt Nam', 4, 5, N'Huỳnh Đức Thái', N'Đặng Thế Thư ', N'Thợ Xây', N'332219-1891', N'http://hqf.webp/zxofa/yhsol/aoscl/uqoux.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (403, N'Phụng ', N'Nguyễn Thị', 1, CAST(N'2004-10-22T01:28:20.380' AS DateTime), N'Bắc Giang-Việt Nam', N'91--Huế-Việt Nam', 45, 5, N'Bùi Nguyên Vàng', N'Vũ Mai Huy ', N'Thợ nước', N'879013-1385', N'https://ngxdi.webo5/gqual/vwh.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (404, N'Quan ', N'Vũ Mai', 0, CAST(N'2005-07-14T09:34:01.130' AS DateTime), N'Quãng Nam-Việt Nam', N'88-Hương Trà-Huế-Việt Nam', 54, 3, N'Trần Hữu Anh Chi', N'Lê Đặng Ân ', N'Công An', N'1800091882', N'https://tiz.localf24/rkpgk/lydhd/ewojx/xsmta/zbqh.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (405, N'Công ', N'Nguyễn Văn', 1, CAST(N'2004-05-24T06:32:47.650' AS DateTime), N'Bắc Kạn-Việt Nam', N'359-Hương Thủy-Huế-Việt Nam', 12, 1, N'Dương Hữu Vũ', N'Võ Mai Ân ', N'Đầu bếp', N'7168681918', N'https://wfzc.net/wckpp/uvsvc/nifyk/giwdo.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (406, N'Thá ', N'Phan Nguyên', 0, CAST(N'2005-09-24T03:55:48.470' AS DateTime), N'Đắk Nông-Việt Nam', N'543-Hương Trà-Huế-Việt Nam', 29, 3, N'Dương Đức Huy', N'PhạmNguyễn Thị Huy ', N'Nhân viên văn phòng', N'934381-7825', N'https://uftyo.webn/ktsgv/olrix/dfomc/souv.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (407, N'Chín ', N'Lê Bảo', 0, CAST(N'2003-12-05T03:50:29.090' AS DateTime), N'Quãng Ngãi-Việt Nam', N'1-Hương Thủy-Huế-Việt Nam', 51, 6, N'Trần Hoàng Đặng Hoài', N'Dương Mai Yến ', N'Bác sĩ', N'220-0725901', N'https://bthx.local8/nocao/dcyxl/tzsy.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (408, N'Công ', N'Huỳnh Văn', 1, CAST(N'2004-08-18T02:51:46.570' AS DateTime), N'Tp.HCM-Việt Nam', N'476-Phú Lộc-Huế-Việt Nam', 21, 7, N'Dương Anh Thương', N'Phan Anh Hiệu ', N'Thợ nước', N'091-741-8948', N'http://ook.web/owjlx/fbxz.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (409, N'Nhất ', N'Huỳnh Bảo', 1, CAST(N'2004-04-18T20:25:06.210' AS DateTime), N'Đà Nẵng-Việt Nam', N'189-A Lưới-Huế-Việt Nam', 25, 1, N'Hồ Hữu Hiệu', N'Vũ Đặng Thương ', N'Giáo viên', N'0439882178', N'http://rtjp.webz18/bblcj/htso.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (410, N'Mười ', N'Phan Văn', 0, CAST(N'2004-10-21T19:59:40.310' AS DateTime), N'Đồng Tháp-Việt Nam', N'63--Huế-Việt Nam', 29, 6, N'Đỗ Thế Lê', N'Dương Thị Lê ', N'Thợ điện', N'370870-8068', N'https://nbox.local0/vbpnh/zjzje/mtzoo/kxcnu/qklkj.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (411, N'Công ', N'Hồ Anh', 1, CAST(N'2005-08-11T16:55:18.320' AS DateTime), N'Gia Lai-Việt Nam', N'35-A Lưới-Huế-Việt Nam', 2, 1, N'Hoàng Hữu Chi', N'Huỳnh Thanh Tranh ', N'Nhạc sĩ', N'1240651126', N'http://wfqbu.localx/ggrou/gjiqi/hgkxx/oaaxx/hdyuq.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (412, N'Lê ', N'Đặng Văn', 1, CAST(N'2005-08-22T17:58:37.690' AS DateTime), N'Đà Nẵng-Việt Nam', N'5-Hương Trà-Huế-Việt Nam', 27, 5, N'Trần Thế Thương', N'PhạmNguyễn Anh Ân ', N'Ca sĩ', NULL, N'https://xhoxy.local0/qnlju/acnde/jjqgr.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (413, N'Bảo ', N'Ngô Hồng', 1, CAST(N'2005-05-03T03:46:12.200' AS DateTime), N'Huế-Việt Nam', N'767-Bình Điền-Huế-Việt Nam', 27, 6, N'Ngô Hữu Huy', N'Võ Thị Ngân ', N'Bác sĩ', N'663-099-3409', N'http://ccd.locals9/cyksh/wtdkq/zataf/hpzmp/bnj.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (414, N'Ân ', N'Dương Mai', 1, CAST(N'2004-09-20T02:58:34.770' AS DateTime), N'Bắc Kạn-Việt Nam', N'2-Bình Điền-Huế-Việt Nam', 53, 6, N'Hồ Nguyên Vàng', N'Lê Bảo Thương ', N'Giáo viên', N'829961-6226', N'http://wcbua.web0/xwcca/ccznx/mtqin/tchkb/oaez.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (415, N'Báo ', N'Đặng Mai', 0, CAST(N'2003-11-14T11:28:32.540' AS DateTime), N'Đà Nẵng-Việt Nam', N'6--Huế-Việt Nam', 37, 4, N'Phạm Nguyền Đức Ngọc', N'Lê Hồng Yến ', N'Đầu bếp', N'743-1751323', N'http://mdfc.net/gmjoy/obkxi/ibcmu/oaydp/ylm.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (416, N'Danh ', N'Phan Thanh', 0, CAST(N'2004-03-14T02:49:11.050' AS DateTime), N'Bạc Liêu-Việt Nam', N'2-Nam Đông-Huế-Việt Nam', 25, 4, N'Phan Đặng Vàng', N'Lê Hồng Ngân ', N'Điều dưỡng', N'656-916-0437', N'https://vsriv.localn1/ppvqe/cpvyg/mdxpp/yhkj.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (417, N'Chi ', N'Dương Anh', 0, CAST(N'2003-08-01T10:38:38.690' AS DateTime), N'Quãng Ngãi-Việt Nam', N'43-Bình Điền-Huế-Việt Nam', 10, 2, N'Bùi Đặng Lê', N'PhạmNguyễn Thế Vàng ', N'Hưu trí', N'8629091625', N'https://zfhlh.webo/yihke/fwlqw/xlx.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (418, N'Hoài ', N'Võ Hữu', 1, CAST(N'2005-03-06T15:34:42.380' AS DateTime), N'Đồng Tháp-Việt Nam', N'45-Hương Thủy-Huế-Việt Nam', 15, 4, N'Lê Anh Vũ', N'Ngô Mai Thương ', N'Buôn bán', N'5481516800', N'http://sfnfj.web/yvmrp/qhgnc/egeqc/kajzg/cimt.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (419, N'Phi ', N'Nguyễn Hoàng Thị', 0, CAST(N'2004-08-16T05:20:23.860' AS DateTime), N'Gia Lai-Việt Nam', N'449-Nam Đông-Huế-Việt Nam', 39, 1, N'Ngô Nguyên Ân', N'Hồ Đặng Tranh ', N'Ca sĩ', N'638-5156667', N'http://jxrx.netf97/qbibh/sbjkd/zpcoh.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (420, N'Tam ', N'Trần Văn', 1, CAST(N'2004-10-28T02:08:34.360' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'8-A Lưới-Huế-Việt Nam', 44, 7, N'Trần Hoàng Hữu Thương', N'PhạmNguyễn Bảo  ', N'Nhân viên văn phòng', N'280-667-2541', N'https://dasm.netp8/ftepi/gfsgb/zunya/runwh.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (421, N'Danh ', N'Hoàng Đặng', 1, CAST(N'2005-05-06T12:32:21.340' AS DateTime), N'Gia Lai-Việt Nam', N'62--Huế-Việt Nam', 12, 3, N'Phạm Thế Huy', N'Lý Hồng Lê ', N'Thợ nước', N'098-780-3800', N'https://voylg.web/uztua/fccwt.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (422, N'Bảo ', N'Đặng Văn', 1, CAST(N'2005-04-12T19:17:27.510' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'7-Phong Điền-Huế-Việt Nam', 25, 3, N'Ngô Thế Duy', N'Võ Anh Vàng ', N'Cán bộ', N'583770-0679', N'https://ojfq.locall9/sghaw/axceb/wtgrf/uodpp/wyi.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (423, N'Hiếu ', N'Lê Nguyên', 0, CAST(N'2004-09-08T05:00:59.820' AS DateTime), N'Đà Nẵng-Việt Nam', N'99-Phú Lộc-Huế-Việt Nam', 13, 6, N'Vũ Nguyên Vũ', N'PhạmNguyễn Mai Vàng ', N'Bác sĩ', N'0746764873', N'https://fas.locala/rsvwf/aiwrr/aelvc/kdxwz/cybq.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (424, N'Danh ', N'Nguyễn Bảo', 0, CAST(N'2004-03-26T16:46:37.580' AS DateTime), N'Đắk Nông-Việt Nam', N'70-Phú Lộc-Huế-Việt Nam', 27, 6, N'Dương Văn Hoài', N'Võ Anh Ân ', N'Lễ tân', N'766-4143937', N'http://tdhdv.web3/miwsf/hag.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (425, N'Chi ', N'Lê Bảo', 1, CAST(N'2004-07-13T08:06:03.020' AS DateTime), N'Hải Phòng-Việt Nam', N'42--Huế-Việt Nam', 44, 4, N'Trần Bảo Lê', N'Huỳnh Thanh Hoài ', N'Đầu bếp', N'010-6307239', N'https://jut.net44/lydtb/nihbi/kqmkt/ibexf.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (426, N'Sáu ', N'Nguyễn Thị', 1, CAST(N'2005-10-22T01:04:23.500' AS DateTime), N'Bắc Kạn-Việt Nam', N'270-Bình Điền-Huế-Việt Nam', 12, 5, N'Lý Bảo Hiệu', N'Hồ Hồng Ân ', N'Lễ tân', N'906-406-8268', N'https://cvzcw.netb/lurmx/lqbkc.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (427, N'Thường ', N'Huỳnh Thị', 1, CAST(N'2003-10-22T09:04:54.900' AS DateTime), N'Huế-Việt Nam', N'896-Hương Thủy-Huế-Việt Nam', 31, 3, N'Dương Hữu Vàng', N'Lý Mai Ngân ', N'Dược sĩ', N'738-3843506', N'http://hbgg.net/msjef/zjt.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (428, N'Hai ', N'Đặng Bảo', 1, CAST(N'2003-06-11T14:41:23.120' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'38-Hương Thủy-Huế-Việt Nam', 38, 2, N'Trần Hoàng Văn Hoài', N'Hồ Thanh Ân ', N'Thợ điện', N'185220-0477', N'https://krpgv.local/wqopj/uifqp.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (429, N'BA ', N'Dương Văn', 0, CAST(N'2005-03-12T21:03:16.520' AS DateTime), N'Bạc Liêu-Việt Nam', N'828-Phong Điền-Huế-Việt Nam', 46, 4, N'Vũ Thế Huy', N'PhạmNguyễn Hồng Trúc ', N'Thợ Xây', N'472-431-0698', N'http://oxg.localb35/krzty/zvlwt/qnxol/fsjlv/xov.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (430, N'Thư ', N'Đỗ Văn', 0, CAST(N'2005-10-07T09:54:26.580' AS DateTime), N'Bình Phước-Việt Nam', N'9-Hương Thủy-Huế-Việt Nam', 2, 6, N'Phạm Anh Đức', N'Ngô Mai Huy ', N'Thợ nước', N'899-0765259', N'https://lbi.local8/fpgtw/hpffm/ajn.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (431, N'Khôi ', N'Phạm Anh', 0, CAST(N'2005-08-09T23:14:59.200' AS DateTime), N'Bình Định-Việt Nam', N'44-A Lưới-Huế-Việt Nam', 49, 4, N'Phạm Đặng Thái', N'Phan Mai Huy ', N'Dược sĩ', N'806635-8743', N'https://hvj.nety/hxont/czdcs/xqypo/ulsv.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (432, N'Huy ', N'Trần Hữu Đặng', 1, CAST(N'2004-09-24T06:10:37.910' AS DateTime), N'Bắc Giang-Việt Nam', N'833-Phong Điền-Huế-Việt Nam', 49, 5, N'Phan Đăng Bảo Lê', N'Ngô Bảo Vàng ', N'Buôn bán', N'632-045-7156', N'http://ntxq.netz1/rstbx/jkgxj/larpy/zlroy/bfiuu.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (433, N'Trúc ', N'Hồ Nguyên', 1, CAST(N'2004-04-10T16:05:55.410' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'586-Nam Đông-Huế-Việt Nam', 3, 7, N'Ngô Đức Hiệu', N'Hồ Hồng Tranh ', N'Điều dưỡng', N'171-0905497', N'http://qgx.local/mvtrd/lqqsa/eoac.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (434, N'Đăng ', N'Trần Hữu Nguyên', 1, CAST(N'2004-02-13T15:26:25.850' AS DateTime), N'Quãng Nam-Việt Nam', N'90-Phong Điền-Huế-Việt Nam', 50, 6, NULL, N'Đặng Thế Hiệu ', N'Ca sĩ', N'322104-3521', N'https://sbo.net6/cvzfl/zvuhb/tsec.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (435, N'Thiện ', N'Đặng Mai', 1, CAST(N'2005-11-09T18:54:38.880' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'4-Hương Trà-Huế-Việt Nam', 53, 3, N'Đặng Đức Lê', N'Phan Anh Quỳnh ', N'Nông dân', N'5780536346', N'https://cguc.web/gggnb/nvtvb/peill/yikm.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (436, N'Tứ ', N'Lý Đặng', 0, CAST(N'2003-09-02T15:57:44.770' AS DateTime), N'Tp.HCM-Việt Nam', N'637-Hương Thủy-Huế-Việt Nam', 1, 7, N'Phạm Nguyên Vàng', N'Phan Đặng Ân ', N'Thợ mộc', N'658580-1373', N'http://lyhsw.net0/bolme/jwyam/mrqfw.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (437, N'Nghị ', N'Nguyễn Hồng', 0, CAST(N'2004-05-05T01:36:56.030' AS DateTime), N'Bến Tre-Việt Nam', N'6-Hương Trà-Huế-Việt Nam', 32, 5, N'Đỗ Hữu Thái', N'Trần Thị Ngân ', N'Thợ điện', N'578-759-7864', N'https://lvl.netg83/oqukx/mebcy/bzwvb/gtlnu.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (438, N'Anh ', N'Vũ Nguyên', 0, CAST(N'2005-12-22T16:42:05.000' AS DateTime), N'Bình Phước-Việt Nam', N'53-Hương Thủy-Huế-Việt Nam', 51, 5, N'Phan Đăng Thế Thương', N'Lý Thanh Quỳnh ', N'Công An', N'858-8736749', N'http://vdygn.net/sgtdk/mrn.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (439, N'Khoa ', N'Huỳnh Anh', 0, CAST(N'2004-08-31T05:49:36.370' AS DateTime), N'Hà Giang-Việt Nam', N'9-Phong Điền-Huế-Việt Nam', 43, 2, N'Phan Đăng Anh Đức', N'Bùi Hồng Ngân ', N'Bác sĩ', N'679-8490543', N'http://mlaq.web/seugi/upkze/lcvmd/radoy/frn.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (440, N'Đệ ', N'Huỳnh Nguyên', 1, CAST(N'2004-12-06T17:18:43.620' AS DateTime), N'Bắc Kạn-Việt Nam', N'60-Hương Thủy-Huế-Việt Nam', 45, 4, N'Lý Hữu Thái', N'Đỗ Mai Thương ', N'Thợ điện', N'625653-8317', N'https://wdxp.localz/rbcif/aifez/bzsdg/brsps/cbc.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (441, N'Hoàng ', N'Vũ Anh', 0, CAST(N'2003-01-13T18:12:24.110' AS DateTime), N'Bình Định-Việt Nam', N'517-Hương Thủy-Huế-Việt Nam', 35, 2, N'Phan Nguyên Thái', N'Đỗ Thanh  ', N'Thợ nước', N'010-0924511', N'http://mgh.webb5/qfzsm/bxwwv/vjvci/gemef.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (442, N'Hoàng ', N'Nguyễn Hoàng Thị', 1, CAST(N'2004-10-22T12:36:29.140' AS DateTime), N'Bắc Giang-Việt Nam', N'9-Bình Điền-Huế-Việt Nam', 45, 4, N'Phạm Đặng Thương', N'Huỳnh Mai Huy ', N'Thợ điện', N'220-4151478', N'https://ayq.net6/npamn/fzgxq/xhhsi/hclzn.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (443, N'Nhị ', N'Phạm Bảo', 1, CAST(N'2003-01-28T16:45:24.300' AS DateTime), N'Quãng Nam-Việt Nam', N'2--Huế-Việt Nam', 35, 6, N'Phạm Đức Thương', N'Đỗ Hồng Hoài ', N'Bác sĩ', N'422-851-7962', N'https://dhff.webk34/sdhfz/aidqj/iiiip/cztz.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (444, N'Lục ', N'Hồ Đức', 1, CAST(N'2003-10-09T07:09:14.240' AS DateTime), N'Bình Định-Việt Nam', N'18-A Lưới-Huế-Việt Nam', 4, 3, N'Phạm Nguyền Đặng Thái', N'Huỳnh Thế Trúc ', N'Hưu trí', N'0315318616', N'https://ask.web/speug/xalkm.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (445, N'Sáu ', N'Vũ Thanh', 1, CAST(N'2003-02-08T09:59:29.650' AS DateTime), N'Quãng Ngãi-Việt Nam', N'80-Phong Điền-Huế-Việt Nam', 23, 4, N'Võ Văn Lê', N'PhạmNguyễn Anh Yến ', N'Lễ tân', N'614-1387063', N'http://vxb.local3/gjmyw/hoqp.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (446, N'Báo ', N'Đặng Hữu', 0, CAST(N'2004-01-16T15:07:11.730' AS DateTime), N'Bến Tre-Việt Nam', N'54--Huế-Việt Nam', 43, 7, N'Trần Hữu Hữu Ngọc', N'Lê Hồng Thương ', N'Nông dân', N'552-7271165', N'https://eoj.netz53/dxnyv/javwx/ubbkd/wirgc/njg.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (447, N'Thế ', N'Phan Thế', 1, CAST(N'2005-06-08T19:54:45.340' AS DateTime), N'Hà Nội-Việt Nam', N'696-Phú Lộc-Huế-Việt Nam', 27, 6, N'Hồ Nguyên Vũ', N'Bùi Thế Vàng ', N'Công nhân', N'244543-7417', N'http://ewjz.local37/ouwhc/ldpes/rvwuv/myeq.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (448, N'Nguyên ', N'Huỳnh Nguyên', 1, CAST(N'2003-12-25T20:00:53.060' AS DateTime), N'Gia Lai-Việt Nam', N'8-A Lưới-Huế-Việt Nam', 10, 6, N'Ngô Anh Hiệu', N'Huỳnh Thanh Ngân ', N'Dược sĩ', N'467-338-3380', N'https://cuhbh.localk14/kuvbu/mhrey/hxgna/odf.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (449, N'Hai ', N'Ngô Đức', 0, CAST(N'2003-12-24T08:18:59.570' AS DateTime), N'Quãng Nam-Việt Nam', N'602-Bình Điền-Huế-Việt Nam', 4, 7, N'Vũ Nguyên Thương', N'Vũ Thanh Thương ', N'Thợ mộc', N'063269-0116', N'https://bhkod.net5/scdwv/tlqjx/wxxcf/dfj.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (450, N'Báo ', N'Đặng Anh', 0, CAST(N'2004-02-12T18:42:18.540' AS DateTime), N'Bình Định-Việt Nam', N'41-A Lưới-Huế-Việt Nam', 45, 7, N'Bùi Nguyên Vũ', N'Huỳnh Hồng Thương ', N'Bác sĩ', N'300-533-9527', N'https://max.webm6/okxas/mpe.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (451, N'Bảy ', N'Dương Thanh', 1, CAST(N'2003-04-13T17:23:54.250' AS DateTime), N'Hải Phòng-Việt Nam', N'67-Nam Đông-Huế-Việt Nam', 29, 5, N'Võ Đức Vũ', N'Dương Thị Huy ', N'Hưu trí', N'252-1158645', N'http://nqglm.nete/djvio/dvhda/nfef.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (452, N'Nguyên ', N'Vũ Mai', 1, CAST(N'2004-08-02T13:18:59.620' AS DateTime), N'Quãng Nam-Việt Nam', N'683-Phong Điền-Huế-Việt Nam', 31, 2, N'Huỳnh Hữu Huy', N'Ngô Thế Vàng ', N'Ca sĩ', N'111228-6316', N'https://uvv.webh/afsev/uqwox/azxem.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (453, N'Khoa ', N'Hồ Mai', 1, CAST(N'2005-06-06T16:23:03.260' AS DateTime), N'Hà Giang-Việt Nam', N'9-Nam Đông-Huế-Việt Nam', 16, 4, N'Dương Anh Lê', N'Bùi Thanh Ngân ', N'Lễ tân', N'732481-2537', N'https://hhflw.local13/rdubk/nolni/uouvy/zzfkt/agh.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (454, N'Tạ ', N'Đỗ Thanh', 1, CAST(N'2004-08-03T13:03:57.230' AS DateTime), N'Bắc Ninh-Việt Nam', N'38-Phong Điền-Huế-Việt Nam', 16, 2, N'Phan Đăng Văn Vũ', N'Lê Đặng Lê ', N'Buôn bán', N'888-736-9796', N'http://mnmg.net87/evtzn/idujd/clhj.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (455, N'Long ', N'Hoàng Mai', 1, CAST(N'2004-03-12T04:33:57.810' AS DateTime), N'Hà Nội-Việt Nam', N'45-Hương Thủy-Huế-Việt Nam', 24, 1, N'Hoàng Anh Vàng', N'Vũ Hồng Ân ', N'Giáo viên', N'7994373090', N'http://opfyb.localo/chjfa/atmp.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (456, N'Long ', N'Đỗ Anh', 1, CAST(N'2003-02-24T06:03:13.170' AS DateTime), N'Bà Rịa - Vũng Tàu-Việt Nam', N'433--Huế-Việt Nam', 41, 7, N'Vũ Bảo Huy', N'Dương Bảo Hoài ', N'Thợ Xây', N'791-8403721', N'https://cjek.localn76/ywrej/jgdhv/wksji/npurw/qts.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (457, N'Lê ', N'Lê Đặng', 0, CAST(N'2004-08-30T00:07:19.930' AS DateTime), N'Bình ThuậnvCà Mau-Việt Nam', N'3-Hương Trà-Huế-Việt Nam', 46, 7, N'Bùi Bảo Duy', N'Vũ Hồng Trúc ', N'Giáo viên', N'794-257-5083', N'http://irhb.web5/polvn/okpdt/cmjhz/npjqw/ydrv.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (458, N'Hữu ', N'Hoàng Thế', 1, CAST(N'2003-07-29T08:41:42.790' AS DateTime), N'Bình Dương-Việt Nam', N'63--Huế-Việt Nam', 19, 6, N'Phan Đăng Hữu Hoài', N'Bùi Thị Ngân ', N'Đầu bếp', N'735064-2903', N'https://ulbag.webe2/guepv/utjan/yrwxj/sbqd.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (459, N'Nguyên ', N'Võ Thế', 1, CAST(N'2004-01-02T01:27:58.100' AS DateTime), N'Gia Lai-Việt Nam', N'990-Phú Lộc-Huế-Việt Nam', 11, 6, N'Ngô Đặng Thương', N'Vũ Mai  ', N'Thợ Xây', N'715-356-1190', N'https://ldbyu.webb6/ovdnf/tyyb.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (460, N'Bảo ', N'Đặng Hữu', 0, CAST(N'2004-08-02T05:28:24.150' AS DateTime), N'Huế-Việt Nam', N'380-Bình Điền-Huế-Việt Nam', 54, 4, N'Hoàng Anh Huy', N'Bùi Thế Ân ', N'Lễ tân', N'766-915-1543', N'http://uznhn.web5/tvoze/lbbdv/onklg/cko.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (461, N'Lực ', N'Hoàng Anh', 1, CAST(N'2004-12-03T18:50:53.560' AS DateTime), N'Đắk Lắk-Việt Nam', N'6-Bình Điền-Huế-Việt Nam', 53, 1, N'Trần Đặng Hiệu', N'Phan Mai  ', N'Công nhân', N'254344-1724', N'https://bwtan.webz5/cutwq/gbzj.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (462, N'Mai ', N'Võ Thế', 1, CAST(N'2003-06-26T13:09:05.970' AS DateTime), N'Bình Định-Việt Nam', N'35-Bình Điền-Huế-Việt Nam', 13, 5, N'Trần Hoàng Anh Đức', N'Võ Hồng Trúc ', N'Thợ Xây', N'863-6265519', N'https://rorlz.localb8/kobuv/zszjl/gubls/sxzxv.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (463, N'Đức ', N'Trần Hoàng Thanh', 1, CAST(N'2005-06-07T05:48:30.050' AS DateTime), N'Cao Bằng-Việt Nam', N'2-A Lưới-Huế-Việt Nam', 29, 4, N'Ngô Văn Lê', N'Đặng Mai Ngọc ', N'Hưu trí', N'812670-2222', N'https://mpuj.net5/fgdez/dicqf/xoine/imsqd/rjyqv.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (464, N'Lục ', N'Phạm Bảo', 1, CAST(N'2004-07-12T10:30:39.640' AS DateTime), N'Bến Tre-Việt Nam', N'9-Hương Trà-Huế-Việt Nam', 24, 3, N'Trần Anh Lê', N'Đỗ Đặng Quỳnh ', N'Nông dân', N'181513-0875', N'https://odg.net9/niaih/fba.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (465, N'Khôi ', N'Phan Thị', 0, CAST(N'2005-03-13T20:44:41.110' AS DateTime), N'Bắc Kạn-Việt Nam', N'5-Hương Trà-Huế-Việt Nam', 34, 2, N'Dương Anh Huy', N'Hồ Hồng Thương ', N'Hưu trí', N'734944-0503', N'http://sfodv.net45/nqthw/qljse/czjrs.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (466, N'Đệ ', N'Hoàng Văn', 0, CAST(N'2003-11-18T10:44:40.400' AS DateTime), N'Bình Dương-Việt Nam', N'63-Hương Trà-Huế-Việt Nam', 7, 3, N'Võ Đức Đức', N'Lý Thế Vàng ', N'Nhạc sĩ', N'404-642-6719', N'https://mmv.local0/whauy/ryyek/pwaah/wcyjx/rpb.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (467, N'Đệ ', N'Huỳnh Thanh', 0, CAST(N'2004-05-14T01:52:42.270' AS DateTime), N'Đắk Nông-Việt Nam', N'75-A Lưới-Huế-Việt Nam', 25, 6, N'Hoàng Thế Thương', N'Hồ Hồng Ân ', N'Thợ điện', N'705-9757368', N'https://nopd.nete1/tujjv/quyli/yjmji/jtxci/vll.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (468, N'Vàng ', N'Trần Hữu Anh', 0, CAST(N'2004-03-20T12:19:46.340' AS DateTime), N'Đắk Nông-Việt Nam', N'657-Hương Trà-Huế-Việt Nam', 32, 7, N'Đỗ Văn Thương', N'Hoàng Thế Thư ', N'Hưu trí', N'910-934-3024', N'https://twr.neto3/lzxee/ruba.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (469, N'Ngọc ', N'Phan Đặng', 0, CAST(N'2004-11-10T08:03:55.900' AS DateTime), N'Đà Nẵng-Việt Nam', N'26-Bình Điền-Huế-Việt Nam', 1, 4, N'Trần Hoàng Đức Thương', N'Phan Anh Thư ', N'Đầu bếp', N'135008-7557', N'http://lvq.net3/ebrmo/dxvzf/ixfen/uqhp.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (470, N'Huỳnh ', N'Nguyễn Mai', 0, CAST(N'2003-03-14T19:30:47.770' AS DateTime), N'Gia Lai-Việt Nam', N'24-Bình Điền-Huế-Việt Nam', 36, 4, N'Võ Hữu Chi', N'Huỳnh Mai Chi ', N'Hưu trí', N'2745793616', N'http://gppcv.local18/rudrd/wfdcx.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (471, N'Hữu ', N'Lý Văn', 1, CAST(N'2005-11-09T01:12:15.030' AS DateTime), N'Gia Lai-Việt Nam', N'7-Hương Trà-Huế-Việt Nam', 48, 6, N'Nguyễn Đức Thái', N'PhạmNguyễn Thế Lê ', N'Thợ điện', N'841-3809261', N'http://botao.webk95/esjfc/rwsq.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (472, N'Duy ', N'Bùi Hồng', 1, CAST(N'2003-08-09T17:56:33.690' AS DateTime), N'Bình Định-Việt Nam', N'28-Nam Đông-Huế-Việt Nam', 14, 5, N'Trần Bảo Vũ', N'Hồ Thế  ', N'Thợ Xây', N'486664-4386', N'http://ddxd.localv/ncgte/mfeie/nux.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (473, N'Hiền ', N'Vũ Văn', 0, CAST(N'2003-07-07T09:45:06.000' AS DateTime), N'Gia Lai-Việt Nam', N'183-Phong Điền-Huế-Việt Nam', 26, 2, N'Đặng Văn Lê', N'Hồ Thế  ', N'Điều dưỡng', N'391232-3671', N'http://hjyu.localy41/ziltv/wrmpf/uvglq/gxffj/asfc.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (474, N'Báo ', N'Võ Đức', 0, CAST(N'2005-09-09T12:01:40.250' AS DateTime), N'Bình Định-Việt Nam', N'36-Nam Đông-Huế-Việt Nam', 48, 4, N'Đặng Hữu Hoài', N'Lê Anh Tranh ', N'Điều dưỡng', N'218491-1000', N'https://jzw.net79/idsen/bxnoj.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (475, N'Hữu ', N'Ngô Thế', 0, CAST(N'2004-10-15T07:56:10.250' AS DateTime), N'Đà Nẵng-Việt Nam', N'62-Hương Thủy-Huế-Việt Nam', 9, 5, N'Vũ Đức Duy', N'Dương Bảo Hiệu ', N'Nhạc sĩ', N'0049071628', N'http://uybtc.local/wlxmj/xemzw/rgmse.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (476, N'Pháp ', N'Huỳnh Đức', 1, CAST(N'2003-07-15T23:55:52.190' AS DateTime), N'Bình Dương-Việt Nam', N'4-Hương Thủy-Huế-Việt Nam', 22, 6, N'Lê Đặng Lê', N'PhạmNguyễn Đặng Tranh ', N'Nhân viên văn phòng', N'992348-4779', N'http://klpt.net08/mpvib/pnire.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (477, N'Sáu ', N'Lê Hồng', 0, CAST(N'2005-03-16T02:32:03.200' AS DateTime), N'Bạc Liêu-Việt Nam', N'17-Phú Lộc-Huế-Việt Nam', 45, 4, N'Phan Nguyên Ân', N'Bùi Hồng Quỳnh ', N'Dược sĩ', N'231329-1396', N'http://shvgk.local0/wdxmy/ipvjl/xlppr/ufb.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (478, N'Lục ', N'Trần Hoàng Anh', 0, CAST(N'2003-12-01T21:51:45.570' AS DateTime), N'Bình Dương-Việt Nam', N'353-Bình Điền-Huế-Việt Nam', 9, 4, N'Nguyễn Văn Hoài', N'Dương Đặng Quỳnh ', N'Ca sĩ', N'862273-5124', N'https://qkt.neto/yfzrb/uvvow/lxvvd.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (479, N'Mười ', N'Bùi Thế', 0, CAST(N'2004-02-17T06:47:07.930' AS DateTime), N'Bình Phước-Việt Nam', N'595--Huế-Việt Nam', 4, 3, N'Phan Đăng Bảo Hiệu', N'Võ Hồng Yến ', N'Buôn bán', N'2377477922', N'https://giqqb.local93/ylzfp/qpakf/qofnx/brhfd/ojpg.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (480, N'Nghị ', N'Phan Thị', 1, CAST(N'2003-06-28T16:58:51.290' AS DateTime), N'Đắk Nông-Việt Nam', N'250-A Lưới-Huế-Việt Nam', 1, 5, N'Phạm Văn Huy', N'Trần Mai Trúc ', N'Công An', N'952741-5909', N'https://lik.net/fgahw/zzmpa/iiofs.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (481, N'Quân ', N'Nguyễn Hoàng Văn', 1, CAST(N'2003-05-16T05:09:38.160' AS DateTime), N'Bắc Giang-Việt Nam', N'417-Phong Điền-Huế-Việt Nam', 40, 7, N'Đỗ Nguyên Thái', N'Vũ Thanh Trúc ', N'Điều dưỡng', N'295-750-4940', N'http://ghku.netu22/hjwkg/hmpjd/ujpct/qrmyz/wgx.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (482, N'Nguyên ', N'Trần Hữu Văn', 1, CAST(N'2005-10-27T13:04:01.850' AS DateTime), N'Đà Nẵng-Việt Nam', N'5-Phong Điền-Huế-Việt Nam', 22, 4, N'Nguyễn Đặng Hiệu', N'Lê Hồng Yến ', N'Nhân viên văn phòng', N'341-0837171', N'http://sgk.net/zuayb/euzax/obpod/jyoz.bmp', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (483, N'Thị ', N'Phan Bảo', 0, CAST(N'2005-06-18T06:22:23.550' AS DateTime), N'Bạc Liêu-Việt Nam', N'61-Bình Điền-Huế-Việt Nam', 35, 2, N'Võ Đặng Lê', N'Lê Thế Vàng ', N'Cán bộ', N'838-7483473', N'https://xqwfj.net5/qowct/gxmpc/rwhpp/pztdu/gioqp.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (484, N'Mười ', N'Bùi Đức', 1, CAST(N'2004-01-30T02:20:57.980' AS DateTime), N'Đồng Tháp-Việt Nam', N'853-A Lưới-Huế-Việt Nam', 2, 5, N'Đặng Bảo Chi', N'Lê Hồng Thư ', N'Nhạc sĩ', N'801077-3554', N'http://wsx.neth47/ovzej/vacag/ntsvk/qifnd/zyr.doc', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (485, N'Ân ', N'Hồ Đặng', 0, CAST(N'2005-06-26T16:30:32.330' AS DateTime), N'Bắc Kạn-Việt Nam', N'727-Phú Lộc-Huế-Việt Nam', 27, 1, N'Trần Hoàng Đặng Hiệu', N'Đặng Bảo Tranh ', N'Thợ mộc', N'6790008612', N'http://cgqs.webh15/zzqpj/tmu.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (486, N'Phi ', N'Đặng Hữu', 0, CAST(N'2004-01-08T09:55:59.570' AS DateTime), N'Bắc Giang-Việt Nam', N'551-Phú Lộc-Huế-Việt Nam', 18, 3, N'Trần Hữu Đặng Chi', N'PhạmNguyễn Anh Hiệu ', N'Ca sĩ', N'6006091550', N'http://far.webk6/xzlvm/nghcn/nde.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (487, N'Nin ', N'Bùi Đặng', 0, CAST(N'2005-04-19T13:47:34.660' AS DateTime), N'Bắc Kạn-Việt Nam', N'1-Hương Trà-Huế-Việt Nam', 33, 2, N'Phạm Nguyền Thế Lê', N'Đỗ Thị Ngọc ', N'Cán bộ', N'283-6587033', N'https://kvo.webw2/zuddp/brdoi/yorz.xls', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (488, N'Hồng ', N'Phan Thị', 1, CAST(N'2005-09-07T03:01:58.190' AS DateTime), N'Đồng Nai-Việt Nam', N'32-Nam Đông-Huế-Việt Nam', 41, 5, N'Đặng Bảo Thương', N'Hoàng Bảo Lê ', N'Điều dưỡng', N'454-255-5823', N'http://navv.netw87/gslgn/kigcn/anbxa.txt', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (489, N'Nguyên ', N'Huỳnh Đức', 1, CAST(N'2005-12-03T10:52:28.050' AS DateTime), N'Tp.HCM-Việt Nam', N'387-Phú Lộc-Huế-Việt Nam', 26, 5, N'Phạm Nguyền Thế Vàng', N'Đỗ Thanh Hoài ', N'Hưu trí', N'4509260249', N'http://eudc.web8/gwogc/nhezv/flm.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (490, N'Lục ', N'Trần Thị', 1, CAST(N'2005-09-16T12:51:25.710' AS DateTime), N'Huế-Việt Nam', N'21--Huế-Việt Nam', 12, 3, N'Bùi Đức Thái', N'Huỳnh Thanh Quỳnh ', N'Thợ Xây', N'675-505-7296', N'https://fyeko.webm3/jooev/rukjk/ggteo/podor/xwi.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (491, N'Ân ', N'Đỗ Mai', 1, CAST(N'2005-01-02T15:50:24.840' AS DateTime), N'Bến Tre-Việt Nam', N'7-Hương Thủy-Huế-Việt Nam', 10, 1, N'Đỗ Hữu Đức', N'PhạmNguyễn Thanh Chi ', N'Công An', N'725-204-1864', N'http://ceeq.netk68/qvnmd/gaxwt.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (492, N'Lê ', N'Dương Thanh', 1, CAST(N'2003-10-08T16:55:13.230' AS DateTime), N'Đồng Tháp-Việt Nam', N'3-Phong Điền-Huế-Việt Nam', 13, 7, N'Trần Hoàng Nguyên Thương', N'Hoàng Hồng Tranh ', N'Đầu bếp', N'006-821-4073', N'http://wth.locale/goqpl/obt.php', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (493, N'Lệ ', N'Trần Hoàng Bảo', 1, CAST(N'2004-12-21T15:14:06.900' AS DateTime), N'Cao Bằng-Việt Nam', N'54-Hương Trà-Huế-Việt Nam', 41, 6, N'Phan Đăng Đức Huy', N'Vũ Thanh Thương ', N'Đầu bếp', N'620-8636344', N'http://vhl.localh72/fvlrt/otivp/xnsvg/vaxh.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (494, N'Huy ', N'Huỳnh Mai', 0, CAST(N'2003-01-30T00:21:12.220' AS DateTime), N'Gia Lai-Việt Nam', N'876--Huế-Việt Nam', 43, 6, N'Nguyễn Anh Lê', N'Dương Thị Tranh ', N'Công An', N'741668-5021', N'http://vfgw.neta/uacvk/xucga.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (495, N'Đức ', N'Nguyễn Đức', 0, CAST(N'2003-01-03T22:27:50.050' AS DateTime), N'Bình Phước-Việt Nam', N'2-Phú Lộc-Huế-Việt Nam', 47, 4, N'Trần Thế Vũ', N'Đỗ Anh Thư ', N'Nông dân', N'2208854709', N'http://lujkk.local/xlhwr/plzcy/eokva/tuli.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (496, N'Trâm ', N'Lý Bảo', 1, CAST(N'2005-07-20T05:03:18.140' AS DateTime), N'Huế-Việt Nam', N'81-Hương Thủy-Huế-Việt Nam', 22, 5, N'Hồ Hữu Hoài', N'Lý Anh Hiệu ', N'Hưu trí', N'577-9919351', N'https://wtpk.webv9/wackr/odkr.ini', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (497, N'Thá ', N'Nguyễn Hoàng Anh', 1, CAST(N'2005-05-17T06:47:59.100' AS DateTime), N'Bình Phước-Việt Nam', N'6-Hương Thủy-Huế-Việt Nam', 16, 1, N'Đỗ Anh Hiệu', N'Vũ Mai Tranh ', N'Thợ Xây', N'732-3279957', N'https://prkep.local3/zzatq/fhqlz/ljdwu/otg.pdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (498, N'Thư ', N'Nguyễn Hoàng Đức', 0, CAST(N'2004-07-18T06:14:44.670' AS DateTime), N'Đắk Lắk-Việt Nam', N'75-Phong Điền-Huế-Việt Nam', 12, 4, N'Lê Thế Duy', N'Phan Thanh Lê ', N'Hưu trí', N'9697393127', N'https://obq.localj5/kroum/liepp/zum.asm', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (499, N'BA ', N'Trần Anh', 1, CAST(N'2004-07-27T10:24:33.130' AS DateTime), N'Quãng Ngãi-Việt Nam', N'1--Huế-Việt Nam', 24, 1, N'Vũ Văn Vũ', N'Hồ Đặng Ân ', N'Buôn bán', N'524-045-3022', N'https://urpa.netf4/gxlkf/mizkh/xtzfw/vnioz/xrj.xls', 0)
GO
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (500, N'Hoài ', N'Lý Thanh', 1, CAST(N'2005-03-22T23:14:49.250' AS DateTime), N'Bình Dương-Việt Nam', N'68-Hương Thủy-Huế-Việt Nam', 17, 2, N'Đặng Văn Hiệu', N'Phan Mai Ngân ', N'Thợ mộc', N'0333463434', N'http://xvgg.local37/nuemj/hlz.xls', 0)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (1, N'Toán', 2)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (2, N'Văn', 2)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (3, N'Anh', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (4, N'Lý', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (5, N'Hóa', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (6, N'Sinh', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (7, N'Sử', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (8, N'Địa', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (13, N'GDCD', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (14, N'Công Nghệ', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (15, N'Tin Học', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (16, N'Ngoại Ngữ ', 1)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[SubjectResult] ON 

INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2902, 20, 1, 1, N'7.9,9,10,10,8,8.6,8.6,9.6,8.6,7.9,10,8.98', N'2020-08-14,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-17,2020-08-14,2020-08-13,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2903, 20, 1, 2, N'10,10,9,7,8,8,5.6,7,8,9,6,7.77', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2904, 20, 1, 3, N'9,8,5,7,8,8,6,9,7,8,8.6,7.72', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2905, 20, 1, 4, N'8,8.5,6,8.9,9,9,8.9,7,9.5, ,6.8,8.05', N'2020-08-14,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2906, 20, 1, 5, N'10,9,10,10,8,8,8,9,10,7,9,8.87', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2907, 20, 1, 6, N'7,9,10,10,8,8,8,9,10,7,6,8.07', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2908, 20, 1, 7, N'8,8.5,6,8.9,9,9,8.9,7,9.5,5.6,6.8,7.73', N'2020-08-14,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2909, 20, 1, 8, N'10,9,9,9,8,8,8.9,8,9,8,9,8.73', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-13,2020-08-13,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2910, 20, 1, 9, N'10,9,9,9,8,8,8,9,9,7,8,8.4', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2911, 20, 1, 10, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5, ,6.8,8', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2912, 20, 1, 11, N'9,9,9,8,6,6,8,9,10,7,9,8.33', N'2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2913, 20, 1, 12, N'10,9,10,8,8.6,8,8,9,10,7,9,8.77', N'2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-14,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2915, 20, 2, 1, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5,9,6.8,8.11', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2916, 20, 2, 2, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5,9,6.8,8.11', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2917, 20, 2, 3, N'10,9,10,10,8,8,8,9,10,7,9,8.87', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2918, 20, 2, 4, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5,9,6.8,8.11', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2919, 20, 2, 5, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5,9,6.8,8.11', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2920, 20, 2, 6, N'6.9,8.5,7.9,6.9,9.5,6,8.9,9.6,9.5,8,9,8.41', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2921, 20, 2, 7, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5,9,6.8,8.11', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2922, 20, 2, 8, N'10,9,10,10,8,8,8,9,10,7,9,8.87', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2923, 20, 2, 9, N'6.9,8.5,7.9,6.9,9.5,6,8.9,9.6,9.5,8,9,8.41', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2924, 20, 2, 10, N'6.9,8.5,7.9,6.9,9.5,9,8.9,9.6,9.5,8,9,8.61', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-13,2020-08-13,2020-08-13,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2925, 20, 2, 11, N'10,9,10,10,8,8,8,9,10,7,9,8.87', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2926, 20, 2, 12, N'10,9,10,10,8,8,8,9,10,7,9,8.87', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2928, 21, 1, 1, N'10,9,10,10,8,8,8,9,10,7,9,8.87', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2931, 21, 1, 2, N'6.9,8.5,7.9,8.9,9.5,9,6.9,6.9,9.5,6.9,9.9,8.47', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2932, 21, 1, 3, N'8.6,8.9,8.9,9.6,7.8,8.9,9.6,9,5.6,6,9.6,8.22', N'2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2933, 21, 1, 4, N'6.9,8.5,7.9,8.9,9.5,9,6.9,6.9,9.5, ,9,8.5', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2934, 21, 1, 5, N'6.9,8.5,7.9,8.9,9.5,9,6.9,6.9,9.5,6.9,9.9,8.47', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2935, 21, 1, 6, N'6.9,8.5,6,8.9,9,9,8.9,7,9.5, ,9,8.48', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2936, 21, 1, 7, N'6.9,8.5,7.9,8.9,9.5,9,6.9,6.9,9.5, ,6.8,7.99', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2937, 21, 1, 8, N'6.9,8.5,7.9,8.9,9.5,9,8.9,6.9,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2938, 21, 1, 9, N'6.9,8.5,7.9,8.9,9.5,9,6.9,6.9,9.5, ,6.8,7.99', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2939, 21, 1, 10, N'6.9,8.5,7.9,8.9,9.5,9,8.9,6.9,9.5, ,9,8.65', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2940, 21, 1, 11, N'6.9,8.5,7.9,8.9,9.5,9,6.9,6.9,9.5, ,6.8,7.99', N'2020-08-13, , , , , , , , ,2020-08-15, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2941, 21, 1, 12, N'6.9,8.5,7.9,8.9,9.5,9,6.9,6.9,9.5, ,6.8,7.99', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2943, 21, 2, 1, N'6.5,8.5,7.5,6.9,9.5,6,9,9.6,9, ,9,9', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2944, 21, 2, 2, N'6.9,8.5,7.9,8.9,9.5,9,6.9,6.9,9.5, ,6.8,7.99', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2945, 21, 2, 3, N'6.9,8.5,7.9,8.9,9.5,9,6.9,6.9,9.5, ,6.8,7.99', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2946, 21, 2, 4, N'6.5,8.5,7.5,6.9,9.5,6,9,9.6,9, ,9,9', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2947, 21, 2, 5, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2948, 21, 2, 6, N'6.9,8.5,7.9,8.6,9.5,9,7,6.9,9.5, ,10,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2949, 21, 2, 7, N'6.5,8.5,7.5,6.9,9.5,6,9,9.6,9, ,9,9', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2950, 21, 2, 8, N'6.9,8.5,7.9,8.6,9.5,9,7,6.9,9.5, ,10,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2951, 21, 2, 9, N'6.5,8.5,7.5,6.9,9.5,6,9,9.6,9, ,9,9', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2952, 21, 2, 10, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2953, 21, 2, 11, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2954, 21, 2, 12, N'6.9,8.5,7.9,8.6,9.5,9,7,6.9,9.5, ,8,8.25', N'2020-08-13, , , , , , , , , ,2020-08-16', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2956, 22, 1, 1, N'9.5,9,7,6,7,6,7,10,7,4,10,7.57', N'2020-08-13,2020-08-16,2020-08-15,2020-08-16,2020-08-16,2020-08-16,2020-08-15,2020-08-16,2020-08-16,2020-08-15,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2957, 22, 1, 2, N'10,8.5,7.9,8.9,9.5,5.6,8.9,6.9,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2958, 22, 1, 3, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2959, 22, 1, 4, N'8.9, , , , , , , , , ,5,5.97', N'2020-08-13, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2960, 22, 1, 5, N'10,8.5,7.9,8.9,9.5,5.6,8.9,6.9,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2961, 22, 1, 6, N'8.9, , , , , , , , , , ,8.9', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2962, 22, 1, 7, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2963, 22, 1, 8, N'8.9, , , , , , , , , , ,8.9', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2964, 22, 1, 9, N'10,8.5,7.9,8.9,9.5,5.6,8.9,6.9,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2965, 22, 1, 10, N'8.9, , , , , , , , , , ,8.9', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2966, 22, 1, 11, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5,7,9,8.29', N'2020-08-13, , , , , , , , ,2020-08-15, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2967, 22, 1, 12, N'10,8.5,7.9,8.9,9.5,5.6,8.9,6.9,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2969, 22, 2, 1, N'5.6, , , , , , , , , , ,5.6', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2970, 22, 2, 2, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2971, 22, 2, 3, N'6.8, , , , , , , , , , ,6.8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2972, 22, 2, 4, N'10,8.5,7.9,8.9,9.5,5.6,8.9,6.9,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2973, 22, 2, 5, N'6.8, , ,10, ,10, ,7,8, ,7,7.87', N'2020-08-13, , ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2974, 22, 2, 6, N'10,8.5,7.9,8.9,9.5,5.6,8.9,6.9,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2975, 22, 2, 7, N'8.9,8, ,9, ,10, ,7,8,9,9,8.66', N'2020-08-13,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2976, 22, 2, 8, N'8.6,8, ,9, ,10, ,9, ,8,7,8.16', N'2020-08-13,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2977, 22, 2, 9, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2978, 22, 2, 10, N'8.5, ,9,10, , ,8,9, ,9,8,8.65', N'2020-08-13, ,2020-08-14,2020-08-14, , ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2979, 22, 2, 11, N'6.9, ,8, ,9, ,6,8, ,9,10,8.59', N'2020-08-13, ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2980, 22, 2, 12, N'8.9,8,8,8, ,9, , ,10, ,8,8.59', N'2020-08-13,2020-08-14,2020-08-14,2020-08-14, ,2020-08-14, , ,2020-08-14, ,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2982, 23, 1, 2, N'8.3, , , , , , , , , , ,8.3', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2983, 23, 1, 1, N'6.9,8.5,7.9,6.9,9.5,6,8.9,9.6,9.5,7.7,9,8.37', N'2020-08-13, , , , , , , , ,2020-08-15, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2984, 23, 1, 2, N'8.6, , , ,7, , , , ,10,5,7.23', N'2020-08-13, , , ,2020-08-16, , , , ,2020-08-15,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2985, 23, 1, 3, N'6.9,8.5,7.9,8.9,9.5,9,8.9,9,9.5,6,10,8.64', N'2020-08-13, , , , , , , , ,2020-08-15,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2986, 23, 1, 4, N'6.9, , , , , , , , , ,10,9.23', N'2020-08-13, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2987, 23, 1, 5, N'6.9,8.5,7.9,6.9,9.5,6,8.9,9.6,9.5,7.7,9,8.37', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2988, 23, 1, 6, N'8.9, , , , , , , , , ,3,4.47', N'2020-08-13, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2989, 23, 1, 7, N'5.9, , , , , , , , , , ,5.9', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2990, 23, 1, 8, N'6.9,8.5,7.9,6.9,9.5,6,8.9,9.6,9.5,7.7,9,8.37', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2991, 23, 1, 9, N'6.8, , , , , , , , , , ,6.8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2992, 23, 1, 10, N'8, , , , , , , , , , ,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2993, 23, 1, 11, N'6.9,8.5,7.9,6.9,9.5,6,8.9,9.6,9.5,7.7,9,8.37', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2994, 23, 1, 12, N'6.9,8.5,7.9,8.9,9.5,9,8.9,9,9.5,5,9,8.31', N'2020-08-13, , , , , , , , ,2020-08-15, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2996, 23, 2, 1, N'6.9,8.5,7.9,6.9,9.5,6,8.9,9.6,9.5,7.7,9,8.37', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2997, 23, 2, 2, N'6, , , , , , , , , , ,6', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2998, 23, 2, 3, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (2999, 23, 2, 4, N'9, , , , , , , , , , ,9', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3000, 23, 2, 5, N'6.9,8.5,7.9,6.9,9.5,6,8.9,9.6,9.5,9,9,8.55', N'2020-08-13, , , , , , , , ,2020-08-14, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3001, 23, 2, 6, N'8,8,9,8, ,8,6,9,8,10,8,8.29', N'2020-08-13,2020-08-14,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3002, 23, 2, 7, N'6,9, ,8,9,8,8,9,8,7,6,7.5', N'2020-08-13,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3003, 23, 2, 8, N'7.9,7,7,8,8,8, ,8,7,10,8,7.99', N'2020-08-13,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3004, 23, 2, 9, N'6.9,8.5,7.9,6.9,9.5,6,8.9,9.6,9.5,7.7,9,8.37', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3005, 23, 2, 10, N'6.8, ,8, ,8, ,10,9, ,9,9,8.68', N'2020-08-13, ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3006, 23, 2, 11, N'8.6, ,8, ,10, ,8,9, ,6,8,7.96', N'2020-08-13, ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3007, 23, 2, 12, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5,7,6.8,7.84', N'2020-08-13, , , , , , , , ,2020-08-14, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3009, 24, 1, 1, N'8,8.5,6,8.9,9,6,8.9,7,9.5,9,6.8,7.98', N'2020-08-16, , , , ,2020-08-14, , , ,2020-08-14, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3010, 24, 1, 2, N'8.9, ,9,9, ,9, ,9, ,9,8,8.69', N'2020-08-13, ,2020-08-14,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-13', NULL)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3011, 24, 1, 3, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5,9,10,8.75', N'2020-08-13, , , , , , , , ,2020-08-14,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3012, 24, 1, 4, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5,7,6.8,7.84', N'2020-08-13, , , , , , , , ,2020-08-14, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3013, 24, 1, 5, N'6.8,10, ,9, ,9, ,9,7,8,8,8.15', N'2020-08-13,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3014, 24, 1, 6, N'6,8, , , , , , , , ,9,8.2', N'2020-08-13,2020-08-13, , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3015, 24, 1, 7, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3016, 24, 1, 8, N'8.9, , , , , , , , , ,9,8.98', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3017, 24, 1, 9, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3018, 24, 1, 10, N'6.8, , , , , , , , , ,8,7.7', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3019, 24, 1, 11, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3020, 24, 1, 12, N'8.6, , , , , , , , , ,9,8.9', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3022, 24, 2, 1, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3023, 24, 2, 2, N'8.9, , , , , , , , , , ,8.9', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3024, 24, 2, 3, N'6.8, , , , , , , , , ,8,7.7', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3025, 24, 2, 4, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5, ,9,8', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3026, 24, 2, 5, N'8.6, , , , , , , , , ,7,7.4', N'2020-08-13, , , , , , , , , ,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3027, 24, 2, 6, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5, ,6.8,8', N'2020-08-13, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3028, 24, 2, 7, N'9.6,10,9, ,10,9, ,9,9,9,8,8.97', N'2020-08-13,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3029, 24, 2, 8, N'6.9,8.5,7.9,8.9,9.5,9,8.9,9,9.5,7,9,8.57', N'2020-08-13, , , , , , , , ,2020-08-14, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3030, 24, 2, 9, N'8.5, ,8,9, ,10, ,10,10,6,9,8.71', N'2020-08-13, ,2020-08-14,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3031, 24, 2, 10, N'6.9,8.5,8,6.9,9.5,6,8.9,9.6,9.5,8,9,8.42', N'2020-08-13, , , , , , , , ,2020-08-14, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3032, 24, 2, 11, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5,8,6.8,7.97', N'2020-08-13, , , , , , , , ,2020-08-14, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3033, 24, 2, 12, N'6.8, ,8, ,10,9, ,9,9,9,8,8.57', N'2020-08-13, ,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3035, 25, 1, 1, N'6.9,8.5,7.9,8.9,9.5,9.7,8.9,9.5,9.5,8,8,8.59', N'2020-08-13, , , , ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3036, 25, 1, 2, N'6.8, ,8, ,8,10,10,9,10,9,8,8.75', N'2020-08-13, ,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3037, 25, 1, 3, N'
6.9,8.5,6,8.9,9,9,8.9,7,9.5,9,7,8.15', N'2020-08-13, , , , , , , , ,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3038, 25, 1, 4, N'8.6, ,9,10,8,7, ,9,10,9,9,8.97', N'2020-08-13, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3039, 25, 1, 5, N'6.9,8.5,7.9,8.9,9.5,9,8.9,9,9.5,9,9,8.84', N'2020-08-13, , , , , , , , ,2020-08-14, ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3040, 25, 1, 6, N'8.6, , , ,10,10, ,10,7,10,9,9.05', N'2020-08-13, , , ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3041, 25, 1, 7, N'9.5, ,10, ,9,8,8,9,10,8,9,8.96', N'2020-08-13, ,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-13', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3042, 25, 1, 8, N'8,6,9, ,9, ,9, ,7, ,9,8.2', N'2020-08-14,2020-08-14,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3043, 25, 1, 9, N'8, , , , , , , , , ,8,8', N'2020-08-16, , , , , , , , , ,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3044, 25, 1, 10, N'8, , , , , , , , , ,10,9.5', N'2020-08-16, , , , , , , , , ,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3045, 25, 1, 11, N'7, , , , , , , , , ,7,7', N'2020-08-16, , , , , , , , , ,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3046, 25, 1, 12, N'7, , , , , , , , , ,9,8.5', N'2020-08-16, , , , , , , , , ,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3048, 25, 2, 1, N'6,5,6,6, ,6, ,5, ,5,6,5.64', N'2020-08-14,2020-08-14,2020-08-14,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3049, 25, 2, 2, N'4,4,6,6,5,5, ,5,6,5,6,5.36', N'2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3050, 25, 2, 3, N'6,6, ,6,4,6,5,5, ,4,5,5.08', N'2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3051, 25, 2, 4, N'6, ,6, ,5,4,8,6,6,5,7,6', N'2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3052, 25, 1, 5, N'5,5,5,3,5,6,7,6,5,3,5,4.87', N'2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3053, 25, 2, 6, N'5,5, ,5,6, ,4, ,6,5,5,5.17', N'2020-08-14,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3054, 25, 2, 7, N'5,5, ,5,4, ,5,4,5,4,4,4.46', N'2020-08-14,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3055, 25, 2, 8, N'5,5,5, ,6, ,5, ,5, ,6,5.4', N'2020-08-14,2020-08-14,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14, ,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3056, 25, 2, 9, N'5,6,4, ,5,2, ,6,7,7,6,5.69', N'2020-08-14,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3057, 25, 2, 10, N'5,6,4, ,5,2, ,6,7,7,6,5.69', N'2020-08-14,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3059, 25, 2, 11, N'5,6,4, ,5,2, ,6,7,7,6,5.69', N'2020-08-14,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3060, 25, 2, 12, N'5,6,4, ,5,2, ,6,7,7,6,5.69', N'2020-08-14,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14, ,2020-08-14,2020-08-14,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3068, 26, 1, 1, N'9,7,7,8,8,9,9,6,7,8,8,7.8', N'2020-08-14,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-14,2020-08-16,2020-08-16,2020-08-16,2020-08-14,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3069, 27, 1, 1, N'7,5,8.9,7,6,6.9,7,6.8,7,7,8,7.11', N'2020-08-16,2020-08-14,2020-08-14,2020-08-16,2020-08-16,2020-08-14,2020-08-16,2020-08-17,2020-08-16,2020-08-16,2020-08-14', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3070, 26, 1, 6, N'7, , , , , , , , , ,5,5.5', N'2020-08-16, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3071, 27, 1, 6, N'7, , , , , , , , , ,7,7', N'2020-08-16, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3072, 28, 1, 6, N'6, , , , , , , , , ,8,7.5', N'2020-08-16, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3073, 29, 1, 6, N'7, , , , , , , , , ,10,9.25', N'2020-08-16, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3074, 26, 2, 6, N'6, , , , , , , , , ,7,6.75', N'2020-08-16, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3075, 27, 2, 6, N'6, , , , , , , , , ,6,6', N'2020-08-16, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3076, 28, 2, 6, N'7, , , , , , , , , ,7,7', N'2020-08-16, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3077, 29, 2, 6, N'7, , , , , , , , , ,5,5.5', N'2020-08-16, , , , , , , , , ,2020-08-15', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3078, 28, 1, 1, N'9,7,7.9,6,7,7,7,7,7,7,8,7.33', N'2020-08-16,2020-08-16,2020-08-17,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3079, 29, 1, 1, N'7,7,6,7,6,8,8,8,8,7,9,7.6', N'2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16,2020-08-16', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3080, 29, 1, 2, N'8, ,7, , , , , , , ,7,7.2', N'2020-08-16, ,2020-08-16, , , , , , , ,2020-08-16', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3081, 27, 1, 2, N'7, ,6, , , , , , , , ,6.5', N'2020-08-16, ,2020-08-16, , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3082, 26, 1, 2, N'6, ,6, , , , , , , , ,6', N'2020-08-16, ,2020-08-16, , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3083, 28, 1, 2, N'7, ,8, , , , , , , , ,7.5', N'2020-08-16, ,2020-08-16, , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3084, 26, 1, 3, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3085, 27, 1, 3, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3086, 28, 1, 3, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3087, 29, 1, 3, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3088, 26, 1, 4, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3089, 27, 1, 4, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3090, 28, 1, 4, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3091, 29, 1, 4, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3092, 26, 1, 5, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3093, 27, 1, 5, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3094, 28, 1, 5, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3095, 29, 1, 5, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3096, 26, 1, 7, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3097, 27, 1, 7, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3098, 28, 1, 7, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3099, 29, 1, 7, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3100, 26, 1, 8, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3101, 27, 1, 8, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3102, 28, 1, 8, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3103, 29, 1, 8, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3104, 26, 1, 9, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3105, 27, 1, 9, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3106, 28, 1, 9, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3107, 29, 1, 9, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3108, 26, 1, 10, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3109, 27, 1, 10, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3110, 28, 1, 10, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3111, 29, 1, 10, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3112, 26, 1, 11, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3113, 27, 1, 11, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3114, 28, 1, 11, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3115, 29, 1, 11, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3116, 29, 1, 12, N'5, , , , , , , , , , ,5', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3117, 28, 1, 12, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3118, 27, 1, 12, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3119, 26, 1, 12, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3120, 29, 2, 12, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3121, 28, 2, 12, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3122, 27, 2, 12, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3123, 26, 2, 12, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3124, 29, 2, 11, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3125, 28, 2, 11, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3126, 27, 2, 11, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3127, 26, 2, 11, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3128, 29, 2, 10, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3129, 28, 2, 10, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3130, 27, 2, 10, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3131, 26, 2, 10, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3132, 29, 2, 9, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3133, 28, 2, 9, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3134, 27, 2, 9, N'10, , , , , , , , , , ,10', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3135, 26, 2, 9, N'10, , , , , , , , , , ,10', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3136, 26, 2, 8, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3137, 27, 2, 8, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3138, 28, 2, 8, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3139, 29, 2, 8, N'8, , , , , , , , , , ,8', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3140, 29, 2, 7, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3141, 28, 2, 7, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3142, 27, 2, 7, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3143, 26, 2, 7, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3144, 25, 2, 5, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3145, 26, 2, 5, N'5, , , , , , , , , , ,5', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3146, 27, 2, 5, N'5, , , , , , , , , , ,5', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3147, 28, 2, 5, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3148, 29, 2, 5, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3149, 26, 2, 4, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3150, 27, 2, 4, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3151, 28, 2, 4, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3152, 29, 2, 4, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3153, 26, 2, 3, N'5, , , , , , , , , , ,5', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3154, 27, 2, 3, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3155, 28, 2, 3, N'5, , , , , , , , , , ,5', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3156, 29, 2, 3, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3157, 26, 2, 2, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3158, 27, 2, 2, N'6, , , , , , , , , , ,6', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3159, 28, 2, 2, N'5, , , , , , , , , , ,5', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3160, 29, 2, 2, N'10, , , , , , , , , , ,10', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3161, 26, 2, 1, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3162, 27, 2, 1, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3163, 28, 2, 1, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [ClassStudentId], [SemesterId], [ClassSubjectId], [ListPoint], [ListDate], [Pointlock]) VALUES (3164, 29, 2, 1, N'7, , , , , , , , , , ,7', N'2020-08-16, , , , , , , , , , ', NULL)
SET IDENTITY_INSERT [dbo].[SubjectResult] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (1, N'Hong An 2', CAST(N'2020-03-03' AS Date), N'Tp Hue', 1, N'0989878987', N'29/81 Nguyen Hue', 1, N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD//gAgQ29tcHJlc3NlZCBieSBqcGVnLXJlY29tcHJlc3MA/9sAQwACAQECAQECAgICAgICAgMFAwMDAwMGBAQDBQcGBwcHBgcHCAkLCQgICggHBwoNCgoLDAwMDAcJDg8NDA4LDAwM/9sAQwECAgIDAwMGAwMGDAgHCAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM/8AAEQgAZABkAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A/FL9kCW58O/tJeAdUhVvk1mBQQO7Nt6/ifyr6H/4Lz+F5tJ/bN0/UpFdo9Z8OWconK7VmZC6tgdBgbRgAdAcc1sfsg/s4W/i39mLTfFltbxyXWh6pazNN/ErGUMO38I/2unGCRz6N/wcW+DFx8HvEkULItxplxYSuYtu5k8plGcYOB27Z+uPiaeZxrZ3BLS3ND7rtH29fLXRyeXnyy/K/wCB89/sG6K13Fp95FD52yby5QBu4yeDjnB9O/H0r6i/ao/4Joap+2J+ztrnivwNY6lrHxK+GvlLHolrFNdT63o0k0rGG0t4UdpLiO4uGk5wDFu7oob5/wD+CVtmfEUGqaarDzo2FxAufmZgQcD64xn9cZr9UP2CPiFB8LP2jtEuJriVLXUHGmXQDfKI2JI78HoPxry8djKmGzKVSG8X96PVoYOGJytU5dUvvP52auabatcSKkatJJIQqqq7mY54AHcn0rtP2pfh4nwh+O+veEfsqWN14VaHR9QgXOI763gjhu+pJBNwkxIPQkjjpXu3wJ8IeF/C37GQ8RtYwHxP4vh1rSUu5AZHElrq3haeIJk4jIge9GVAYrLICSpAr9AqYiKpxn/MtP8AwFy/Q/P6FF+1cX0dvxS/U8b0H4B6xf8Ahu6um8uzuhE7wWzJ5kkpx90j+A4yB1OTyFpv7KXiaHwl8VNSvr2G4uVl8M69pKLFGZMzXuk3djFkjhVD3CkseAFzXuHhxDPEsY5GRj61658dfgR4b8A/s7/C3WtG0SysdW8WPq15rN1EmJLwxw6WE3n+6paZgBgAyyN1YmvmcVn0aVSGEqpt1m4q3S0ZSd+trJ/M+khk7qReIhKyp2bv1u0lboeF+NdYuviT4z13xBeKn2zXb+41S5CAiNZJ5WlfA9NzHFUfDHwv1n4ia/Y6B4f0nUde13WZD9m0/Tbd7m6uFHUrGgJ2juxAVepIFet/A79mPxZ+0jLH/wAI3ZNaeHmZkfW5ot0cwB2n7LGcefzkeacQqQfmcjYf1H/4Jw/s8/Cv9jHTZNQ8TXVrp8yKst9d3Uoe6u9vQySYBfGDgYCLztVRxXPiMZCk/efvdv8AP/L8jqo4RzjzJe7+fp/n+Z+UPxP/AOCJvx40XSDq+teG9J8MRbN32e+1VLi5HpuW1EyqfYsD64qn4N/4JnQ+DfBFv4k8Xa5b3dnb2YvpLeG2lght3MkiPG5lCtIw8sdFCYI5bmv00/4KV/8ABxj8HfDFneeFvh7odr4ouoR5X2hEHkg9Oo4P55r8lf2vP+CmfiT9qXwJpPh9NNh8P2NrbNBeCCQsbv8A0iaRfTjZIqn1KmvQwtTH14qMVyx77afPU83ELBUpOc9Zdt/vtof1Ef8ABD/xd4S/aE/4JZ/CTU9Hgsby00OwufDuAVJg+xXk9uFIB4yqK4HdZFPQiiv5Xf2UP+Civx+/ZF+Hd74b+FfjPxH4d8PX2ovqVxbafGWje6eKKNnPB+YpFEPooor2fq7j7qSdu71/I8X2nM+a7V+y/wCCfpP/AMED/Ddv8WP2MfHOjbY3uo7R1RHOWYoxOQOf72BkDJJ9CRif8F7PBzat+wL8PdW2sz6Pr32Z3OWxvhkyM+xUfXPsM4v/AAa2/EWMfEjxV4duG3rNFkxGUKsiOpBXb1OWwfTj8/b/APgt74IlsP8AgnH4y024HmHw3r1rMjHORmfYev8AvHjPvjrX5pOLoZ9b++vxf+TP0SNRV8q9Yfkrfoflb/wTl+KZ+HHxj0192FaddwLBQV/i5PHPT/Cv1yTwC2leJIr+0laGC4u476GZBudtrrkZz93B7dOPx/DX4CXV3Z/EHTJ7NWZre4UsB0x7+3Ff0XfsWeCG+Of7JtrDJJHLr2ix7/PkyxZCiknJ7ljkjtjnGa9Liij7PFe0j1Wpy5BiHLCJPofBH/BfT/gnPH491ay+OXw70e6bXtcntdN8V6Jar50l/ctCEiv4I1XJdvLCTKMlnZJACWlYfA/gvQfEfhe7h8F6vDdf2l4dv7u0TSUi3S2V00ipcphclpN0CKeoHl4Hcn+gr4+/DO61P9m3+3reO6ks9B8RaXvupMhZd11DEAB/e3Sc9hwOvA+h/Cv7K3wr/Z4sdS1bw74O8P6PqniCaXU9SvorRTd309wxmleWZsyOS7scFiAMAAAAV41Hi+vCo8uqwUlGKkns9XJW+VrK3oVisjw8UsZTbTlKUWltoov8b3fyZ/PFoHwh8aaffafaf8IN40uNR1WXybGyt9Fnee7cDJCgqAFCjczsVRRksQK/Rv4Mf8E4rf8AaY+Cnww/4TvT5JH8Ctf2V7oLXKTacl4r24l88p8t0I3h2qpPlMVLFXBAH0T8WfiX4Z1PX7ixVp/tCn5fsxCvGc9eDkVwtl8a/Enw9+DbabpN1JJpPiDUdblluTF515bynUJkW5DEgyH5QWjYgPg4ZCd1eXmOce3xmElC0XGU9U+9OS+X5nqYTAunhq3Orp8vTzv8zl/2uv2k/h1/wT8+GV6qS2cl95QQIMFiwXAQD24AA6AYHFfh/wDtWft0eMP2mvFd5Ncald2ejyu3l2kchVWUnjdg8/SpP2+9T+Jk37Qurab8Srj7Rqlu3nWptpGksbm2bmO4t2IBaN15yyqyncrqjqyLu/sO/sE6t+09r3267gaHw7ZHfcTSy+RCyjJJaQ/dQAEkjHAPI61+k4HA4bAUfreKak3quq12t3fmfHYvGYnHVvquFTS69Pv7I+cMZqfTLFtU1K3to/v3EqxLx3YgD+dfVeufCHUP2rtV1qz+F+jQaX8KvCs5tH1v+zmjXUplAJMcYG92Iw4Q/MFZDIUMiJXz/wCHPB9j4u+OWk6F4fsdU8TWN9qdvZ29pCRa3epqzqrIhYMI2f5gGYELkEjgivew+MVRNNWaV2t7dr9E/I8LE4H2VnF8ybsntfvbq0u59f8Axe8Sar+yz4ybwT4M+F3izUNF0u3hZbuGOZYbl3QOzIywvv6gFi2d6uOwoqf9qH9k2H9mT4v33hXwx4D/AGiNU0WCKKe3u/D/AIkU2U29fmwq2UpRlYFCrsG+XONpUkrz6caMoqTSfnff/wAmO+pKspNJteSX/AOB/wCCJ37QS/AL9uzwzcXEyw2erSpaTMwGB8wI6+4r9af+C2OiRah+y38YoI9zW99o0WqoQ33tjI+73+Yfhk/Wv58PBHii68E+LdO1ezdo7rTbhJ42BxgqQa/c39oT4sWvx3/4Jl2viZr2NrjVvB9xp92GYvsb7NKWYgDAHDck8YyTwBXzfE2E9nmFLFLaVvvTX6WPe4dxHtcDOg943+5/8G5+Qn7Bk1jdftKaDpepbVtdYkNsXOcI2CQSB16Yx3yK/bb9ib9r3R/2bfjJ4J+E51Zde+LPji9t9A03w3prpNFprXB+e7vWGRHFEpMpQkSOqDC4O4fz/eCdOvhqsF/a3raSLWUFb8OyNC4x9zb8zPyOF5GcnAyR+sf/AAb+fB9PA/7anw48bHTpU0k6/Ba32r6gN17qU90Wgh3Oc7ENxLGwjU4LbCxkZVcetnmAo1a8alST1srLv3v09N35Hn5Pi68cJKnCO13d9uyXV767LzP2M/4KR+JvCfwj/Zz0v4ffbFj1LXtU0y20i0xvmu2tr+2ubid8dgisWkPBklUdXAr8TP8AgqB/wUS+OHjn46eMPA994m1XS9B03W73SNM0zSM2EElpDcSQxmYxkPMSiKxMrMMngAcV9R/t/wDxi8SfEb/gswv2tpf+EZsdUh8M6YCD5apCrPJtJ7m485iR/fA5AFeG/wDBYjQ9H8X6ZrnjPw1CkesaNrt1aajJHxu23Ei5IHfIIzx0PFfjscZT/wBZFzwUoTilHtH3pcv5an6nlmBnhcsg95O8m7Xs2oXt8l9585+A/hilr8O21TUNQWxvIUaQbw3mKEG5nyoyABlic9FbsDXtnxT/AOChWr/snS/AvTJLceKfBfiD4fR6vfow2ahvm1nVI2uYmY5aRo4UJjkyDt6oSXpPgrqPh/8AaV/Ykk0qDTdD1DxhpsziKF7SVrpm8hwJMwyIxjUsGZX3qyqQFydw8o+I/hLxNr/w48K3Pjbw/wDYbrwZZS+F7SWaIiVokuri4TIJBCj7SR5m3aSTyCMV00ZU6uOvjFfknJOLsrXi0nHq1f8AM9bEU5VsKqSajs09+Zf0/wAGe2ft6/A3wn+1X+z/AKX470ea3vYvD0UOtWl5CgDXulTTxw3FqxwHwlxPBMsZ4jK3WVDOxCeF/wBpST9iz/gn74t8ZeD7HSbnXLJbO0sodRtxc2Yaa5jiZ5IcjdiFpQFJK5IJGPlPhX7DPxWnb4M/HzwpeXl1Ho/hvwpq+s2zhRN9hE1lLA3yk42m5NoQoxyzkfMecOb4kN8Q/wBkHx58NdQjCeK9SsLXVNN2SedDqscVwk6S2rD/AFiyLG6Lj5g52MA4IP3dHAVY06dOu+anCaWv8rs9fk7P/Kx+b4itTpVa0KOk3F29Vdaed1c96/bstLfVf2tP2ffhtpejad8P/A3hnwVb/EjWNN8L2r2di+oTrJcTiJFJLRiSNIVJJZfOlAOSc/nAfiN4Z+JX7R154o8c2OsHwzqV/Ne3tjpMyLeOhDGOFJJAVGW2KzEZC7iBnAr6V+N3/BRTx8mi/DGG+1C6h0a08MQaXqulywosyXcMYi88tt3qW2RyBc9A2etfJvw6+HOrfGvxbdadparcaxNBLdwwkhftTr8xRT03EZ2jucDvX1GT4eVOm5VbJJWun/elzO/du3fpqfLZxWjKSp022272a/ux5V6Wv266H0n8Yf8Agop4B+OWraTd618MvGEDaFpUGiWa2fxAmjzbQ7vLMrfZsyS/Md0jEs3GSaK+Sr+wn0q+mtbqGa3uLdzHLFKhSSNgcFWU8gg8EGivWjgaKVlf73/meNLG1m7u33L/ACI4YWuJVjjVpJJCFVVGWYnoAK9u1vxF46Hwp0vwf4g1TU/7IswPsvhmCRkV33F910FOcgniP7wyc+Wwy3qn7Kf7KMmszw/2DZy3epyjbLqk0e1os9RCOkYxxuzvPIJUMUr03406p8Ov2FdPWSWLT/GXjeVdyQv+8t7Zz/e/vY44xjjv0rxcZmkKlWNOjHmaene/l29fyPpMvyeVGk6tefKmtVfS3n39NvU+MLzwJ4w0rV5vsum3zX2mQxvM0FvkaergOiLgbUbDbvlwck453V9Ffsg/8FEfjL4P1TRfh5cajCbObWLG/sdRu7ELqGlXVpcJdQusy7TIPPihZhNvI8sbSnOeR8K+D/F37aeleNNQ0W+aTxfa6HL4v/s23IW41gR3TpdQwKCPnjtw0oRRuZYWVQcgVyHwB+KcsVgkN5fXFxqFncRz2ckzb3iCspKqx5A4HGccV1VourRvVgm07eafe5xxko1rUpNK199Gu1j9V/jx8cpPin+1J8N/G2nrHD4d8eeKDrAtywWHTZ5ApuLXezkyXcNw7o20R77drOQRMsiyvyPizx7pfwf/AGzfjV8O/ix4eutS0PXNavUihit281ILi6knjMXmSQqHCyxsHLbdwyrEHn59/Yr+Jmm/Gfw+3hfXrWLWNN86G8FpLK0bCaHPkzwyKQ0NxHucJIpHys0biSJnib2z9p74fa18XviRpviKx1rT5PsIjRINXe4+3AqS3+tiR0mUMSxd/I3Nk7ADx+R5jwtOljXUpK8JRs+jjJNyi1rru1stN23qfp2U8RUK2HjQxEuWUbrtzLS2vRqzv+HY8t8VfBbxn/wTh8eaf4q8J30sOi63Cz6delThoznMcodcqw6EEZ644ri/j9+17N4v8F302p3Sm6kQybQ/32Y5bv6nPtj8v0i8M6TdfGH4MxeF9ah0C88z+C8naSOI+u+OOQA4PXg8mpvg3/wT1+EvwW1e08Ya1pGl+Ite01/Psllixb2cmchhHuKll7OScHDKI3VWHHldaeIqxq5jQfPF/Fte217/AJ2PVxWb0KNFxouLlaytr/X3nxb4P/Y81L9kT/ghh+0R4+8Y28mk+O/i7YaJDZWM67Z7DTP7dsWCOMZSSUCR2TOQoRWAdXUfAfwF+M2l6XaL4V8aNf8A/CLzO8ljqlkvmah4UunwDdW6kgSxNgCe1YhZk6FJFjkX91P2pPHXhD9oP4L+KPDfxE0ubXfDHiTULHT7yO0n+y3Vkmy4eOe1dRiOWFokeMMrRZiVHjeNmjb8O/2y/wBjzVf2PPjNqfg/VLtdQWOJNT0PVkhMVr4m0mbcYL2DJOD8rJJHuYxyxzRE74nFfsOR11iKEnV3k2/RaJfda35n4tmkakMRzxfT73uzjfjd4a13wV4taw1m6tdSSaNbqx1GzlM1lq1sxIjubdyAWjbDD5gHVlZHVJEdFrfB/wAR2XhzxRN9v1DUdIgvrV7QahYgtNYsxUiQAEFgNuGAIJUkA5pPDPxAX/hF5PDetxyXmgvIZ7Zh80+jztgNPBnswCiSIkLKFXO11jkTuP2WdB0u1+Kdxput/Yby11CxYQb08yC9TcDuTcB/dJwQCCrAhSpA9epanRaa27fmcNLmrV4y5tX3/I7fTPFfjq/tt6eIvhn4whB2xajqqwSXTIAMK5kUPkdSGyck8nrRXmXiLUvh/DrVxHqHg/xRoN1G5WSyivwREQe/mJuB9ugorl9i/wCX/wAlX6Ox1e2S0cv/ACZ/rG59HfFP/gojZ/DDw1ceHfAcMdvhfKFxENp4GM7hz68D1r448W+MNQ8ca5NqOp3Ml1dTtuZ2OfyrMJya0tI8Oz6lNbqtvdXMl1KsFvb26b5riRuEVQMn5jwOCSegODjfB5fRw2sd+73McdmlfGPllpHsjuP2ePjD4s+D3i/SfE3gXVrzRfGfg+6/tTSrm2bEhVcO6j+8VKB9mCGUyZzgA9X8afi74J+P+rzeONJ0a1+HPj55Dc61o1moGgay5GZbmyH/AC5zMSXNq2YT8xieP5Ldovht8AdV1CUzTtCstjcBI2spxJHAwVGwsiEjcrMQSCSHVskkE1N8Yf2c5p4n1C0RI9Q+9LGAFW4PrgcKx9uD6Dvn7en7Vx6d/wCuhs8PUVKLvr2/rr+HkVP2afiJefDjxNHfWMhhKyEoDypXJGD68cetfXdz+0XL4/ktjdTKirGFZY2O04zz1PPNfDeizSWmj+Y0TQSW1wYZUPBiJ5AP4h/yrvtB8cSaVbruk24GR2ry8VH942d1OOisfoP+zh8XodEBLXLbVGcM+a9T8VftJz+J0jsLWY7XOG57dK/OfwH8ZmtLZFSXG7gkNX0d+zzqEvinUIW5kZiFUZ5JPSvnsbhU5czPWo1UonuHxEFxN8P9NiXduvLqS/mx1ZVAjh/L99j/AHzXkP7dHwcT9qr9hjVY4YFm8bfBlJvFGiSKpM1zpB2jVbPjGVjQJfAsSI1s7oKN07Z+ofi18Pj4e8NWMci/NDbIjDHCtjJ/8eJryj4M+MdN8E/HHQZtZt1vvD9xd/YdYs2OFvrCcGG6gb/ZkgkkQjuGIr3MFfDwhbp/TPHrfv8Ani/l+h+LU8q3UfmHZHIuFIUY3+/pn19c/Wp9L1ybTxGqySIsUgmidDh7eQY+dD2PAyO+B3CkdB+0B8IL79nv48+NvAOqSLLqXgfX77w/duF2h5rS4kgcgdstGeK5Gvq7HzfM73PVtL/ah1GDT4o7yGO5njG0y84ceoGRj6DgdsDABXlNFcn1Gh/Kd0c0xCVr/gaGgaVJql8scKxs6/O7ykLDAvTe5PAAJHXjoOScV33wn0e6k8NeJI1ulRdauLXQobsMUO+WTzmnBYBtiwQSo2ACBdqGwG2nzmbUXe0Fun7u3DBig/jYcBm9SMnHpk4xk1NN4jvptNt7N7u4a2tUaOGNpCVhVzuZVHRQzHJx171vVjKUbIwoVIQknLp+Pl/wT9aP2EP2SNN1/wDZWs7zRZotY0+31jUrSK+hO6O5EVwy7lOOR6EcEYI4Iqn8U/2W7ptSkhS1Y9TkDivQP+Dcz48XWm/sqeLvBetaRNqGn6HrC6pajy/3kMN5FgEA9UZ7eUj6k9DW5/wUL/4KV+Ff2e7WZdL8EahqGptlFEsZhhRug3Men4AmvnqNej7eVFz95O1ur/4c9+pCs6SqKNla/kvL5bHwJ+09+yveeDvAGueMLVrKK30uONNShml8tpd0yJDJGMfM6lmUjqVcf3cV4ENZhvdAR1ZdxBHvWb8fP2jvFH7RfjG41fxBfMyyMTDZQkpbWq54VU6fick/kBytreSR6U21jx2r1K2C5km9zhw+Mu3F7Wudt8OfEE2o6zHaw7mYuMAc1+tX/BMT4BSalc2eoagn7mEiYgjghR0/FiB+Nfl5+wZ8OpPiT8brazCFlADHjpzX7t/AHwwvw81Hwt4Zso1RptLvddvyuNyQW/2eBFP+/LdqwHf7OxH3WrxsxpxVbkR3Yes5UeZ9Sl+0eqN4Ym+b5oWPT/P0r4x8UK7awrJ95Zcj86+0/jTp7avp12oXO4nA9P8AOK8j+HH7LV98RfGljax28kktxMqqoHUlgBz9TWMpWiVQ0lc/K7/gsVoy6L/wU++NhXG7UvEs2rTe8t2q3Un475m57182TwPazNHIjRyRsVZWGGUjqCK+hv8Agqf8QbLxx/wVB+OmtWfk6hpMfj/VYLPDkxXVrb3jwwkHg7WiiQ8dAa9u+Mv/AATj+Nf7WX/BPnx5+3h8Qde01P7W1+2is9JeNUuNU04E2j3EKIdtvb27JBBBBgZhgkICIkPnfVqXIkpdvxPm3Hmb5e/4HwTRRRWxiFSW7+XJuwrbeQCMiiik9i6fxI/Rv/g3C+KWsaR+2F4m0/7R9qtPEmht9ujuMyCRobi38txz94B3XPOFcgYr9bv28v2MPh98Xfh7NdazoqyTMuC0ZC9QfY0UV+bZ/wC7mEuXTb8kfY5XKTw8G3vf82fzd/tefD3TfhV+0d4s8P6PHJDpumXzQwI7bmCgDqf1rzqKVlhkX+Eiiiv0DBtyw8G+y/I+XxOmIml3Z9Vf8Emtbk0n477Y4oXMmBucHK9+MEelfuZ+xG6+NpvG3iTUI45NSvNYvfDII+5Bp+nSzxQQoOwLGaZySSZLiTBCCNEKK8LFf71P5foetT/3ePobV7o1pcTsslvHIAe+ecHFekeGo7f4TfDLxJ4u0mztF1jwvoWo63YtKm+MXFpZzXMO4ZGV8yJMjIyMjiiisI7mi2Z/JPd3Ml7cyTTSSTTTMXkkdizOx5JJPJJJzmvTtV/bW+K2s/BCL4bT+OvELeAobdLUaCtyVsXRHDrujHDMCBhjyAMZxxRRX1cqcJNcyTsfPwqTinytq55bRRRVmJ//2Q==', 1, 1, NULL, NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (3, N'Giáo Viên Toán', CAST(N'2020-01-01' AS Date), N'Huế 1', 0, N'0123456789', N'2 Nguyễn Tri Phương', 5, NULL, 1, 0, CAST(N'2020-01-01' AS Date), NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (4, N'Giáo Viên Văn', CAST(N'2020-01-01' AS Date), N'Huế 2', 0, N'01236987', N'3 Nguyễn Tri Phương', 2, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (6, N'Giáo Viên Anh', CAST(N'2020-01-01' AS Date), N'Huế 3', 0, N'0369875412', N'4 Nguyễn Tri Phương', 3, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (7, N'Giáo Viên Lý', CAST(N'2020-01-01' AS Date), N'Huế 4', 0, N'0369852147', N'5 Nguyễn TRi Phương', 4, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (8, N'Jena Oneill', CAST(N'2016-03-16' AS Date), N'Sequi magna ea neces', 0, N'+1 (885) 168-6654', N'Recusandae Sit mini', 7, N'Mollitia voluptatem', 1, 0, CAST(N'2004-02-13' AS Date), NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (25, N'Huỳnh Thế Hoài ', CAST(N'1984-10-18' AS Date), N'Bình ThuậnvCà Mau-Việt Nam', 1, N'857-0351151', N'190--Huế-Việt Nam', 1, N'http://image.php', 1, 0, CAST(N'2005-01-16' AS Date), N'Giảng viên')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Course1] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Course1]
GO
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Grade]
GO
ALTER TABLE [dbo].[ClassRoom]  WITH CHECK ADD  CONSTRAINT [FK_ClassRoom_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
GO
ALTER TABLE [dbo].[ClassRoom] CHECK CONSTRAINT [FK_ClassRoom_Teacher]
GO
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_ClassRoom] FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassRoom] ([ClassId])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_ClassRoom]
GO
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_Student1] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_Student1]
GO
ALTER TABLE [dbo].[ClassSubject]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubject_ClassRoom] FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassRoom] ([ClassId])
GO
ALTER TABLE [dbo].[ClassSubject] CHECK CONSTRAINT [FK_ClassSubject_ClassRoom]
GO
ALTER TABLE [dbo].[ClassSubject]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubject_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectId])
GO
ALTER TABLE [dbo].[ClassSubject] CHECK CONSTRAINT [FK_ClassSubject_Subject]
GO
ALTER TABLE [dbo].[ClassSubject]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubject_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
GO
ALTER TABLE [dbo].[ClassSubject] CHECK CONSTRAINT [FK_ClassSubject_Teacher]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Nation] FOREIGN KEY([NationId])
REFERENCES [dbo].[Nation] ([NationId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Nation]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Religion] FOREIGN KEY([ReligionId])
REFERENCES [dbo].[Religion] ([ReligionId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Religion]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_ClassStudent] FOREIGN KEY([ClassStudentId])
REFERENCES [dbo].[ClassStudent] ([ClassStudentId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_ClassStudent]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_ClassSubject] FOREIGN KEY([ClassSubjectId])
REFERENCES [dbo].[ClassSubject] ([ClassSubjectId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_ClassSubject]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_Semester]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Degree] FOREIGN KEY([DegreeId])
REFERENCES [dbo].[Degree] ([DegreeId])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Degree]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectId])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Subject]
GO
/****** Object:  StoredProcedure [dbo].[sp_Create_SubjectResult]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveDepartment]    Script Date: 7/22/2020 10:52:18 AM ******/


-- =============================================
-- Author:		Duy Le
-- Create date: 7/14/2020
-- Description:	create/update Student
-- =============================================
CREATE PROCEDURE [dbo].[sp_Create_SubjectResult]
		@StudentId int, 
		@SemesterId int,
		@SubjectId int,
		@TypePointId int,
		@CourseId int,
		@ClassId int
		
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
INSERT INTO [dbo].[SubjectResult]
           ([StudentId]
           ,[SemesterId]
           ,[SubjectId]
           ,[Point]
           ,[DateInput]
           ,[TypePointId]
           ,[CourseId]
		   ,[ClassId]
         )
     VALUES
           (@StudentId,
		   @SemesterId,
		   @SubjectId,
		   null,
		   null,
		   @TypePointId,
		   @CourseId,
		   @ClassId
		)
			 SET @Message = 'Student has been Create successfully!'
			 		SELECT @Message AS [Message]

	END TRY
	BEGIN CATCH
		SELECT @Message AS [Message]
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Student]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Duy Le
-- Create date: 7/27/2020
-- Description:	delete Student by StudentId
-- =============================================
Create PROCEDURE [dbo].[sp_Delete_Student]
	@StudentId INT
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again'
	BEGIN TRY
		UPDATE [dbo].[Student]
		 SET [IsDelete] = 1
		WHERE StudentId = @StudentId

		SET @Message = 'Employee has been deleted successfully!'
		SELECT @StudentId AS EmployeeId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SELECT @StudentId AS EmployeeId, @Message AS [Message]
	END CATCH
	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Teacher]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duc Tran
-- Create date: 8/4/2020
-- Description:	delete teacher by teacher id
-- =============================================
create PROCEDURE [dbo].[sp_Delete_Teacher]
	@TeacherId INT
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again'
	BEGIN TRY
		UPDATE [dbo].[Teacher]
		SET [IsDelete] = 1
		WHERE TeacherId = @TeacherId
		SET @Message = 'Teacher has been deleted successfully!'
		SELECT @TeacherId AS TeacherId, @Message AS [Message]
	END TRY
	BEGIN CATCH
		SELECT @TeacherId AS TeacherId, @Message AS [Message]
	END CATCH
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_All_Nation]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duc Tran
-- Create date: 7/29/2020
-- Description: Get nations
-- =============================================
create PROCEDURE [dbo].[sp_Get_All_Nation]
AS
BEGIN
	
	SELECT n.[NationId]
      ,n.[NationName]
	  ,(SELECT COUNT(*) FROM Student s WHERE s.NationId = n.NationId) AS Students
	FROM [dbo].[Nation] n
	WHERE n.IsDelete = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_All_TypePoint]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/29/2020
-- Description: Get nations
-- =============================================
create PROCEDURE [dbo].[sp_Get_All_TypePoint]
AS
BEGIN
	
	SELECT TypePoint.*
	FROM [dbo].TypePoint 
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRoom_ByClassId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Class All
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_ClassRoom_ByClassId]
@ClassId int
AS
BEGIN
SELECT [ClassId]
      ,[ClassName]

	  ,co.[CourseName]

	  ,te.TeacherName
  FROM [dbo].ClassRoom cl
  inner join Teacher te on te.TeacherId = cl.TeacherId
  inner join Course co on co.CourseId=cl.CourseId
  where cl.ClassId=@ClassId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRooms_ByCourseIdAndGradeId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_ClassRooms_ByCourseIdAndGradeId]
@GradeId INT,
@CourseId INT
AS
BEGIN
SELECT  cl.[ClassId]
      ,[ClassName]
	  ,[GradeId]
	  ,[CourseId]
	  ,cl.[TeacherId]
	  ,te.TeacherName
	 ,(SELECT COUNT(*) FROM ClassStudent clstu WHERE clstu.ClassId=cl.ClassId) AS Students
  FROM [dbo].ClassRoom cl
  inner join Teacher te on te.TeacherId = cl.TeacherId
  where cl.CourseId=@CourseId and cl.GradeId=@GradeId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRoomsAll]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Class All
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_ClassRoomsAll]
AS
BEGIN
SELECT cl.[ClassId]
      ,[ClassName]
	  ,[GradeId]
	  ,[CourseId]
	  ,cl.[TeacherId]
	  ,te.TeacherName
	  ,(SELECT COUNT(*) FROM ClassStudent clstu
	  WHERE clstu.ClassId=cl.ClassId) AS Students
  FROM [dbo].ClassRoom cl
  inner join Teacher te on te.TeacherId = cl.TeacherId
  inner join ClassStudent clstu on clstu.ClassId=cl.ClassId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRoomsAll_byCourseId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Class All
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_ClassRoomsAll_byCourseId] 
@CourseId int
AS
BEGIN
SELECT cl.[ClassId]
      ,[ClassName]
	  ,[GradeId]
	  ,[CourseId]
	  ,cl.[TeacherId]
	  ,te.TeacherName
	 ,(SELECT COUNT(*) FROM ClassStudent clstu WHERE clstu.ClassId=cl.ClassId) AS Students
  FROM [dbo].ClassRoom cl
  inner join Teacher te on te.TeacherId = cl.TeacherId
 
  where cl.CourseId=@CourseId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassStudent_ByStudentId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Class All
-- =============================================
Create PROCEDURE [dbo].[sp_Get_ClassStudent_ByStudentId]
@StudentId int
AS
BEGIN
SELECT [ClassId]
      ,[StudentId]
  FROM [dbo].ClassStudent 
  where StudentId=@StudentId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassStudentId_ByClassId_StudentId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
create PROCEDURE [dbo].[sp_Get_ClassStudentId_ByClassId_StudentId]
@ClassId int,
@StudentId int
AS
BEGIN
SELECT  
ClassStudentId

FROM [dbo].ClassStudent

Where ClassId=@ClassId  and StudentId=@StudentId 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassSubjectId_ByClassId_SubjectId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
create PROCEDURE [dbo].[sp_Get_ClassSubjectId_ByClassId_SubjectId] 
@ClassId int,
@SubjectId int
AS
BEGIN
SELECT  
ClassSubjectId

FROM [dbo].ClassSubject
Where ClassId=@ClassId  and SubjectId=@SubjectId 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_CoursesAll]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Courses All
-- =============================================
Create PROCEDURE [dbo].[sp_Get_CoursesAll]
AS
BEGIN
SELECT [CourseId]
      ,[CourseName]
  FROM [dbo].Course

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Get_DegreeAll]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hong An
-- Create date: 8/03/2020
-- Description:	Get all Degree
-- =============================================
create PROCEDURE [dbo].[Sp_Get_DegreeAll]
AS
BEGIN
SELECT [DegreeId]
      ,[DegreeName]
      ,[IsDelete]
  FROM [dbo].[Degree]
  WHERE IsDelete = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Grade_All]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Grades
-- =============================================
create PROCEDURE [dbo].[sp_Get_Grade_All]
AS
BEGIN
SELECT [GradeId]
      ,[GradeName]
  FROM [dbo].[Grade]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_NationAll]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hong An
-- Create date: 08/10/2020
-- Description: Get nations
-- =============================================
create PROCEDURE [dbo].[sp_Get_NationAll]
AS
BEGIN
	
	SELECT [NationId]
      ,[NationName]
	FROM [dbo].[Nation]
	WHERE IsDelete = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Point_ClassId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get employee by ClassId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Point_ClassId]
	@ClassId INT,
	@SubjectId int,
	@SemesterId int
AS
BEGIN
SELECT sr.*
  FROM [dbo].[Student] st
  inner join ClassStudent cla on cla.StudentId= st.StudentId
  inner join SubjectResult sr on st.StudentId= sr.StudentId
  inner join Semester se on se.SemesterId= sr.SemesterId
  inner join Subject su on su.SubjectID = sr.SubjectId
  WHERE cla.ClassId=@ClassId and se.SemesterId=@SemesterId and su.SubjectID=@SubjectId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Point_StudenId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get employee by ClassId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Point_StudenId]
	@StudentId INT,
	@SemesterId int
AS
BEGIN
SELECT sr.*
  FROM [dbo].[Student] st
  inner join SubjectResult sr on st.StudentId= sr.StudentId
  inner join Semester se on se.SemesterId= sr.SemesterId
  WHERE st.StudentId=@StudentId and se.SemesterId=@SemesterId

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Get_ReligionAll]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Courses All
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Get_ReligionAll]
AS
BEGIN
SELECT [ReligionId]
      ,[ReligionName]
      ,[IsDelete]
  FROM [dbo].[Religion]
  WHERE IsDelete = 0


END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_SemesterAll]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Subjets
-- =============================================
Create PROCEDURE [dbo].[sp_Get_SemesterAll]
AS
BEGIN
SELECT SemesterId
      ,SemesterName
	  ,CoefficientSemester
  FROM [dbo].Semester

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Student_byStudentId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Duy Le
-- Create date: 7/22/2020
-- Description:	Get employee by StudentID
-- =============================================
create PROCEDURE [dbo].[sp_Get_Student_byStudentId]
	@StudentId INT
AS
BEGIN
SELECT 
      [FirstName]
	  ,[LastName]
      ,(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender
	  ,FORMAT([DayOfBirth], 'yyyy-MM-dd') AS [DayOfBirth]
      ,[PlaceOfBirth]
	  ,[Address]
	  ,[PhoneNumber]
	  ,[FartherName]
	  ,[MortherName]
      ,[AvatarPath]
	  ,na.NationName as NationName
	  ,re.ReligionName as ReligionName
	  ,jo.JobName as JobName
  FROM [dbo].[Student] st
  inner join Nation na on na.NationId = st.NationId
  inner join Religion re on re.ReligionId = st.ReligionId
  inner join Job jo on jo.JobId=st.JobId
  WHERE StudentId = @StudentId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_StudentAll]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hong An
-- Create date: 08/03/2020
-- Description:	Get Student all
-- =============================================
create PROCEDURE [dbo].[sp_Get_StudentAll]
AS
BEGIN
SELECT
	   [StudentId]
      ,[FirstName]
	  ,[LastName]
      ,(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender
	  ,FORMAT([DayOfBirth], 'yyyy-MM-dd') AS [DayOfBirth]
      ,[PlaceOfBirth]
	  ,[Address]
	  ,[PhoneNumber]
	  ,[FartherName]
	  ,[MortherName]
      ,[AvatarPath]
	  ,na.NationName as NationName
	  ,re.ReligionName as ReligionName
	  ,st.JobName as JobName
  FROM [dbo].[Student] st
  inner join Nation na on na.NationId = st.NationId
  inner join Religion re on re.ReligionId = st.ReligionId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_StudentDetail]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hong An
-- Create date: 08/03/2020
-- Description:	Get Student Detail
-- =============================================
create PROCEDURE [dbo].[sp_Get_StudentDetail]
@StudentId INT
AS
BEGIN
SELECT
	   [StudentId]
      ,[FirstName]
	  ,[LastName]
      ,(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender
	  ,FORMAT([DayOfBirth], 'yyyy-MM-dd') AS [DayOfBirth]
      ,[PlaceOfBirth]
	  ,[Address]
	  ,[PhoneNumber]
	  ,[FartherName]
	  ,[MortherName]
      ,[AvatarPath]
	  ,na.NationId
	  ,na.NationName as NationName
	  ,re.ReligionId
	  ,re.ReligionName as ReligionName
	  ,st.JobName as JobName
  FROM [dbo].[Student] st
  inner join Nation na on na.NationId = st.NationId
  inner join Religion re on re.ReligionId = st.ReligionId
  WHERE StudentId = @StudentId
END











GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Students_byClassId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hong An
-- Create date: 08/04/2020
-- Description:	Get student by ClassId
-- =============================================
create PROCEDURE [dbo].[sp_Get_Students_byClassId]
	@ClassId INT
AS
BEGIN
SELECT cs.[StudentId]
	  ,cs.[ClassId]
      ,[FirstName]
	  ,[LastName]
      ,(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender
	  ,FORMAT([DayOfBirth], 'yyyy-MM-dd') AS [DayOfBirth]
      ,[PlaceOfBirth]
  FROM [dbo].[Student] st
  inner join ClassStudent cs on cs.StudentId=st.StudentId
  inner join Nation na on na.NationId = st.NationId
  inner join Religion re on re.ReligionId = st.ReligionId
  WHERE cs.ClassId = @ClassId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Students_New]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hong An
-- Create date: 08/04/2020
-- Description:	Get student by ClassId
-- =============================================
create PROCEDURE [dbo].[sp_Get_Students_New]
AS
BEGIN
SELECT st.StudentId,
		st.FirstName,
		st.LastName,
		(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender
  FROM [dbo].[Student] st
  
  WHERE NOT EXISTS	(
					SELECT st.*
					 from ClassStudent cs 
					 where cs.StudentId=st.StudentId
					 )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Subject_ByClassId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Subject_ByClassId]
@ClassId int
AS
BEGIN
SELECT  su.SubjectId,
		su.SubjectName,
		te.TeacherName,
		su.Coefficient	
FROM [dbo].ClassRoom cl
inner join ClassSubject clsu on clsu.ClassID=cl.ClassId
inner join Subject su on su.SubjectId=clsu.SubjectId
inner join Teacher te on te.TeacherId=clsu.TeacherId
Where cl.ClassId=@ClassId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Subject_ByClassId_SemesterId_SubjectId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Subject_ByClassId_SemesterId_SubjectId]
@SemesterId int,
@SubjectId int,
@ClassId int
AS
BEGIN
SELECT  
sure.SubjectResultId,
clstu.StudentId,
sure.SemesterId,
clsu.SubjectId,
sure.ListPoint,
sure.ListDate,
clsu.ClassId
FROM [dbo].SubjectResult Sure 
inner join ClassSubject clsu on clsu.ClassSubjectId = sure.ClassSubjectId
inner join ClassStudent clstu on clstu.ClassStudentId=sure.ClassStudentId
Where  sure.SemesterId=@SemesterId 
		and clsu.SubjectId=@SubjectId 
		and clsu.ClassId=@ClassId 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Subject_BySubjectResultId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Subject_BySubjectResultId]
@SubjectResultId int
AS
BEGIN
SELECT  
sure.SubjectResultId,
sure.ClassStudentId,
sure.SemesterId,
sure.ClassSubjectId,
sure.ListPoint,
sure.ListDate
FROM [dbo].SubjectResult Sure
Where  sure.SubjectResultId=@SubjectResultId 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_SubjectAll]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Subjets
-- =============================================
Create PROCEDURE [dbo].[sp_Get_SubjectAll]
AS
BEGIN
SELECT SubjectId
      ,SubjectName
	  ,Coefficient
  FROM [dbo].Subject

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_SubjectResult_ByClassId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_SubjectResult_ByClassId]
@ClassId int
AS
BEGIN
SELECT  
su.StudentId,
clsu.SubjectId,
sure.SubjectResultId,
sure.ClassStudentId,
sure.SemesterId,
sure.ClassSubjectId,
sure.ListPoint,
sure.ListDate

FROM [dbo].SubjectResult Sure
inner join ClassStudent clstu on sure.ClassStudentId=clstu.ClassStudentId
inner join Student su on clstu.StudentId=su.StudentId
inner join ClassSubject clsu on clsu.ClassSubjectId=sure.ClassSubjectId
Where clstu.ClassId=@ClassId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_SubjectResult_ByClassId_StudentId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_SubjectResult_ByClassId_StudentId]
@ClassId int,
@StudentId int
AS
BEGIN
SELECT  distinct
sure.SubjectResultId,
sure.SemesterId,
sure.ListPoint,
sure.ListDate,
su.SubjectName,
te.TeacherName


FROM [dbo].SubjectResult Sure
inner join ClassStudent clstu on sure.ClassStudentId= clstu.ClassStudentId
inner join ClassSubject clsu on clsu.ClassSubjectId=sure.ClassSubjectId
inner join Subject su on su.SubjectId = clsu.SubjectId
inner join Teacher te on te.TeacherId = clsu.TeacherId
Where clstu.ClassId=@ClassId  and clstu.StudentId=@StudentId 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_All]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hong An
-- Create date: 08/03/2020
-- Description:	Get Student all
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Teacher_All]
AS
BEGIN
SELECT
	   TeacherId
      ,TeacherName
	   ,FORMAT([DayOfBirth], 'yyyy-MM-dd') AS [DayOfBirth]
      ,(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender	 
      ,PlaceOfBirth
	  ,[Address]
	  ,Phone
	  ,SubjectId
      ,AvatarPath
	  ,DegreeId
	  ,FORMAT([DayToWork], 'yyyy-MM-dd') AS [DayToWork]
  FROM [dbo].Teacher
  where IsDelete=0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_ByClassId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
Create PROCEDURE [dbo].[sp_Get_Teacher_ByClassId] 
@ClassId int
AS
BEGIN
SELECT  cl.[ClassId]
      ,[ClassName]
	  ,te.TeacherId
	  ,te.TeacherName as TeacherName
		
FROM [dbo].ClassRoom cl
inner join Teacher te on te.TeacherId =cl.TeacherId
Where cl.ClassId=@ClassId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_ById]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duc Tran
-- Create date: 8/03/2020
-- Description: Get all teacher by id
-- =============================================
create PROCEDURE [dbo].[sp_Get_Teacher_ById]
@TeacherId INT
AS
BEGIN
SELECT [TeacherId]
      ,[TeacherName]
      ,FORMAT([DayOfBirth], 'yyyy-MM-dd') AS [DayOfBirth]
      ,[PlaceOfBirth]
      ,[Gender]
      ,[Phone]
      ,[Address]
      ,t.[SubjectId]
	  ,s.SubjectName
      ,[AvatarPath]
      ,t.[DegreeId]
	  ,d.DegreeName
	  ,FORMAT([DayToWork], 'yyyy-MM-dd') AS [DayToWork]
	FROM [dbo].[Teacher] t
	inner join Degree d ON  d.DegreeId = t.DegreeId
	inner join Subject s ON  s.SubjectId = t.SubjectId
	WHERE TeacherId = @TeacherId ANd t.IsDelete = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_bySubjectId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hong An
-- Create date: 08/03/2020
-- Description:	Get Student all
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Teacher_bySubjectId]
@SubjectId INT
AS
BEGIN
SELECT TeacherId
      ,TeacherName
	   ,FORMAT([DayOfBirth], 'yyyy-MM-dd') AS [DayOfBirth]
      ,(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender	 
	  ,Phone
      ,AvatarPath
  FROM [dbo].Teacher te
  inner join Subject su on su.SubjectId=te.SubjectId
  where su.SubjectId=@SubjectId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Save_Point]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveDepartment]    Script Date: 7/22/2020 10:52:18 AM ******/


-- =============================================
-- Author:		Duy Le
-- Create date: 7/14/2020
-- Description:	create/update Student
-- =============================================
Create PROCEDURE [dbo].[sp_Save_Point]
		@SubjectResultId int,
		@StudentId int,
		@SemesterId int,
		@SubjectId int,
		@Point float,
		@TypePointId int,
		@CourseId int,
		@ClassId int
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new Department
		IF(CONVERT(INT, @SubjectResultId) IS NULL OR CONVERT(INT, @SubjectResultId) = 0)
		BEGIN

INSERT INTO [dbo].[SubjectResult]
           ([StudentId]
           ,[SemesterId]
           ,[SubjectId]
           ,[Point]
           ,[DateInput]
           ,[TypePointId]
           ,[CourseId]
           ,[IsDelete]
           ,[ClassId])
     VALUES
           (@StudentId
           ,@SemesterId
           ,@SubjectId
           ,@Point
           ,GETDATE()
           ,@TypePointId
           ,@CourseId
           ,0
           ,@ClassId)
			SET @SubjectResultId = SCOPE_IDENTITY()
			SET @Message = 'Point has been created successfully!'
			END
		ELSE --Update Employee by Id
		BEGIN



UPDATE [dbo].[SubjectResult]
   SET 
      [Point] = @Point
      ,[DateInput] = GETDATE()
	 WHERE SubjectResultId = @SubjectResultId
			 SET @Message = 'Point has been updated successfully!'
		END

		SELECT @SubjectResultId AS SubjectResultId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SET @SubjectResultId = 0
		SELECT @SubjectResultId AS SubjectResultId, @Message AS [Message]
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Save_Student]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveDepartment]    Script Date: 7/22/2020 10:52:18 AM ******/


-- =============================================
-- Author:		Duy Le
-- Create date: 7/14/2020
-- Description:	create/update Student
-- =============================================
Create PROCEDURE [dbo].[sp_Save_Student]
		@StudentId int,
		@FirstName nvarchar(50),
		@LastName nvarchar(50),
		@Gender bit,
        @DayOfBirth datetime,
        @PlaceOfBirth nvarchar(200),
		@Address nvarchar(200),
		@NationId int,
		@ReligionId int,
		@FartherName nvarchar(50),
		@MortherName nvarchar(50),
		@JobId int,
		@PhoneNumber nvarchar(50),
		@AvatarPath nvarchar(MAX)
		
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new Department
		IF(CONVERT(INT, @StudentId) IS NULL OR CONVERT(INT, @StudentId) = 0)
		BEGIN
INSERT INTO [dbo].[Student]
           ([FirstName]
           ,[LastName]
           ,[Gender]
           ,[DayOfBirth]
           ,[PlaceOfBirth]
           ,[Address]
           ,[NationId]
           ,[ReligionId]
           ,[FartherName]
           ,[MortherName]
           ,[JobId]
           ,[PhoneNumber]
           ,[AvatarPath]
           ,[IsDelete])
     VALUES
           (@FirstName
           ,@LastName
           ,@Gender
           ,@DayOfBirth
           ,@PlaceOfBirth
           ,@Address
           ,@NationId
           ,@ReligionId
           ,@FartherName
           ,@MortherName
           ,@JobId
           ,@PhoneNumber
           ,@AvatarPath
           ,0)
			SET @StudentId = SCOPE_IDENTITY()
			SET @Message = 'Student has been created successfully!'
			END
		ELSE --Update Employee by Id
		BEGIN


UPDATE [dbo].[Student]
   SET [FirstName] = @FirstName
      ,[LastName] = @LastName
      ,[Gender] = @Gender
      ,[DayOfBirth] = @DayOfBirth
      ,[PlaceOfBirth] = @PlaceOfBirth
      ,[Address] = @Address
      ,[NationId] = @NationId
      ,[ReligionId] = @ReligionId
      ,[FartherName] = @FartherName
      ,[MortherName] = @MortherName
      ,[JobId] = @JobId
      ,[PhoneNumber] = @PhoneNumber
      ,[AvatarPath] = @AvatarPath
	 WHERE StudentId = @StudentId
			 SET @Message = 'Student has been updated successfully!'
		END

		SELECT @StudentId AS StudentId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SET @StudentId = 0
		SELECT @StudentId AS StudentId, @Message AS [Message]
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Save_SubjectResult]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveDepartment]    Script Date: 7/22/2020 10:52:18 AM ******/


-- =============================================
-- Author:		Duy Le
-- Create date: 7/14/2020
-- Description:	create/update Student
-- =============================================
CREATE PROCEDURE [dbo].[sp_Save_SubjectResult]
		@SubjectResultId int,
		@ClassStudentId int,
		@SemesterId int,
		@ClassSubjectId int,
		@ListPoint nvarchar(500),
		@ListDate nvarchar(500)
	
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new Department
			IF(CONVERT(INT, @SubjectResultId) IS NULL OR CONVERT(INT, @SubjectResultId) = 0)
		BEGIN

INSERT INTO [dbo].[SubjectResult]
           ([ClassStudentId]
           ,[SemesterId]
           ,[ClassSubjectId]
           ,[ListPoint]
           ,[ListDate]
		   )
     VALUES
           (@ClassStudentId
           ,@SemesterId
           ,@ClassSubjectId
           ,@ListPoint
           ,@ListDate)
		   SET @SubjectResultId = SCOPE_IDENTITY()
			SET @Message = 'Point has been created successfully!'
			END
		ELSE
		BEGIN
UPDATE [dbo].[SubjectResult]
   SET 
      [ListPoint] = @ListPoint
      ,[ListDate] = @ListDate
	 WHERE SubjectResultId = @SubjectResultId
			 SET @Message = 'Point has been updated successfully!'
		END

		SELECT @SubjectResultId AS SubjectResultId, @Message AS [Message]

	END TRY
	BEGIN CATCH
		SET @SubjectResultId = 0
		SELECT @SubjectResultId AS SubjectResultId, @Message AS [Message]
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Save_Teacher]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duc Tran
-- Create date: 8/03/2020
-- Description: Save teacher
-- =============================================
CREATE PROCEDURE [dbo].[sp_Save_Teacher]
@TeacherId INT
,@TeacherName nvarchar(50)
,@DayOfBirth nvarchar(20)
,@PlaceOfBirth nvarchar(50)
,@Gender bit
,@Phone nvarchar(50)
,@Address nvarchar(50)
,@SubjectId int
,@AvatarPath nvarchar(max)
,@DegreeId int
,@DayToWork nvarchar(20)
AS
BEGIN
DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new Teacher
		IF(@TeacherId IS NULL OR @TeacherId = 0)
		BEGIN
	INSERT INTO [dbo].[Teacher]
      ([TeacherName]
      ,[DayOfBirth]
      ,[PlaceOfBirth]
      ,[Gender]
      ,[Phone]
      ,[Address]
      ,[SubjectId]
      ,[AvatarPath]
      ,[DegreeId]
      ,[IsDelete]
      ,[DayToWork])
	   VALUES
           (@TeacherName
           ,CONVERT(datetime,@DayOfBirth, 111)
		   ,@PlaceOfBirth
           ,CONVERT(bit,@Gender)
		   ,@Phone
           ,@Address
           ,@SubjectId
           ,@AvatarPath
		   ,@DegreeId
           ,0
		   ,CONVERT(datetime,@DayToWork,111))
			SET @TeacherId = SCOPE_IDENTITY()
			SET @Message = 'Teacher has been created successfully!'
		END
		ELSE --Update Teacher by Id
		BEGIN
	UPDATE [dbo].[Teacher]
	   SET	[TeacherName] = @TeacherName
			   ,[DayOfBirth] = @DayOfBirth
			   ,[PlaceOfBirth] = @PlaceOfBirth
			   ,[Gender] = @Gender
			   ,[Phone] = @Phone
			   ,[Address] = @Address
			   ,[SubjectId] = @SubjectId
			   ,[AvatarPath] = @AvatarPath
			   ,[DegreeId] = @DegreeId
			    ,DayToWork = @DayOfBirth
		WHERE TeacherId = @TeacherId
				SET @Message = 'Teacher has been updated successfully!'
		END
		SELECT @TeacherId AS TeacherId, @Message AS [Message]
	END TRY
	BEGIN CATCH
		SET @TeacherId = 0
		SELECT @TeacherId AS TeacherId, @Message AS [Message]
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Subjects_byClassId]    Script Date: 8/18/2020 10:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get Student by Subjects
-- =============================================
create pROCEDURE [dbo].[sp_Subjects_byClassId]
	@ClassId INT
AS
BEGIN
SELECT s.[SubjectId]
      ,[SubjectName]
	  
  FROM [dbo].[Subject] s
  inner join [dbo].[ClassSubject] cs on s.SubjectId=cs.SubjectId
  WHERE cs.ClassId = @ClassId
END
GO

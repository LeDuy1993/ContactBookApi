USE [WebContactBook]
GO
/****** Object:  Table [dbo].[ClassRoom]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[ClassStudent]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[ClassSubjectTeacher]    Script Date: 8/11/2020 2:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassSubjectTeacher](
	[ClassID] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[Degree]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[Grade]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[Nation]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[Religion]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[Semester]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[SemesterResult]    Script Date: 8/11/2020 2:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemesterResult](
	[CourseId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[SemesterPoint] [float] NOT NULL,
	[DateAdded] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[Subject]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[SubjectResult]    Script Date: 8/11/2020 2:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectResult](
	[SubjectResultId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[Point] [decimal](4, 2) NULL,
	[DateInput] [date] NULL,
	[TypePointId] [int] NOT NULL,
	[CourseId] [int] NULL,
	[IsDelete] [bit] NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [PK_SubjectResult] PRIMARY KEY CLUSTERED 
(
	[SubjectResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  Table [dbo].[TypePoint]    Script Date: 8/11/2020 2:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePoint](
	[TypePointId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[Coefficient] [int] NOT NULL,
 CONSTRAINT [PK_TypePoint] PRIMARY KEY CLUSTERED 
(
	[TypePointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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

INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (2, 14, 2)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (4, 15, 3)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (5, 14, 4)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (6, 14, 5)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (7, 14, 10)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (8, 14, 18)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (9, 14, 19)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (10, 14, 20)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (11, 14, 21)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (12, 14, 22)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (13, 14, 23)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (14, 14, 24)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (15, 14, 25)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (17, 14, 26)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (18, 14, 27)
INSERT [dbo].[ClassStudent] ([ClassStudentId], [ClassId], [StudentId]) VALUES (19, 14, 28)
SET IDENTITY_INSERT [dbo].[ClassStudent] OFF
GO
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (14, 1, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (14, 2, 3)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (14, 3, 4)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (14, 4, 6)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (14, 5, 7)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (14, 6, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (14, 7, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (14, 8, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (15, 1, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (15, 2, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (15, 3, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (15, 4, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (15, 5, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (17, 1, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (17, 2, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (17, 3, 1)
INSERT [dbo].[ClassSubjectTeacher] ([ClassID], [SubjectId], [TeacherId]) VALUES (17, 4, 1)
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

INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (2, N'Duy', N'1', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'Tp Hue', N'28 Nguyen Tri Phuong', 1, 1, N'Le Duy', N'Duy le', N'Kinh doanh', N'0909898789', N'abc', 1)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (3, N'Duc', N'Cong', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Tp Hue', N'29 Nguyenx Hue', 1, 1, N'Duc Cap', N'Cap Duc', N'Nội trợ', N'0989876546', N'cdf', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (4, N'Duy', N'2', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Huệ', N'30 NTP', 1, 1, N'Phương Hà', N'Phương Hà', N'Kinh doanh', N'0000000000', N'xyz', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (5, N'Duy', N'3', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Huệ', N'31 NTP', 1, 1, N'Phương Hà', N'Phương Hà ', N'Công nhân', N'1111111111', N'xyz', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (10, N'Duy', N'4', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'Huệ', N'32 NTP ', 1, 1, N'Phương Hà', N'Phương Hà', N'Kinh doanh', N'2222222222', N'asd', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (11, N'Le', N'Duy', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Hue', N'CodeGym', 1, 1, N'Ba Le Duy', N'Me Le Duy', N'Kiến trúc', N'0363457343', N'Duy dep trai', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (12, N'Hồng', N'Ân', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Hue', N'CodeGym', 1, 1, N'Mẹ Hồng Ân', N'Ba Hồng Ân', N'Bán hàng', N'0123456789', N'Ân Đẹp Gái Dệ Sợ', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (13, N'Hồng', N'Ân', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Hue', N'CodeGym', 1, 1, N'Mẹ Hồng Ân', N'Ba Hồng Ân', N'Bán hàng', N'0321654987', N'Ân Xấu Gái Dệ Sợ', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (14, N'Hữu', N'Đức', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Huế', N'CodeGym', 1, 1, N'Mẹ Duy', N'Ba Duy', N'Kinh doanh', N'0321654987', N'Duy đẹp trai', 0)
INSERT [dbo].[Student] ([StudentId], [FirstName], [LastName], [Gender], [DayOfBirth], [PlaceOfBirth], [Address], [NationId], [ReligionId], [FartherName], [MortherName], [JobName], [PhoneNumber], [AvatarPath], [IsDelete]) VALUES (15, N'Lê', N'Vũ', 1, CAST(N'2020-02-02T00:00:00.000' AS DateTime), N'BV Huế', N'CodeGym', 1, 1, N'Mẹ Duy', N'Ba Duy', N'Kinh doanh', N'0321654987', N'Duy đẹp trai', 0)
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
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (14, N'Sinh học', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (15, N'Lịch sử', 1)
INSERT [dbo].[Subject] ([SubjectId], [SubjectName], [Coefficient]) VALUES (16, N'Ngoại Ngữ ', 1)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[SubjectResult] ON 

INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1, 2, 1, 1, CAST(5.60 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (2, 4, 1, 1, CAST(9.60 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (3, 4, 1, 1, CAST(6.30 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (5, 2, 1, 1, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (6, 2, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (7, 2, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (8, 2, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (11, 2, 1, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (12, 2, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (14, 2, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (15, 4, 1, 1, CAST(2.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (16, 2, 2, 1, CAST(6.90 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (17, 2, 1, 1, CAST(8.60 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (18, 2, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (19, 10, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (20, 10, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (21, 10, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (22, 10, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (23, 2, 1, 1, CAST(8.60 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (24, 2, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (25, 2, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (26, 2, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (27, 2, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (28, 2, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (29, 2, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (30, 2, 2, 1, CAST(5.60 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (31, 2, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (32, 2, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (33, 2, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (34, 2, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (35, 2, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (36, 2, 2, 2, CAST(5.60 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (37, 2, 2, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (38, 2, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (39, 2, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (40, 2, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (41, 2, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (42, 2, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (43, 2, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (44, 2, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (45, 2, 1, 2, CAST(8.50 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (46, 2, 1, 2, CAST(7.75 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (47, 2, 1, 2, CAST(8.50 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (48, 2, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (49, 2, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (50, 2, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (51, 2, 1, 3, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (52, 2, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (53, 2, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (54, 2, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (55, 2, 2, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (56, 2, 2, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (57, 2, 2, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (58, 2, 2, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (59, 2, 2, 4, CAST(8.50 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (60, 2, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (61, 2, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (62, 2, 1, 4, CAST(5.60 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (63, 2, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (64, 2, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (65, 2, 2, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (66, 2, 2, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (67, 2, 2, 5, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (68, 2, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (69, 2, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (70, 2, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (71, 2, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (72, 2, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (73, 2, 1, 6, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (74, 2, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (75, 2, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (76, 2, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (77, 2, 2, 6, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (78, 2, 2, 6, CAST(5.60 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (79, 2, 2, 6, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (80, 2, 1, 7, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (81, 2, 1, 7, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (82, 2, 1, 7, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (83, 2, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (84, 2, 2, 7, CAST(1.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (85, 2, 2, 7, CAST(1.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (86, 2, 2, 7, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (87, 2, 2, 7, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (88, 2, 2, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (89, 2, 2, 8, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (90, 2, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (91, 2, 2, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (92, 2, 1, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (93, 2, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (94, 2, 1, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (95, 4, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (96, 4, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (97, 4, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (98, 4, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (99, 4, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (100, 4, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (101, 4, 1, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (102, 4, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (103, 5, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (104, 5, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (105, 5, 1, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (106, 5, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (107, 5, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (108, 5, 1, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (109, 5, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (110, 5, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (111, 5, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (112, 5, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (113, 5, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (114, 10, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (115, 10, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (116, 10, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (117, 10, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (118, 10, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (119, 10, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (120, 10, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (121, 4, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (122, 4, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (123, 4, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (124, 4, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (125, 4, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (126, 4, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (127, 4, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (128, 4, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (129, 4, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (130, 4, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (131, 4, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (132, 5, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (133, 5, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (134, 5, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (135, 5, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (136, 5, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (137, 5, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (138, 5, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (139, 5, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (140, 5, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (141, 5, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (142, 5, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (143, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (144, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (145, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (146, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (147, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (148, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (149, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (150, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (151, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (152, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (153, 10, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-10' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (154, 2, 1, 2, CAST(6.60 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (155, 2, 1, 2, CAST(9.60 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (156, 2, 1, 2, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (157, 4, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (158, 4, 2, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (159, 5, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (160, 5, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (161, 5, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (162, 5, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (163, 5, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (164, 5, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (165, 5, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (166, 5, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (167, 4, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (168, 4, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (169, 5, 2, 2, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (170, 2, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (171, 2, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (172, 2, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (173, 4, 2, 2, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (174, 10, 2, 2, CAST(1.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (175, 10, 2, 2, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (176, 4, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (177, 2, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (178, 2, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (179, 2, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (180, 2, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (181, 2, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (182, 2, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (183, 2, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (184, 4, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (185, 4, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (186, 4, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (187, 4, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (188, 4, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (189, 4, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (190, 4, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (191, 4, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (192, 4, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (193, 4, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (194, 5, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (195, 5, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (196, 5, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (197, 5, 1, 4, CAST(5.60 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (198, 5, 1, 4, CAST(6.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (199, 5, 1, 4, CAST(8.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (200, 5, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (201, 5, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (202, 5, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (203, 10, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (204, 10, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (205, 10, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (206, 10, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (207, 10, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (208, 10, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (209, 10, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (210, 10, 1, 4, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (211, 10, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (212, 10, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (213, 2, 2, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (214, 2, 2, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (215, 2, 2, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (216, 2, 2, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (217, 2, 2, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (218, 4, 2, 4, CAST(8.80 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (219, 4, 2, 4, CAST(9.80 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (220, 4, 2, 4, CAST(8.60 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (221, 4, 2, 4, CAST(7.80 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (222, 4, 2, 4, CAST(8.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (223, 4, 2, 4, CAST(8.60 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (224, 4, 2, 4, CAST(6.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (225, 4, 2, 4, CAST(8.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (226, 4, 2, 4, CAST(8.60 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (227, 4, 2, 4, CAST(7.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (228, 4, 2, 4, CAST(6.50 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (229, 5, 2, 4, CAST(8.80 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (230, 5, 2, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (231, 5, 2, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (232, 5, 2, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (233, 5, 2, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (234, 5, 2, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (235, 5, 2, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (236, 5, 2, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (237, 10, 2, 4, CAST(8.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (238, 10, 2, 4, CAST(8.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (239, 10, 2, 4, CAST(6.80 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (240, 10, 2, 4, CAST(9.80 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (241, 10, 2, 4, CAST(8.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (242, 10, 2, 4, CAST(8.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (243, 10, 2, 4, CAST(6.80 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (244, 10, 2, 4, CAST(6.80 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (245, 2, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (246, 2, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (247, 2, 2, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (248, 2, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (249, 2, 2, 3, CAST(8.60 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (250, 2, 2, 3, CAST(8.90 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (251, 4, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (252, 4, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (253, 4, 2, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (254, 4, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (255, 4, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (256, 4, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (257, 4, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (258, 4, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (259, 5, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (260, 5, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (261, 5, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (262, 5, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (263, 5, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (264, 5, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (265, 5, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (266, 5, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (267, 10, 2, 3, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (268, 10, 2, 3, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (269, 10, 2, 3, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (270, 10, 2, 3, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (271, 10, 2, 3, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (272, 10, 2, 3, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (273, 10, 2, 3, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (274, 10, 2, 3, CAST(6.80 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (275, 2, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (276, 2, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (277, 2, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (278, 4, 1, 3, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (279, 4, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (280, 4, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (281, 4, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (282, 4, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (283, 4, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (284, 4, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (285, 4, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (286, 5, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (287, 5, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (288, 5, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (289, 5, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (290, 5, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (291, 5, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (292, 5, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (293, 5, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (294, 10, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (295, 10, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (296, 10, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (297, 10, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (298, 10, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (299, 10, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (300, 10, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (301, 10, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (302, 10, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (303, 2, 2, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (304, 2, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (305, 2, 2, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (306, 2, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (307, 4, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (308, 4, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (309, 4, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (310, 4, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (311, 4, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (312, 4, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (313, 4, 2, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (314, 4, 2, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (315, 5, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (316, 5, 2, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (317, 5, 2, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (318, 5, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (319, 10, 2, 5, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (320, 10, 2, 5, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (321, 10, 2, 5, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (322, 10, 2, 5, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (323, 10, 2, 5, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (324, 10, 2, 5, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (325, 10, 2, 5, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (326, 10, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (327, 10, 2, 5, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (328, 10, 2, 5, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (329, 10, 2, 5, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (330, 2, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (331, 2, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (332, 2, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (333, 2, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (334, 4, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (335, 4, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (336, 4, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (337, 4, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (338, 4, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (339, 4, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (340, 4, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (341, 4, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (342, 5, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (343, 5, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (344, 5, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (345, 5, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (346, 5, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (347, 5, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (348, 5, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (349, 5, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (350, 5, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (351, 10, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (352, 10, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (353, 10, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (354, 10, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (355, 10, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (356, 10, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (357, 10, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (358, 10, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (359, 10, 1, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (360, 10, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (361, 10, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (362, 5, 1, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (363, 5, 2, 5, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (364, 5, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (365, 5, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (366, 5, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (367, 5, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (368, 4, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (369, 2, 2, 5, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (370, 2, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (371, 4, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (372, 5, 2, 6, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (373, 10, 2, 6, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (374, 2, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (375, 4, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (376, 5, 2, 6, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (377, 10, 2, 6, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (378, 2, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (379, 4, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (380, 5, 2, 6, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (381, 10, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (382, 4, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (383, 5, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (384, 10, 2, 6, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (385, 10, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (386, 5, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (387, 4, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (388, 2, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (389, 2, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (390, 4, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (391, 5, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (392, 10, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (393, 10, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (394, 10, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (395, 5, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (396, 4, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (397, 10, 2, 6, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (398, 10, 2, 6, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (399, 5, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (400, 4, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (401, 2, 2, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (402, 4, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (403, 5, 2, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (404, 2, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (405, 4, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (406, 5, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (407, 10, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (408, 5, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (409, 4, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (410, 5, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (411, 5, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (412, 4, 1, 6, CAST(8.60 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (413, 4, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (414, 4, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (415, 5, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (416, 5, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (417, 10, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (418, 5, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (419, 2, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (420, 2, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (421, 10, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (422, 10, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (423, 10, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (424, 10, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (425, 10, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (426, 10, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (427, 4, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (428, 10, 1, 6, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (429, 10, 1, 6, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (430, 2, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (431, 2, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (432, 4, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (433, 2, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (434, 4, 1, 6, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (435, 4, 1, 6, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (436, 5, 1, 6, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (437, 2, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (438, 2, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (439, 2, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (440, 4, 1, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (441, 4, 1, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (442, 4, 1, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (443, 2, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (444, 2, 1, 7, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (445, 2, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (446, 4, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (447, 4, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (448, 4, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (449, 4, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (450, 4, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (451, 4, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (452, 5, 1, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (453, 5, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (454, 5, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (455, 5, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (456, 5, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (457, 5, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (458, 5, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (459, 5, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (460, 5, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (461, 10, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (462, 10, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (463, 10, 1, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (464, 10, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (465, 10, 1, 7, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (466, 10, 1, 7, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (467, 10, 1, 7, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (468, 10, 1, 7, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (469, 10, 1, 7, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (470, 10, 1, 7, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (471, 10, 1, 7, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (472, 5, 1, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (473, 4, 1, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (474, 2, 1, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (475, 2, 2, 7, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (476, 4, 2, 7, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (477, 5, 2, 7, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (478, 10, 2, 7, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (479, 10, 2, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (480, 5, 2, 7, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (481, 4, 2, 7, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (482, 2, 2, 7, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (483, 10, 2, 7, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (484, 5, 2, 7, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (485, 4, 2, 7, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (486, 4, 2, 7, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (487, 4, 2, 7, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (488, 4, 2, 7, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (489, 4, 2, 7, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (490, 4, 2, 7, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (491, 4, 2, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (492, 2, 2, 7, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (493, 2, 2, 7, CAST(1.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (494, 2, 2, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (495, 10, 2, 7, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (496, 10, 2, 7, CAST(1.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (497, 10, 2, 7, CAST(1.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (498, 10, 2, 7, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (499, 10, 2, 7, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (500, 10, 2, 7, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (501, 10, 2, 7, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (502, 5, 2, 7, CAST(2.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (503, 5, 2, 7, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (504, 5, 2, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (505, 5, 2, 7, CAST(2.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (506, 5, 2, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (507, 2, 2, 7, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (508, 2, 2, 7, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (509, 4, 2, 7, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (510, 4, 2, 7, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (511, 5, 2, 7, CAST(0.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (512, 5, 2, 7, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (513, 5, 2, 7, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (514, 10, 2, 7, CAST(1.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (515, 2, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (516, 4, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (517, 5, 1, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (518, 10, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (519, 10, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (520, 10, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (521, 10, 1, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (522, 10, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (523, 10, 1, 8, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (524, 10, 1, 8, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (525, 10, 1, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (526, 10, 1, 8, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (527, 10, 1, 8, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (528, 5, 1, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (529, 4, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (530, 2, 1, 8, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (531, 2, 1, 8, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (532, 2, 1, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (533, 2, 1, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (534, 2, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (535, 2, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (536, 4, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (537, 4, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (538, 4, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (539, 4, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (540, 4, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (541, 4, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (542, 4, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (543, 5, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (544, 5, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (545, 5, 1, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (546, 5, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (547, 5, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (548, 5, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (549, 5, 1, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (550, 2, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (551, 2, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (552, 2, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (553, 2, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (554, 4, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (555, 4, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (556, 4, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (557, 4, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (558, 4, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (559, 4, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (560, 4, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (561, 4, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (562, 4, 2, 8, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (563, 5, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (564, 5, 2, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (565, 5, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (566, 5, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (567, 5, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (568, 5, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (569, 5, 2, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (570, 5, 2, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (571, 5, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (572, 5, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (573, 10, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (574, 10, 2, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (575, 10, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (576, 10, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (577, 10, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (578, 10, 2, 8, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (579, 10, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (580, 10, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (581, 10, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (582, 10, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (583, 5, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (584, 4, 2, 8, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (585, 10, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (586, 10, 1, 2, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (587, 10, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (588, 10, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (589, 10, 1, 2, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (590, 10, 1, 2, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (591, 10, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (592, 10, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (593, 10, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (594, 10, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (595, 10, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (596, 5, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (597, 5, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (598, 5, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (599, 5, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (600, 5, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (601, 5, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (602, 5, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (603, 5, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (604, 5, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (605, 5, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (606, 5, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (607, 4, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (608, 4, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (609, 4, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (610, 4, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (611, 4, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (612, 4, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (613, 4, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (614, 4, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (615, 4, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (616, 4, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (617, 4, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (618, 10, 2, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (619, 10, 2, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (620, 10, 2, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (621, 10, 2, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (622, 10, 2, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (623, 10, 2, 2, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (624, 10, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (625, 10, 2, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (626, 4, 2, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (627, 4, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (628, 4, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (629, 4, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (630, 5, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (631, 4, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (632, 5, 2, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (633, 10, 2, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (634, 2, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (635, 2, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (636, 18, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (637, 18, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (638, 18, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (639, 18, 1, 1, CAST(7.50 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (640, 18, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (641, 18, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (642, 18, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (643, 18, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (644, 18, 1, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (645, 18, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (646, 18, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (647, 19, 1, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (648, 19, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (649, 19, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (650, 19, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (651, 19, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (652, 19, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (653, 19, 1, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (654, 19, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (655, 19, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (656, 19, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (657, 20, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (658, 20, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (659, 20, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (660, 20, 1, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (661, 20, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (662, 20, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (663, 20, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (664, 20, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (665, 20, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (666, 20, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (667, 20, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (668, 21, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (669, 21, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (670, 21, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (671, 21, 1, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (672, 21, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (673, 21, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (674, 21, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (675, 21, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (676, 21, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (677, 21, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (678, 21, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (679, 22, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (680, 22, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (681, 22, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (682, 22, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (683, 22, 1, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (684, 22, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (685, 22, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (686, 22, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (687, 22, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (688, 22, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (689, 23, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (690, 23, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (691, 23, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (692, 23, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (693, 23, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (694, 23, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (695, 23, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (696, 23, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (697, 23, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (698, 23, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (699, 24, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (700, 24, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (701, 24, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (702, 24, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (703, 24, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (704, 24, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (705, 24, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (706, 24, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (707, 24, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (708, 24, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (709, 25, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (710, 25, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (711, 25, 1, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (712, 25, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (713, 25, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (714, 25, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (715, 25, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (716, 25, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (717, 25, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (718, 25, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (719, 25, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (720, 26, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (721, 26, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (722, 26, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (723, 26, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (724, 26, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (725, 26, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (726, 26, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (727, 26, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (728, 26, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (729, 26, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (730, 26, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (731, 27, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (732, 27, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (733, 27, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (734, 27, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (735, 27, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (736, 27, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (737, 27, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (738, 27, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (739, 27, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (740, 27, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (741, 28, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (742, 28, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (743, 28, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (744, 28, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (745, 28, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (746, 28, 1, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (747, 28, 1, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (748, 28, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (749, 28, 1, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (750, 28, 1, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (751, 28, 1, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (752, 18, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (753, 18, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (754, 18, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (755, 18, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (756, 18, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (757, 18, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (758, 18, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (759, 18, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (760, 18, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (761, 18, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (762, 18, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (763, 19, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (764, 19, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (765, 19, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (766, 19, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (767, 19, 2, 1, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (768, 19, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (769, 19, 2, 1, CAST(2.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (770, 19, 2, 1, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (771, 19, 2, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (772, 19, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (773, 19, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (774, 20, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (775, 20, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (776, 20, 2, 1, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (777, 20, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (778, 20, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (779, 20, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (780, 20, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (781, 20, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (782, 20, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (783, 20, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (784, 20, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (785, 21, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (786, 21, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (787, 21, 2, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (788, 21, 2, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (789, 21, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (790, 21, 2, 1, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (791, 21, 2, 1, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (792, 21, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (793, 21, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (794, 21, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (795, 21, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (796, 22, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (797, 22, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (798, 22, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (799, 22, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (800, 22, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (801, 22, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (802, 22, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (803, 22, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (804, 22, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (805, 22, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (806, 22, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (807, 23, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (808, 23, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (809, 23, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (810, 23, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (811, 23, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (812, 23, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (813, 23, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (814, 23, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (815, 23, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (816, 23, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (817, 23, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (818, 24, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (819, 24, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (820, 24, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (821, 24, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (822, 24, 2, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (823, 24, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (824, 24, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (825, 24, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (826, 24, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (827, 24, 2, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (828, 24, 2, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (829, 24, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (830, 25, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (831, 25, 2, 1, CAST(1.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (832, 25, 2, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (833, 25, 2, 1, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (834, 25, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (835, 25, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (836, 25, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (837, 25, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (838, 25, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (839, 25, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (840, 25, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (841, 26, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (842, 26, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (843, 26, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (844, 26, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (845, 26, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (846, 26, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (847, 26, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (848, 26, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (849, 26, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (850, 26, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (851, 26, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (852, 27, 2, 1, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (853, 27, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (854, 27, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (855, 27, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (856, 27, 2, 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (857, 27, 2, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (858, 27, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (859, 27, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (860, 27, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (861, 27, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (862, 27, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (863, 28, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (864, 28, 2, 1, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (865, 28, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (866, 28, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (867, 28, 2, 1, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (868, 28, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (869, 28, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (870, 28, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (871, 28, 2, 1, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (872, 28, 2, 1, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (873, 28, 2, 1, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (874, 3, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (875, 3, 1, 2, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (876, 3, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (877, 3, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (878, 3, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (879, 3, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (880, 3, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (881, 3, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (882, 3, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (883, 3, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (884, 3, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (885, 3, 2, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (886, 3, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (887, 3, 2, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (888, 3, 2, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (889, 3, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (890, 3, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (891, 3, 2, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (892, 3, 2, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (893, 3, 2, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (894, 3, 2, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (895, 3, 2, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 15)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (896, 18, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (897, 18, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (898, 18, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (899, 18, 1, 2, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (900, 18, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (901, 18, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (902, 18, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (903, 18, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (904, 19, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (905, 19, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (906, 19, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (907, 19, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (908, 19, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (909, 19, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (910, 19, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (911, 19, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (912, 19, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (913, 19, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (914, 20, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (915, 20, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (916, 20, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (917, 20, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (918, 20, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (919, 20, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (920, 20, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (921, 20, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (922, 20, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (923, 20, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (924, 20, 1, 2, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (925, 21, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (926, 21, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (927, 21, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (928, 21, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (929, 21, 1, 2, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (930, 21, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (931, 21, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (932, 21, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (933, 21, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (934, 21, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (935, 21, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (936, 22, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (937, 22, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (938, 22, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (939, 22, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (940, 22, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (941, 22, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (942, 22, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (943, 22, 1, 2, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (944, 22, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (945, 22, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (946, 22, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (947, 23, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (948, 23, 1, 2, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (949, 23, 1, 2, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (950, 23, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (951, 23, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (952, 23, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (953, 23, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (954, 23, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (955, 23, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (956, 23, 1, 2, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (957, 23, 1, 2, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (958, 24, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (959, 24, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (960, 24, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (961, 24, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (962, 24, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (963, 24, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (964, 24, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (965, 24, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (966, 24, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (967, 24, 1, 2, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (968, 24, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (969, 25, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (970, 25, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (971, 25, 1, 2, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (972, 25, 1, 2, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (973, 25, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (974, 25, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (975, 25, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (976, 25, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (977, 25, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (978, 25, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (979, 25, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (980, 26, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (981, 26, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (982, 26, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (983, 26, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (984, 26, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (985, 26, 1, 2, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (986, 26, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (987, 26, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (988, 26, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (989, 26, 1, 2, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (990, 26, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (991, 27, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (992, 27, 1, 2, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (993, 27, 1, 2, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (994, 27, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (995, 27, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (996, 27, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (997, 27, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (998, 27, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (999, 27, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1000, 27, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1001, 27, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1002, 28, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1003, 28, 1, 2, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1004, 28, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1005, 28, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1006, 28, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1007, 28, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1008, 28, 1, 2, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1009, 28, 1, 2, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1010, 28, 1, 2, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1011, 28, 1, 2, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1012, 28, 1, 2, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1013, 18, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1014, 19, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1015, 20, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1016, 21, 1, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1017, 22, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1018, 23, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1019, 24, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1020, 25, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1021, 26, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1022, 27, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1023, 28, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1024, 28, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1025, 27, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1026, 26, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1027, 25, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1028, 24, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1029, 23, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1030, 22, 1, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1031, 21, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1032, 20, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1033, 19, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1034, 18, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1035, 18, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1036, 19, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1037, 20, 1, 4, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1038, 21, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1039, 22, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1040, 23, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1041, 24, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1042, 25, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1043, 26, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1044, 27, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1045, 28, 1, 4, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1046, 28, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1047, 27, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1048, 26, 1, 4, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1049, 25, 1, 4, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1050, 24, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1051, 23, 1, 4, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1052, 22, 1, 4, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1053, 21, 1, 4, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1054, 20, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1055, 19, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1056, 18, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1057, 18, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1058, 19, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1059, 20, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1060, 21, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1061, 22, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1062, 23, 1, 4, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1063, 24, 1, 4, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1064, 25, 1, 4, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1065, 26, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1066, 27, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1067, 28, 1, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1068, 28, 1, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1069, 27, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1070, 26, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1071, 26, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1072, 25, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1073, 24, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1074, 23, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1075, 22, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1076, 21, 1, 4, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1077, 20, 1, 4, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1078, 19, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1079, 18, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1080, 18, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1081, 19, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1082, 20, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1083, 21, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1084, 22, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1085, 23, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1086, 24, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1087, 25, 1, 4, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1088, 18, 1, 4, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1089, 18, 1, 4, CAST(3.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1090, 18, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1091, 18, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1092, 19, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1093, 19, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1094, 19, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1095, 19, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1096, 20, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1097, 20, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1098, 20, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1099, 20, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1100, 21, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1101, 21, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1102, 21, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1103, 21, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1104, 22, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1105, 22, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1106, 22, 1, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1107, 22, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1108, 23, 1, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1109, 23, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1110, 23, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1111, 23, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1112, 24, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1113, 24, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1114, 24, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1115, 24, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1116, 25, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1117, 25, 1, 4, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1118, 25, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1119, 25, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1120, 26, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1121, 26, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1122, 26, 1, 4, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1123, 26, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1124, 26, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1125, 27, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1126, 27, 1, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1127, 27, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1128, 27, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1129, 27, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1130, 28, 1, 4, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1131, 28, 1, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1132, 28, 1, 4, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1133, 28, 1, 4, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1134, 28, 1, 4, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1135, 18, 1, 3, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1136, 18, 1, 3, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1137, 18, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1138, 18, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1139, 18, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1140, 18, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1141, 18, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1142, 18, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1143, 18, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1144, 18, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1145, 18, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1146, 19, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1147, 19, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1148, 19, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1149, 19, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1150, 19, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1151, 19, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1152, 19, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1153, 19, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1154, 19, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1155, 19, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1156, 19, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1157, 20, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1158, 20, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1159, 20, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1160, 20, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1161, 20, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1162, 20, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1163, 20, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1164, 20, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1165, 20, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1166, 20, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1167, 20, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1168, 21, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1169, 21, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1170, 21, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1171, 21, 1, 3, CAST(5.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1172, 21, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1173, 21, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1174, 21, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1175, 21, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1176, 21, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1177, 21, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1178, 21, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1179, 22, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1180, 22, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1181, 22, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1182, 22, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1183, 22, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1184, 22, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1185, 22, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1186, 22, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1187, 22, 1, 3, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1188, 22, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1189, 22, 1, 3, CAST(4.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1190, 22, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1191, 23, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1192, 23, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1193, 23, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1194, 23, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 4, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1195, 23, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 5, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1196, 23, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 7, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1197, 23, 1, 3, CAST(10.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 8, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1198, 23, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 9, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1199, 23, 1, 3, CAST(9.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 11, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1200, 23, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 12, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1201, 23, 1, 3, CAST(7.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 13, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1202, 24, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 1, 1, 0, 14)
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1203, 24, 1, 3, CAST(8.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 2, 1, 0, 14)
GO
INSERT [dbo].[SubjectResult] ([SubjectResultId], [StudentId], [SemesterId], [SubjectId], [Point], [DateInput], [TypePointId], [CourseId], [IsDelete], [ClassId]) VALUES (1204, 24, 1, 3, CAST(6.00 AS Decimal(4, 2)), CAST(N'2020-08-11' AS Date), 3, 1, 0, 14)
SET IDENTITY_INSERT [dbo].[SubjectResult] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (1, N'Hong An 2', CAST(N'2020-03-03' AS Date), N'Tp Hue', 1, N'0989878987', N'29/81 Nguyen Hue', 1, N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD//gAgQ29tcHJlc3NlZCBieSBqcGVnLXJlY29tcHJlc3MA/9sAQwACAQECAQECAgICAgICAgMFAwMDAwMGBAQDBQcGBwcHBgcHCAkLCQgICggHBwoNCgoLDAwMDAcJDg8NDA4LDAwM/9sAQwECAgIDAwMGAwMGDAgHCAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM/8AAEQgAZABkAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A/FL9kCW58O/tJeAdUhVvk1mBQQO7Nt6/ifyr6H/4Lz+F5tJ/bN0/UpFdo9Z8OWconK7VmZC6tgdBgbRgAdAcc1sfsg/s4W/i39mLTfFltbxyXWh6pazNN/ErGUMO38I/2unGCRz6N/wcW+DFx8HvEkULItxplxYSuYtu5k8plGcYOB27Z+uPiaeZxrZ3BLS3ND7rtH29fLXRyeXnyy/K/wCB89/sG6K13Fp95FD52yby5QBu4yeDjnB9O/H0r6i/ao/4Joap+2J+ztrnivwNY6lrHxK+GvlLHolrFNdT63o0k0rGG0t4UdpLiO4uGk5wDFu7oob5/wD+CVtmfEUGqaarDzo2FxAufmZgQcD64xn9cZr9UP2CPiFB8LP2jtEuJriVLXUHGmXQDfKI2JI78HoPxry8djKmGzKVSG8X96PVoYOGJytU5dUvvP52auabatcSKkatJJIQqqq7mY54AHcn0rtP2pfh4nwh+O+veEfsqWN14VaHR9QgXOI763gjhu+pJBNwkxIPQkjjpXu3wJ8IeF/C37GQ8RtYwHxP4vh1rSUu5AZHElrq3haeIJk4jIge9GVAYrLICSpAr9AqYiKpxn/MtP8AwFy/Q/P6FF+1cX0dvxS/U8b0H4B6xf8Ahu6um8uzuhE7wWzJ5kkpx90j+A4yB1OTyFpv7KXiaHwl8VNSvr2G4uVl8M69pKLFGZMzXuk3djFkjhVD3CkseAFzXuHhxDPEsY5GRj61658dfgR4b8A/s7/C3WtG0SysdW8WPq15rN1EmJLwxw6WE3n+6paZgBgAyyN1YmvmcVn0aVSGEqpt1m4q3S0ZSd+trJ/M+khk7qReIhKyp2bv1u0lboeF+NdYuviT4z13xBeKn2zXb+41S5CAiNZJ5WlfA9NzHFUfDHwv1n4ia/Y6B4f0nUde13WZD9m0/Tbd7m6uFHUrGgJ2juxAVepIFet/A79mPxZ+0jLH/wAI3ZNaeHmZkfW5ot0cwB2n7LGcefzkeacQqQfmcjYf1H/4Jw/s8/Cv9jHTZNQ8TXVrp8yKst9d3Uoe6u9vQySYBfGDgYCLztVRxXPiMZCk/efvdv8AP/L8jqo4RzjzJe7+fp/n+Z+UPxP/AOCJvx40XSDq+teG9J8MRbN32e+1VLi5HpuW1EyqfYsD64qn4N/4JnQ+DfBFv4k8Xa5b3dnb2YvpLeG2lght3MkiPG5lCtIw8sdFCYI5bmv00/4KV/8ABxj8HfDFneeFvh7odr4ouoR5X2hEHkg9Oo4P55r8lf2vP+CmfiT9qXwJpPh9NNh8P2NrbNBeCCQsbv8A0iaRfTjZIqn1KmvQwtTH14qMVyx77afPU83ELBUpOc9Zdt/vtof1Ef8ABD/xd4S/aE/4JZ/CTU9Hgsby00OwufDuAVJg+xXk9uFIB4yqK4HdZFPQiiv5Xf2UP+Civx+/ZF+Hd74b+FfjPxH4d8PX2ovqVxbafGWje6eKKNnPB+YpFEPooor2fq7j7qSdu71/I8X2nM+a7V+y/wCCfpP/AMED/Ddv8WP2MfHOjbY3uo7R1RHOWYoxOQOf72BkDJJ9CRif8F7PBzat+wL8PdW2sz6Pr32Z3OWxvhkyM+xUfXPsM4v/AAa2/EWMfEjxV4duG3rNFkxGUKsiOpBXb1OWwfTj8/b/APgt74IlsP8AgnH4y024HmHw3r1rMjHORmfYev8AvHjPvjrX5pOLoZ9b++vxf+TP0SNRV8q9Yfkrfoflb/wTl+KZ+HHxj0192FaddwLBQV/i5PHPT/Cv1yTwC2leJIr+0laGC4u476GZBudtrrkZz93B7dOPx/DX4CXV3Z/EHTJ7NWZre4UsB0x7+3Ff0XfsWeCG+Of7JtrDJJHLr2ix7/PkyxZCiknJ7ljkjtjnGa9Liij7PFe0j1Wpy5BiHLCJPofBH/BfT/gnPH491ay+OXw70e6bXtcntdN8V6Jar50l/ctCEiv4I1XJdvLCTKMlnZJACWlYfA/gvQfEfhe7h8F6vDdf2l4dv7u0TSUi3S2V00ipcphclpN0CKeoHl4Hcn+gr4+/DO61P9m3+3reO6ks9B8RaXvupMhZd11DEAB/e3Sc9hwOvA+h/Cv7K3wr/Z4sdS1bw74O8P6PqniCaXU9SvorRTd309wxmleWZsyOS7scFiAMAAAAV41Hi+vCo8uqwUlGKkns9XJW+VrK3oVisjw8UsZTbTlKUWltoov8b3fyZ/PFoHwh8aaffafaf8IN40uNR1WXybGyt9Fnee7cDJCgqAFCjczsVRRksQK/Rv4Mf8E4rf8AaY+Cnww/4TvT5JH8Ctf2V7oLXKTacl4r24l88p8t0I3h2qpPlMVLFXBAH0T8WfiX4Z1PX7ixVp/tCn5fsxCvGc9eDkVwtl8a/Enw9+DbabpN1JJpPiDUdblluTF515bynUJkW5DEgyH5QWjYgPg4ZCd1eXmOce3xmElC0XGU9U+9OS+X5nqYTAunhq3Orp8vTzv8zl/2uv2k/h1/wT8+GV6qS2cl95QQIMFiwXAQD24AA6AYHFfh/wDtWft0eMP2mvFd5Ncald2ejyu3l2kchVWUnjdg8/SpP2+9T+Jk37Qurab8Srj7Rqlu3nWptpGksbm2bmO4t2IBaN15yyqyncrqjqyLu/sO/sE6t+09r3267gaHw7ZHfcTSy+RCyjJJaQ/dQAEkjHAPI61+k4HA4bAUfreKak3quq12t3fmfHYvGYnHVvquFTS69Pv7I+cMZqfTLFtU1K3to/v3EqxLx3YgD+dfVeufCHUP2rtV1qz+F+jQaX8KvCs5tH1v+zmjXUplAJMcYG92Iw4Q/MFZDIUMiJXz/wCHPB9j4u+OWk6F4fsdU8TWN9qdvZ29pCRa3epqzqrIhYMI2f5gGYELkEjgivew+MVRNNWaV2t7dr9E/I8LE4H2VnF8ybsntfvbq0u59f8Axe8Sar+yz4ybwT4M+F3izUNF0u3hZbuGOZYbl3QOzIywvv6gFi2d6uOwoqf9qH9k2H9mT4v33hXwx4D/AGiNU0WCKKe3u/D/AIkU2U29fmwq2UpRlYFCrsG+XONpUkrz6caMoqTSfnff/wAmO+pKspNJteSX/AOB/wCCJ37QS/AL9uzwzcXEyw2erSpaTMwGB8wI6+4r9af+C2OiRah+y38YoI9zW99o0WqoQ33tjI+73+Yfhk/Wv58PBHii68E+LdO1ezdo7rTbhJ42BxgqQa/c39oT4sWvx3/4Jl2viZr2NrjVvB9xp92GYvsb7NKWYgDAHDck8YyTwBXzfE2E9nmFLFLaVvvTX6WPe4dxHtcDOg943+5/8G5+Qn7Bk1jdftKaDpepbVtdYkNsXOcI2CQSB16Yx3yK/bb9ib9r3R/2bfjJ4J+E51Zde+LPji9t9A03w3prpNFprXB+e7vWGRHFEpMpQkSOqDC4O4fz/eCdOvhqsF/a3raSLWUFb8OyNC4x9zb8zPyOF5GcnAyR+sf/AAb+fB9PA/7anw48bHTpU0k6/Ba32r6gN17qU90Wgh3Oc7ENxLGwjU4LbCxkZVcetnmAo1a8alST1srLv3v09N35Hn5Pi68cJKnCO13d9uyXV767LzP2M/4KR+JvCfwj/Zz0v4ffbFj1LXtU0y20i0xvmu2tr+2ubid8dgisWkPBklUdXAr8TP8AgqB/wUS+OHjn46eMPA994m1XS9B03W73SNM0zSM2EElpDcSQxmYxkPMSiKxMrMMngAcV9R/t/wDxi8SfEb/gswv2tpf+EZsdUh8M6YCD5apCrPJtJ7m485iR/fA5AFeG/wDBYjQ9H8X6ZrnjPw1CkesaNrt1aajJHxu23Ei5IHfIIzx0PFfjscZT/wBZFzwUoTilHtH3pcv5an6nlmBnhcsg95O8m7Xs2oXt8l9585+A/hilr8O21TUNQWxvIUaQbw3mKEG5nyoyABlic9FbsDXtnxT/AOChWr/snS/AvTJLceKfBfiD4fR6vfow2ahvm1nVI2uYmY5aRo4UJjkyDt6oSXpPgrqPh/8AaV/Ykk0qDTdD1DxhpsziKF7SVrpm8hwJMwyIxjUsGZX3qyqQFydw8o+I/hLxNr/w48K3Pjbw/wDYbrwZZS+F7SWaIiVokuri4TIJBCj7SR5m3aSTyCMV00ZU6uOvjFfknJOLsrXi0nHq1f8AM9bEU5VsKqSajs09+Zf0/wAGe2ft6/A3wn+1X+z/AKX470ea3vYvD0UOtWl5CgDXulTTxw3FqxwHwlxPBMsZ4jK3WVDOxCeF/wBpST9iz/gn74t8ZeD7HSbnXLJbO0sodRtxc2Yaa5jiZ5IcjdiFpQFJK5IJGPlPhX7DPxWnb4M/HzwpeXl1Ho/hvwpq+s2zhRN9hE1lLA3yk42m5NoQoxyzkfMecOb4kN8Q/wBkHx58NdQjCeK9SsLXVNN2SedDqscVwk6S2rD/AFiyLG6Lj5g52MA4IP3dHAVY06dOu+anCaWv8rs9fk7P/Kx+b4itTpVa0KOk3F29Vdaed1c96/bstLfVf2tP2ffhtpejad8P/A3hnwVb/EjWNN8L2r2di+oTrJcTiJFJLRiSNIVJJZfOlAOSc/nAfiN4Z+JX7R154o8c2OsHwzqV/Ne3tjpMyLeOhDGOFJJAVGW2KzEZC7iBnAr6V+N3/BRTx8mi/DGG+1C6h0a08MQaXqulywosyXcMYi88tt3qW2RyBc9A2etfJvw6+HOrfGvxbdadparcaxNBLdwwkhftTr8xRT03EZ2jucDvX1GT4eVOm5VbJJWun/elzO/du3fpqfLZxWjKSp022272a/ux5V6Wv266H0n8Yf8Agop4B+OWraTd618MvGEDaFpUGiWa2fxAmjzbQ7vLMrfZsyS/Md0jEs3GSaK+Sr+wn0q+mtbqGa3uLdzHLFKhSSNgcFWU8gg8EGivWjgaKVlf73/meNLG1m7u33L/ACI4YWuJVjjVpJJCFVVGWYnoAK9u1vxF46Hwp0vwf4g1TU/7IswPsvhmCRkV33F910FOcgniP7wyc+Wwy3qn7Kf7KMmszw/2DZy3epyjbLqk0e1os9RCOkYxxuzvPIJUMUr03406p8Ov2FdPWSWLT/GXjeVdyQv+8t7Zz/e/vY44xjjv0rxcZmkKlWNOjHmaene/l29fyPpMvyeVGk6tefKmtVfS3n39NvU+MLzwJ4w0rV5vsum3zX2mQxvM0FvkaergOiLgbUbDbvlwck453V9Ffsg/8FEfjL4P1TRfh5cajCbObWLG/sdRu7ELqGlXVpcJdQusy7TIPPihZhNvI8sbSnOeR8K+D/F37aeleNNQ0W+aTxfa6HL4v/s23IW41gR3TpdQwKCPnjtw0oRRuZYWVQcgVyHwB+KcsVgkN5fXFxqFncRz2ckzb3iCspKqx5A4HGccV1VourRvVgm07eafe5xxko1rUpNK199Gu1j9V/jx8cpPin+1J8N/G2nrHD4d8eeKDrAtywWHTZ5ApuLXezkyXcNw7o20R77drOQRMsiyvyPizx7pfwf/AGzfjV8O/ix4eutS0PXNavUihit281ILi6knjMXmSQqHCyxsHLbdwyrEHn59/Yr+Jmm/Gfw+3hfXrWLWNN86G8FpLK0bCaHPkzwyKQ0NxHucJIpHys0biSJnib2z9p74fa18XviRpviKx1rT5PsIjRINXe4+3AqS3+tiR0mUMSxd/I3Nk7ADx+R5jwtOljXUpK8JRs+jjJNyi1rru1stN23qfp2U8RUK2HjQxEuWUbrtzLS2vRqzv+HY8t8VfBbxn/wTh8eaf4q8J30sOi63Cz6delThoznMcodcqw6EEZ644ri/j9+17N4v8F302p3Sm6kQybQ/32Y5bv6nPtj8v0i8M6TdfGH4MxeF9ah0C88z+C8naSOI+u+OOQA4PXg8mpvg3/wT1+EvwW1e08Ya1pGl+Ite01/Psllixb2cmchhHuKll7OScHDKI3VWHHldaeIqxq5jQfPF/Fte217/AJ2PVxWb0KNFxouLlaytr/X3nxb4P/Y81L9kT/ghh+0R4+8Y28mk+O/i7YaJDZWM67Z7DTP7dsWCOMZSSUCR2TOQoRWAdXUfAfwF+M2l6XaL4V8aNf8A/CLzO8ljqlkvmah4UunwDdW6kgSxNgCe1YhZk6FJFjkX91P2pPHXhD9oP4L+KPDfxE0ubXfDHiTULHT7yO0n+y3Vkmy4eOe1dRiOWFokeMMrRZiVHjeNmjb8O/2y/wBjzVf2PPjNqfg/VLtdQWOJNT0PVkhMVr4m0mbcYL2DJOD8rJJHuYxyxzRE74nFfsOR11iKEnV3k2/RaJfda35n4tmkakMRzxfT73uzjfjd4a13wV4taw1m6tdSSaNbqx1GzlM1lq1sxIjubdyAWjbDD5gHVlZHVJEdFrfB/wAR2XhzxRN9v1DUdIgvrV7QahYgtNYsxUiQAEFgNuGAIJUkA5pPDPxAX/hF5PDetxyXmgvIZ7Zh80+jztgNPBnswCiSIkLKFXO11jkTuP2WdB0u1+Kdxput/Yby11CxYQb08yC9TcDuTcB/dJwQCCrAhSpA9epanRaa27fmcNLmrV4y5tX3/I7fTPFfjq/tt6eIvhn4whB2xajqqwSXTIAMK5kUPkdSGyck8nrRXmXiLUvh/DrVxHqHg/xRoN1G5WSyivwREQe/mJuB9ugorl9i/wCX/wAlX6Ox1e2S0cv/ACZ/rG59HfFP/gojZ/DDw1ceHfAcMdvhfKFxENp4GM7hz68D1r448W+MNQ8ca5NqOp3Ml1dTtuZ2OfyrMJya0tI8Oz6lNbqtvdXMl1KsFvb26b5riRuEVQMn5jwOCSegODjfB5fRw2sd+73McdmlfGPllpHsjuP2ePjD4s+D3i/SfE3gXVrzRfGfg+6/tTSrm2bEhVcO6j+8VKB9mCGUyZzgA9X8afi74J+P+rzeONJ0a1+HPj55Dc61o1moGgay5GZbmyH/AC5zMSXNq2YT8xieP5Ldovht8AdV1CUzTtCstjcBI2spxJHAwVGwsiEjcrMQSCSHVskkE1N8Yf2c5p4n1C0RI9Q+9LGAFW4PrgcKx9uD6Dvn7en7Vx6d/wCuhs8PUVKLvr2/rr+HkVP2afiJefDjxNHfWMhhKyEoDypXJGD68cetfXdz+0XL4/ktjdTKirGFZY2O04zz1PPNfDeizSWmj+Y0TQSW1wYZUPBiJ5AP4h/yrvtB8cSaVbruk24GR2ry8VH942d1OOisfoP+zh8XodEBLXLbVGcM+a9T8VftJz+J0jsLWY7XOG57dK/OfwH8ZmtLZFSXG7gkNX0d+zzqEvinUIW5kZiFUZ5JPSvnsbhU5czPWo1UonuHxEFxN8P9NiXduvLqS/mx1ZVAjh/L99j/AHzXkP7dHwcT9qr9hjVY4YFm8bfBlJvFGiSKpM1zpB2jVbPjGVjQJfAsSI1s7oKN07Z+ofi18Pj4e8NWMci/NDbIjDHCtjJ/8eJryj4M+MdN8E/HHQZtZt1vvD9xd/YdYs2OFvrCcGG6gb/ZkgkkQjuGIr3MFfDwhbp/TPHrfv8Ani/l+h+LU8q3UfmHZHIuFIUY3+/pn19c/Wp9L1ybTxGqySIsUgmidDh7eQY+dD2PAyO+B3CkdB+0B8IL79nv48+NvAOqSLLqXgfX77w/duF2h5rS4kgcgdstGeK5Gvq7HzfM73PVtL/ah1GDT4o7yGO5njG0y84ceoGRj6DgdsDABXlNFcn1Gh/Kd0c0xCVr/gaGgaVJql8scKxs6/O7ykLDAvTe5PAAJHXjoOScV33wn0e6k8NeJI1ulRdauLXQobsMUO+WTzmnBYBtiwQSo2ACBdqGwG2nzmbUXe0Fun7u3DBig/jYcBm9SMnHpk4xk1NN4jvptNt7N7u4a2tUaOGNpCVhVzuZVHRQzHJx171vVjKUbIwoVIQknLp+Pl/wT9aP2EP2SNN1/wDZWs7zRZotY0+31jUrSK+hO6O5EVwy7lOOR6EcEYI4Iqn8U/2W7ptSkhS1Y9TkDivQP+Dcz48XWm/sqeLvBetaRNqGn6HrC6pajy/3kMN5FgEA9UZ7eUj6k9DW5/wUL/4KV+Ff2e7WZdL8EahqGptlFEsZhhRug3Men4AmvnqNej7eVFz95O1ur/4c9+pCs6SqKNla/kvL5bHwJ+09+yveeDvAGueMLVrKK30uONNShml8tpd0yJDJGMfM6lmUjqVcf3cV4ENZhvdAR1ZdxBHvWb8fP2jvFH7RfjG41fxBfMyyMTDZQkpbWq54VU6fick/kBytreSR6U21jx2r1K2C5km9zhw+Mu3F7Wudt8OfEE2o6zHaw7mYuMAc1+tX/BMT4BSalc2eoagn7mEiYgjghR0/FiB+Nfl5+wZ8OpPiT8brazCFlADHjpzX7t/AHwwvw81Hwt4Zso1RptLvddvyuNyQW/2eBFP+/LdqwHf7OxH3WrxsxpxVbkR3Yes5UeZ9Sl+0eqN4Ym+b5oWPT/P0r4x8UK7awrJ95Zcj86+0/jTp7avp12oXO4nA9P8AOK8j+HH7LV98RfGljax28kktxMqqoHUlgBz9TWMpWiVQ0lc/K7/gsVoy6L/wU++NhXG7UvEs2rTe8t2q3Un475m57182TwPazNHIjRyRsVZWGGUjqCK+hv8Agqf8QbLxx/wVB+OmtWfk6hpMfj/VYLPDkxXVrb3jwwkHg7WiiQ8dAa9u+Mv/AATj+Nf7WX/BPnx5+3h8Qde01P7W1+2is9JeNUuNU04E2j3EKIdtvb27JBBBBgZhgkICIkPnfVqXIkpdvxPm3Hmb5e/4HwTRRRWxiFSW7+XJuwrbeQCMiiik9i6fxI/Rv/g3C+KWsaR+2F4m0/7R9qtPEmht9ujuMyCRobi38txz94B3XPOFcgYr9bv28v2MPh98Xfh7NdazoqyTMuC0ZC9QfY0UV+bZ/wC7mEuXTb8kfY5XKTw8G3vf82fzd/tefD3TfhV+0d4s8P6PHJDpumXzQwI7bmCgDqf1rzqKVlhkX+Eiiiv0DBtyw8G+y/I+XxOmIml3Z9Vf8Emtbk0n477Y4oXMmBucHK9+MEelfuZ+xG6+NpvG3iTUI45NSvNYvfDII+5Bp+nSzxQQoOwLGaZySSZLiTBCCNEKK8LFf71P5foetT/3ePobV7o1pcTsslvHIAe+ecHFekeGo7f4TfDLxJ4u0mztF1jwvoWo63YtKm+MXFpZzXMO4ZGV8yJMjIyMjiiisI7mi2Z/JPd3Ml7cyTTSSTTTMXkkdizOx5JJPJJJzmvTtV/bW+K2s/BCL4bT+OvELeAobdLUaCtyVsXRHDrujHDMCBhjyAMZxxRRX1cqcJNcyTsfPwqTinytq55bRRRVmJ//2Q==', 1, 0, NULL, NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (3, N'Giáo Viên Toán', CAST(N'2020-01-01' AS Date), N'Huế 1', 0, N'0123456789', N'2 Nguyễn Tri Phương', 1, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (4, N'Giáo Viên Văn', CAST(N'2020-01-01' AS Date), N'Huế 2', 0, N'01236987', N'3 Nguyễn Tri Phương', 2, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (6, N'Giáo Viên Anh', CAST(N'2020-01-01' AS Date), N'Huế 3', 0, N'0369875412', N'4 Nguyễn Tri Phương', 3, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (7, N'Giáo Viên Lý', CAST(N'2020-01-01' AS Date), N'Huế 4', 0, N'0369852147', N'5 Nguyễn TRi Phương', 4, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Teacher] ([TeacherId], [TeacherName], [DayOfBirth], [PlaceOfBirth], [Gender], [Phone], [Address], [SubjectId], [AvatarPath], [DegreeId], [IsDelete], [DayToWork], [Position]) VALUES (8, N'Jena Oneill', CAST(N'2016-03-16' AS Date), N'Sequi magna ea neces', 0, N'+1 (885) 168-6654', N'Recusandae Sit mini', 7, N'Mollitia voluptatem', 1, 0, CAST(N'2004-02-13' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[TypePoint] ON 

INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (1, N'Điểm Miệng 1st', 1)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (2, N'Điểm Miệng 2st', 1)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (3, N'Điểm Miệng 3st', 1)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (4, N'Điểm Miệng 4st', 1)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (5, N'Điểm 15 phút 1st', 1)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (7, N'Điểm 15 phút 2st', 1)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (8, N'Điểm 15 phút 3st', 1)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (9, N'Điểm 15 phút 4st', 1)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (11, N'Điểm 1 tiết 1st', 2)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (12, N'Điểm 1 tiết 2st', 2)
INSERT [dbo].[TypePoint] ([TypePointId], [TypeName], [Coefficient]) VALUES (13, N'Điêm học kỳ', 3)
SET IDENTITY_INSERT [dbo].[TypePoint] OFF
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
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_Student]
GO
ALTER TABLE [dbo].[ClassStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassStudent_Student1] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[ClassStudent] CHECK CONSTRAINT [FK_ClassStudent_Student1]
GO
ALTER TABLE [dbo].[ClassSubjectTeacher]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubjectTeacher_ClassRoom] FOREIGN KEY([ClassID])
REFERENCES [dbo].[ClassRoom] ([ClassId])
GO
ALTER TABLE [dbo].[ClassSubjectTeacher] CHECK CONSTRAINT [FK_ClassSubjectTeacher_ClassRoom]
GO
ALTER TABLE [dbo].[ClassSubjectTeacher]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubjectTeacher_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectId])
GO
ALTER TABLE [dbo].[ClassSubjectTeacher] CHECK CONSTRAINT [FK_ClassSubjectTeacher_Subject]
GO
ALTER TABLE [dbo].[ClassSubjectTeacher]  WITH CHECK ADD  CONSTRAINT [FK_ClassSubjectTeacher_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
GO
ALTER TABLE [dbo].[ClassSubjectTeacher] CHECK CONSTRAINT [FK_ClassSubjectTeacher_Teacher]
GO
ALTER TABLE [dbo].[SemesterResult]  WITH CHECK ADD  CONSTRAINT [FK_SemesterResult_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[SemesterResult] CHECK CONSTRAINT [FK_SemesterResult_Course]
GO
ALTER TABLE [dbo].[SemesterResult]  WITH CHECK ADD  CONSTRAINT [FK_SemesterResult_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[SemesterResult] CHECK CONSTRAINT [FK_SemesterResult_Semester]
GO
ALTER TABLE [dbo].[SemesterResult]  WITH CHECK ADD  CONSTRAINT [FK_SemesterResult_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[SemesterResult] CHECK CONSTRAINT [FK_SemesterResult_Student]
GO
ALTER TABLE [dbo].[SemesterResult]  WITH CHECK ADD  CONSTRAINT [FK_SemesterResult_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectId])
GO
ALTER TABLE [dbo].[SemesterResult] CHECK CONSTRAINT [FK_SemesterResult_Subject]
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
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_ClassRoom] FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassRoom] ([ClassId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_ClassRoom]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_Course]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_Semester1] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_Semester1]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_Student]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_Subject]
GO
ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_TypePoint] FOREIGN KEY([TypePointId])
REFERENCES [dbo].[TypePoint] ([TypePointId])
GO
ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_TypePoint]
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
/****** Object:  StoredProcedure [dbo].[sp_Create_SubjectResult]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Delete_Student]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_All_Nation]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_All_TypePoint]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRooms_ByCourseIdAndGradeId]    Script Date: 8/11/2020 2:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
create PROCEDURE [dbo].[sp_Get_ClassRooms_ByCourseIdAndGradeId] 
@GradeId INT,
@CourseId INT
AS
BEGIN
SELECT cr.[ClassId]
      ,[ClassName]
	  ,cr.GradeId
	  ,gr.GradeName
	  ,cr.CourseId
	  ,cs.CourseName as CourseName
	  ,cr.TeacherId
	  ,tc.TeacherName as TeacherName
  FROM [dbo].ClassRoom cr
  inner join Grade gr on gr.GradeId=cr.GradeId
  inner join Course cs on cs.CourseId = cr.CourseId
  inner join Teacher tc on tc.TeacherId = cr.TeacherId
  WHERE cr.GradeId = @GradeId AND cr.CourseId = @CourseId AND IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRoomsAll]    Script Date: 8/11/2020 2:59:42 PM ******/
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
SELECT [ClassId]
      ,[ClassName]
	  ,[GradeId]
	  ,[CourseId]
	  ,cl.[TeacherId]
	  ,te.TeacherName
  FROM [dbo].ClassRoom cl
  inner join Teacher te on te.TeacherId = cl.TeacherId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_CoursesAll]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sp_Get_DegreeAll]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Grade_All]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Point_ClassId]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Point_StudenId]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Sp_Get_ReligionAll]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_SemesterAll]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Student_byStudentId]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_StudentAll]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Students_byClassId]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Subject_ByClassId]    Script Date: 8/11/2020 2:59:42 PM ******/
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
inner join ClassSubjectTeacher cst on cst.ClassID=cl.ClassId
inner join Subject su on su.SubjectId=cst.SubjectId
inner join Teacher te on te.TeacherId=cst.TeacherId
Where cl.ClassId=@ClassId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Subject_ByCourseId_SemesterId_SubjectId]    Script Date: 8/11/2020 2:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Subject_ByCourseId_SemesterId_SubjectId]
@CourseId int,
@SemesterId int,
@SubjectId int,
@ClassId int
AS
BEGIN
SELECT  
sure.SubjectResultId,
sure.StudentId,
sure.CourseId,
sure.SemesterId,
sure.SubjectId,
sure.Point,
sure.TypePointId,
sure.ClassId,
stu.FirstName,
stu.LastName,
ty.Coefficient
FROM [dbo].SubjectResult Sure
inner join  Student stu on stu.StudentId = sure.StudentId
inner join TypePoint ty on ty.TypePointId=sure.TypePointId
Where sure.CourseId=@CourseId And sure.SemesterId=@SemesterId and sure.SubjectId=@SubjectId and sure.ClassId=@ClassId
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_SubjectAll]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_All]    Script Date: 8/11/2020 2:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hong An
-- Create date: 08/03/2020
-- Description:	Get Student all
-- =============================================
create PROCEDURE [dbo].[sp_Get_Teacher_All]
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
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_ByClassId]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_ById]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_bySubjectId]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Save_Point]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Save_Student]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Save_SubjectResult]    Script Date: 8/11/2020 2:59:42 PM ******/
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
		IF(CONVERT(INT, @SubjectResultId) IS NULL OR CONVERT(INT, @SubjectResultId) = 0) and (@Point between 0 and 10)
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
	 WHERE SubjectResultId = @SubjectResultId and  (@Point between 0 and 10)
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
/****** Object:  StoredProcedure [dbo].[sp_Save_Teacher]    Script Date: 8/11/2020 2:59:42 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Subjects_byClassId]    Script Date: 8/11/2020 2:59:42 PM ******/
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

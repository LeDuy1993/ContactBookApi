USE [WebContactBook]
GO

ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [FK_Teacher_Subject]
GO

ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [FK_Teacher_Degree]
GO

ALTER TABLE [dbo].[SubjectResult] DROP CONSTRAINT [FK_SubjectResult_Subject]
GO

ALTER TABLE [dbo].[SubjectResult] DROP CONSTRAINT [FK_SubjectResult_Student]
GO

ALTER TABLE [dbo].[SubjectResult] DROP CONSTRAINT [FK_SubjectResult_Semester]
GO

ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK_Student_Religion]
GO

ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK_Student_Nation]
GO

ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK_Student_Job]
GO

ALTER TABLE [dbo].[SemesterResult] DROP CONSTRAINT [FK_SemesterResult_SubjectResult1]
GO

ALTER TABLE [dbo].[ClassSubjectTeacher] DROP CONSTRAINT [FK_ClassSubjectTeacher_Teacher]
GO

ALTER TABLE [dbo].[ClassSubjectTeacher] DROP CONSTRAINT [FK_ClassSubjectTeacher_Subject]
GO

ALTER TABLE [dbo].[ClassSubjectTeacher] DROP CONSTRAINT [FK_ClassSubjectTeacher_ClassRoom]
GO

ALTER TABLE [dbo].[ClassStudent] DROP CONSTRAINT [FK_ClassStudent_Student1]
GO

ALTER TABLE [dbo].[ClassStudent] DROP CONSTRAINT [FK_ClassStudent_Student]
GO

ALTER TABLE [dbo].[ClassStudent] DROP CONSTRAINT [FK_ClassStudent_ClassRoom]
GO

ALTER TABLE [dbo].[ClassRoom] DROP CONSTRAINT [FK_ClassRoom_Teacher]
GO

ALTER TABLE [dbo].[ClassRoom] DROP CONSTRAINT [FK_ClassRoom_Grade]
GO

ALTER TABLE [dbo].[ClassRoom] DROP CONSTRAINT [FK_ClassRoom_Course1]
GO

/****** Object:  Table [dbo].[Teacher]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher]
GO

/****** Object:  Table [dbo].[SubjectResult]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubjectResult]') AND type in (N'U'))
DROP TABLE [dbo].[SubjectResult]
GO

/****** Object:  Table [dbo].[Subject]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Subject]') AND type in (N'U'))
DROP TABLE [dbo].[Subject]
GO

/****** Object:  Table [dbo].[Student]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
DROP TABLE [dbo].[Student]
GO

/****** Object:  Table [dbo].[SemesterResult]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SemesterResult]') AND type in (N'U'))
DROP TABLE [dbo].[SemesterResult]
GO

/****** Object:  Table [dbo].[Semester]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Semester]') AND type in (N'U'))
DROP TABLE [dbo].[Semester]
GO

/****** Object:  Table [dbo].[Religion]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Religion]') AND type in (N'U'))
DROP TABLE [dbo].[Religion]
GO

/****** Object:  Table [dbo].[Nation]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nation]') AND type in (N'U'))
DROP TABLE [dbo].[Nation]
GO

/****** Object:  Table [dbo].[Job]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Job]') AND type in (N'U'))
DROP TABLE [dbo].[Job]
GO

/****** Object:  Table [dbo].[Grade]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Grade]') AND type in (N'U'))
DROP TABLE [dbo].[Grade]
GO

/****** Object:  Table [dbo].[Degree]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Degree]') AND type in (N'U'))
DROP TABLE [dbo].[Degree]
GO

/****** Object:  Table [dbo].[Course]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course]') AND type in (N'U'))
DROP TABLE [dbo].[Course]
GO

/****** Object:  Table [dbo].[ClassSubjectTeacher]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClassSubjectTeacher]') AND type in (N'U'))
DROP TABLE [dbo].[ClassSubjectTeacher]
GO

/****** Object:  Table [dbo].[ClassStudent]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClassStudent]') AND type in (N'U'))
DROP TABLE [dbo].[ClassStudent]
GO

/****** Object:  Table [dbo].[ClassRoom]    Script Date: 8/3/2020 10:15:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClassRoom]') AND type in (N'U'))
DROP TABLE [dbo].[ClassRoom]
GO

/****** Object:  Table [dbo].[ClassRoom]    Script Date: 8/3/2020 10:15:45 AM ******/
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
 CONSTRAINT [PK_ClassRoom] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ClassStudent]    Script Date: 8/3/2020 10:15:45 AM ******/
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

/****** Object:  Table [dbo].[ClassSubjectTeacher]    Script Date: 8/3/2020 10:15:45 AM ******/
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

/****** Object:  Table [dbo].[Course]    Script Date: 8/3/2020 10:15:45 AM ******/
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

/****** Object:  Table [dbo].[Degree]    Script Date: 8/3/2020 10:15:45 AM ******/
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

/****** Object:  Table [dbo].[Grade]    Script Date: 8/3/2020 10:15:45 AM ******/
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

/****** Object:  Table [dbo].[Job]    Script Date: 8/3/2020 10:15:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Job](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nchar](50) NOT NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Nation]    Script Date: 8/3/2020 10:15:45 AM ******/
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

/****** Object:  Table [dbo].[Religion]    Script Date: 8/3/2020 10:15:45 AM ******/
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

/****** Object:  Table [dbo].[Semester]    Script Date: 8/3/2020 10:15:45 AM ******/
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

/****** Object:  Table [dbo].[SemesterResult]    Script Date: 8/3/2020 10:15:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SemesterResult](
	[SubjectResultId] [int] NOT NULL,
	[SemesterPoint] [float] NOT NULL,
	[DateAdded] [date] NULL,
	[SemesterResultId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SemesterResult] PRIMARY KEY CLUSTERED 
(
	[SemesterResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Student]    Script Date: 8/3/2020 10:15:45 AM ******/
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
	[JobId] [int] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[AvatarPath] [nvarchar](max) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Subject]    Script Date: 8/3/2020 10:15:45 AM ******/
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

/****** Object:  Table [dbo].[SubjectResult]    Script Date: 8/3/2020 10:15:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SubjectResult](
	[SubjectResultId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[PointOral1St] [float] NULL,
	[PointOral2St] [float] NULL,
	[PointOral3St] [float] NULL,
	[PointMinute1St] [float] NULL,
	[PointMinute2St] [float] NULL,
	[PointMinute3St] [float] NULL,
	[PointMain] [float] NULL,
	[PointSemester] [float] NULL,
	[DayPointOral1St] [date] NULL,
	[DayPointOral2St] [date] NULL,
	[DayPointOral3St] [date] NULL,
	[DayPointMinute1St] [date] NULL,
	[DayPointMinute2St] [date] NULL,
	[DayPointMinute3St] [date] NULL,
	[DayPointMain] [date] NULL,
	[DayPointSemester] [date] NULL,
 CONSTRAINT [PK_SubjectResult] PRIMARY KEY CLUSTERED 
(
	[SubjectResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Teacher]    Script Date: 8/3/2020 10:15:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [nvarchar](50) NOT NULL,
	[DayOfBirth] [datetime] NULL,
	[PlaceOfBirth] [nvarchar](50) NULL,
	[Gender] [bit] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[AvatarPath] [nvarchar](50) NULL,
	[DegreeId] [int] NOT NULL,
	[IsDelete] [bit] NULL,
	[DayToWork] [date] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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

ALTER TABLE [dbo].[SemesterResult]  WITH CHECK ADD  CONSTRAINT [FK_SemesterResult_SubjectResult1] FOREIGN KEY([SubjectResultId])
REFERENCES [dbo].[SubjectResult] ([SubjectResultId])
GO

ALTER TABLE [dbo].[SemesterResult] CHECK CONSTRAINT [FK_SemesterResult_SubjectResult1]
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Job] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([JobId])
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Job]
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

ALTER TABLE [dbo].[SubjectResult]  WITH CHECK ADD  CONSTRAINT [FK_SubjectResult_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO

ALTER TABLE [dbo].[SubjectResult] CHECK CONSTRAINT [FK_SubjectResult_Semester]
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


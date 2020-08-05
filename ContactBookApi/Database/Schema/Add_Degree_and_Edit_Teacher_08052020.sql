USE [WebContactBook]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_ById]    Script Date: 8/5/2020 10:46:31 AM ******/
DROP PROCEDURE [dbo].[sp_Get_Teacher_ById]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_All]    Script Date: 8/5/2020 10:46:31 AM ******/
DROP PROCEDURE [dbo].[sp_Get_Teacher_All]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_DegreeById]    Script Date: 8/5/2020 10:46:31 AM ******/
DROP PROCEDURE [dbo].[sp_Get_DegreeById]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_DegreeAll]    Script Date: 8/5/2020 10:46:31 AM ******/
DROP PROCEDURE [dbo].[sp_Get_DegreeAll]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_DegreeAll]    Script Date: 8/5/2020 10:46:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		DUC TRAN
-- Create date: 08/05/2020
-- Description:	Get All Degree
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_DegreeAll]
AS
BEGIN
SELECT  d.[DegreeId]
      ,d.[DegreeName]
	  ,(SELECT COUNT(*) FROM Teacher t WHERE t.DegreeId = d.DegreeId) AS Teachers
  FROM [dbo].[Degree] d
  WHERE d.IsDelete = 0

END
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_DegreeById]    Script Date: 8/5/2020 10:46:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		DUC TRAN
-- Create date: 08/05/2020
-- Description:	Get Degree by id
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_DegreeById]
	@DegreeId INT
AS
BEGIN
SELECT  [DegreeId]
      ,[DegreeName]
  FROM [dbo].[Degree]
  WHERE DegreeId = @DegreeId
END
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_All]    Script Date: 8/5/2020 10:46:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Duc Tran
-- Create date: 8/03/2020
-- Description: Get all teacher
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Teacher_All]
AS
BEGIN
SELECT [TeacherId]
      ,[TeacherName]
      ,FORMAT([DayOfBirth], 'MMM dd yyyy') AS [DayOfBirth]
      ,[PlaceOfBirth]
      ,(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender
      ,[Phone]
      ,[Address]
      ,t.[SubjectId]
	  ,s.[SubjectName]
      ,[AvatarPath]
      ,t.[DegreeId]
	  ,d.[DegreeName]
      ,FORMAT([DayToWork], 'MMM dd yyyy') AS [DayToWork]
	FROM [dbo].[Teacher] t
	inner join Degree d ON  d.DegreeId = t.DegreeId 
	inner join Subject s ON  s.SubjectId = t.SubjectId 
	WHERE t.IsDelete = 0

END
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_ById]    Script Date: 8/5/2020 10:46:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Duc Tran
-- Create date: 8/03/2020
-- Description: Get all teacher by id
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Teacher_ById]
@TeacherId INT
AS
BEGIN
SELECT [TeacherId]
      ,[TeacherName]
      ,FORMAT([DayOfBirth], 'MMM dd yyyy') AS [DayOfBirth]
      ,[PlaceOfBirth]
      ,(CASE WHEN [Gender] = 1 THEN 'Male' ELSE 'Female' END) AS Gender
      ,[Phone]
      ,[Address]
      ,t.[SubjectId]
	  ,s.SubjectName
      ,[AvatarPath]
      ,t.[DegreeId]
	  ,d.DegreeName
      ,FORMAT([DayToWork], 'MMM dd yyyy') AS [DayToWork]
	FROM [dbo].[Teacher] t
	inner join Degree d ON  d.DegreeId = t.DegreeId 
	inner join Subject s ON  s.SubjectId = t.SubjectId 
	WHERE TeacherId = @TeacherId ANd t.IsDelete = 0

END
GO


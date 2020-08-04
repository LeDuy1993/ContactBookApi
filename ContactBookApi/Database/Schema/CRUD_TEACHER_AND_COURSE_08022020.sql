USE [WebContactBook]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_CoursesAll]    Script Date: 8/4/2020 4:51:40 PM ******/
DROP PROCEDURE [dbo].[sp_Get_CoursesAll]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_All]    Script Date: 8/4/2020 4:51:40 PM ******/
DROP PROCEDURE [dbo].[sp_Get_Teacher_All]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_ById]    Script Date: 8/4/2020 4:51:40 PM ******/
DROP PROCEDURE [dbo].[sp_Get_Teacher_ById]
GO

/****** Object:  StoredProcedure [dbo].[sp_Save_Teacher]    Script Date: 8/4/2020 4:51:40 PM ******/
DROP PROCEDURE [dbo].[sp_Save_Teacher]
GO

/****** Object:  StoredProcedure [dbo].[sp_Delete_Teacher]    Script Date: 8/4/2020 4:51:40 PM ******/
DROP PROCEDURE [dbo].[sp_Delete_Teacher]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_CourseById]    Script Date: 8/4/2020 4:51:40 PM ******/
DROP PROCEDURE [dbo].[sp_Get_CourseById]
GO

/****** Object:  StoredProcedure [dbo].[sp_Save_Course]    Script Date: 8/4/2020 4:51:40 PM ******/
DROP PROCEDURE [dbo].[sp_Save_Course]
GO

/****** Object:  StoredProcedure [dbo].[sp_Delete_Course]    Script Date: 8/4/2020 4:51:40 PM ******/
DROP PROCEDURE [dbo].[sp_Delete_Course]
GO

/****** Object:  StoredProcedure [dbo].[sp_Delete_Course]    Script Date: 8/4/2020 4:51:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		DUC TRAN
-- Create date: 08/04/2020
-- Description:	DELETE Course
-- =============================================
CREATE PROCEDURE [dbo].[sp_Delete_Course]
		@CourseId INT
	AS
	BEGIN
		DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
			UPDATE [dbo].[Course]
			   SET	IsDelete = 1
					  
				WHERE CourseId = @CourseId
				SET @Message = 'Course has been Delete successfully!'
				SELECT @CourseId AS CourseId, @Message AS [Message]
			END TRY
			BEGIN CATCH
				SELECT @CourseId AS CourseId, @Message AS [Message]
			END CATCH
		END
GO

/****** Object:  StoredProcedure [dbo].[sp_Save_Course]    Script Date: 8/4/2020 4:51:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		DUC TRAN
-- Create date: 08/04/2020
-- Description:	CREATE/UPDATE Course
-- =============================================
CREATE PROCEDURE [dbo].[sp_Save_Course]
		@CourseId INT
		,@CourseName nvarchar(50)
	AS
	BEGIN
		DECLARE @Message NVARCHAR(200) = 'Something went wrong, please try again!'
	BEGIN TRY
		--Create new Course
		IF(@CourseId IS NULL OR @CourseId = 0)
		BEGIN
		INSERT INTO [dbo].[Course]
						([CourseName]
						,[IsDelete])

			VALUES
				(@CourseName
				,0)
				SET @CourseId = SCOPE_IDENTITY()
				SET @Message = 'Course has been created successfully!'
		END
		ELSE --Update Course by Id
		BEGIN
			UPDATE [dbo].[Course]
			   SET	[CourseName] = @CourseName
					  
				WHERE CourseId = @CourseId
						SET @Message = 'Course has been updated successfully!'
				END

				SELECT @CourseId AS CourseId, @Message AS [Message]

			END TRY
			BEGIN CATCH
				SET @CourseId = 0
				SELECT @CourseId AS CourseId, @Message AS [Message]
			END CATCH
		END
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_CourseById]    Script Date: 8/4/2020 4:51:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		DUC TRAN
-- Create date: 08/04/2020
-- Description:	Get Course by id
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_CourseById]
		@CourseId INT
AS
BEGIN
SELECT  [CourseId]
      ,[CourseName]
	  
  FROM [dbo].Course 
  WHERE CourseId = @CourseId

END
GO

/****** Object:  StoredProcedure [dbo].[sp_Delete_Teacher]    Script Date: 8/4/2020 4:51:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Duc Tran
-- Create date: 8/4/2020
-- Description:	delete teacher by teacher id
-- =============================================
CREATE PROCEDURE [dbo].[sp_Delete_Teacher]
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

/****** Object:  StoredProcedure [dbo].[sp_Save_Teacher]    Script Date: 8/4/2020 4:51:40 PM ******/
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
,@DayOfBirth date
,@PlaceOfBirth nvarchar(50)
,@Gender bit
,@Phone nvarchar(50)
,@Address nvarchar(50)
,@SubjectId int
,@AvatarPath nvarchar(50)
,@DegreeId int
,@DayToWork date
 
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
           ,@DayOfBirth
		   ,@PlaceOfBirth
           ,@Gender
		   ,@Phone
           ,@Address
           ,@SubjectId
           ,@AvatarPath
		   ,@DegreeId
           ,0
		   ,@DayToWork)
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

/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_ById]    Script Date: 8/4/2020 4:51:40 PM ******/
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
      ,[SubjectId]
      ,[AvatarPath]
      ,[DegreeId]
      ,FORMAT([DayToWork], 'MMM dd yyyy') AS [DayToWork]
	FROM [dbo].[Teacher] 
	WHERE TeacherId = @TeacherId

END
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Teacher_All]    Script Date: 8/4/2020 4:51:40 PM ******/
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
      ,[SubjectId]
      ,[AvatarPath]
      ,[DegreeId]
      ,[IsDelete]
      ,FORMAT([DayToWork], 'MMM dd yyyy') AS [DayToWork]
	FROM [dbo].[Teacher] 
	WHERE IsDelete = 0

END
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_CoursesAll]    Script Date: 8/4/2020 4:51:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		DUC TRAN
-- Create date: 08/04/2020
-- Description:	Get All Courses
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_CoursesAll]
AS
BEGIN
SELECT  c.[CourseId]
      ,c.[CourseName]
	  ,(SELECT COUNT(*) FROM ClassRoom cr WHERE cr.CourseId = c.CourseId) AS ClassRooms
  FROM [dbo].Course c
  WHERE c.IsDelete = 0

END
GO


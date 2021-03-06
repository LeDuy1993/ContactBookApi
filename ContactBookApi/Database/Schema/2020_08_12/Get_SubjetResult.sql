USE [WebContactBook]
GO
/****** Object:  StoredProcedure [dbo].[sp_Save_SubjectResult]    Script Date: 8/12/2020 1:45:17 PM ******/
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
      
           ,[IsDelete]
           ,[ClassId])
     VALUES
           (@StudentId
           ,@SemesterId
           ,@SubjectId
           ,@Point
           ,GETDATE()
           ,@TypePointId
   
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

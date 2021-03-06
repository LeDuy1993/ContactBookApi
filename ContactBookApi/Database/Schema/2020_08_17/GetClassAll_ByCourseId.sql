USE [WebContactBook]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRoomsAll_byCourseId]    Script Date: 8/16/2020 1:00:59 PM ******/
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

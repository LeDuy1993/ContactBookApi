USE [WebContactBook]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRooms_ByCourseIdAndGradeId]    Script Date: 8/17/2020 9:20:59 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_ClassRoomsAll_byCourseId]    Script Date: 8/17/2020 9:20:59 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Get_Students_New]    Script Date: 8/17/2020 9:20:59 AM ******/
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

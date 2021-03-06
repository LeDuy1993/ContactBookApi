USE [WebContactBook]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_SubjectResult_ByCourseId_StudentId]    Script Date: 8/11/2020 10:32:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Duy Le
-- Create date: 7/28/2020
-- Description:	Get ClassRooms by CoureseId and GradeId
-- =============================================
create PROCEDURE [dbo].[sp_Get_SubjectResult_ByCourseId_StudentId]
@CourseId int,

@StudentId int

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
Where sure.CourseId=@CourseId  and sure.StudentId=@StudentId 
END
GO

USE [WebContactBook]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_SubjectResult_ByClassId_StudentId]    Script Date: 8/12/2020 1:58:22 PM ******/
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
SELECT  
sure.SubjectResultId,
sure.StudentId,
sure.CourseId,
sure.SemesterId,
sure.SubjectId,
sure.Point,
sure.TypePointId,
FORMAT(sure.DateInput, 'yyyy-MM-dd') AS DateInput,
sure.ClassId,
stu.FirstName,
stu.LastName,
ty.Coefficient
FROM [dbo].SubjectResult Sure
inner join  Student stu on stu.StudentId = sure.StudentId
inner join TypePoint ty on ty.TypePointId=sure.TypePointId
Where sure.ClassId=@ClassId  and sure.StudentId=@StudentId 
END
GO

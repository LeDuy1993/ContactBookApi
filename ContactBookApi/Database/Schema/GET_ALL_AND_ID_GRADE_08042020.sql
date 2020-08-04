USE [WebContactBook]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Grade_All]    Script Date: 8/4/2020 10:39:35 PM ******/
DROP PROCEDURE [dbo].[sp_Get_Grade_All]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_GradeId]    Script Date: 8/4/2020 10:39:35 PM ******/
DROP PROCEDURE [dbo].[sp_Get_GradeId]
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_GradeId]    Script Date: 8/4/2020 10:39:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Duc Tran
-- Create date: 8/4/2020
-- Description: Get Grade by Id
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_GradeId]
	@GradeId INT
AS
BEGIN
	
	SELECT GradeId
		,GradeName
	

	FROM [dbo].[Grade]
	WHERE GradeId = @GradeId
END
GO

/****** Object:  StoredProcedure [dbo].[sp_Get_Grade_All]    Script Date: 8/4/2020 10:39:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Duc Tran
-- Create date: 8/4/2020
-- Description: Get All Grade
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Grade_All]
AS
BEGIN
	
	SELECT g.GradeId
      ,g.GradeName
	  ,(SELECT COUNT(*) FROM ClassRoom cl WHERE cl.GradeId = g.GradeId) AS ClassRooms

	FROM [dbo].[Grade] g
END
GO


using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.SubjectResult;
using ContactBook.Domain.Responses;
using ContactBook.Domain.Responses.SubjectResult;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class SubjectResultRepository : BaseRepository, ISubjectResultRepository
    {
        public async Task<SaveResult> SaveSubjectResult(SaveResultPoint request)
        {

            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@StudentId", request.StudentId);
            parameters.Add("@SemesterId", request.SemesterId);
            parameters.Add("@SubjectId", request.SubjectId);
            parameters.Add("@TypePointId", request.TypePointId);
            parameters.Add("@CourseId", request.CourseId);
            parameters.Add("@ClassId", request.ClassId);
            parameters.Add("@Point", request.Point);
            parameters.Add("@SubjectResultId", request.SubjectResultId);


            return (await SqlMapper.QueryFirstOrDefaultAsync<SaveResult>(cnn: connection,
                                        sql: "sp_Save_SubjectResult",
                                        param: parameters,
                                        commandType: CommandType.StoredProcedure));


        }

        public async Task<IEnumerable<GetAllTypePoint>> GetAllTypePoint()
        {
            return await SqlMapper.QueryAsync<GetAllTypePoint>(cnn: connection,
                                                   sql: "sp_Get_All_TypePoint",
                                                   commandType: CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<GetSubjectCourseSemesterSubjectId>> GetSubjectCourseSemesterSubjectId(int courseId, int semesterId, int subjecId, int classId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CourseId", courseId);
            parameters.Add("@SemesterId", semesterId);
            parameters.Add("@SubjectId", subjecId);
            parameters.Add("@ClassId", classId);
            return await SqlMapper.QueryAsync<GetSubjectCourseSemesterSubjectId>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_Subject_ByCourseId_SemesterId_SubjectId",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<GetSubjectResultByCourseIdStudentId>> GetSubjectResultByCourseIdStudentId(int courseId, int studentId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CourseId", courseId);
            parameters.Add("@StudentId", studentId);
         
            return await SqlMapper.QueryAsync<GetSubjectResultByCourseIdStudentId>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_SubjectResult_ByCourseId_StudentId",
                            commandType: CommandType.StoredProcedure);
        }
    }
}

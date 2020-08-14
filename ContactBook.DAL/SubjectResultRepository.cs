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
            parameters.Add("@ClassId", request.ClassId);
            parameters.Add("@ListPoint", request.ListPoint);
            parameters.Add("@ListDate", request.ListDate);
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

        public async Task<IEnumerable<GetSubjectResultClassIdSemesterSubjectId>> GetSubjectResultClassIdSemesterSubjectId(int semesterId, int subjectId, int classId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@SemesterId", semesterId);
            parameters.Add("@SubjectId", subjectId);
            parameters.Add("@ClassId", classId);
            return await SqlMapper.QueryAsync<GetSubjectResultClassIdSemesterSubjectId>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_Subject_ByClassId_SemesterId_SubjectId",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<GetSubjectResultByClassIdStudentId>> GetSubjectResultByClassIdStudentId(int classId, int studentId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@classId", classId);
            parameters.Add("@StudentId", studentId);
         
            return await SqlMapper.QueryAsync<GetSubjectResultByClassIdStudentId>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_SubjectResult_ByClassId_StudentId",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<GetSubjectResultBySubjectResultId> GetSubjectResultBySubjectResultId(int subjectResultId)
        {
            
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@SubjectResultId", subjectResultId);
            return await SqlMapper.QueryFirstOrDefaultAsync<GetSubjectResultBySubjectResultId>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_Subject_BySubjectResultId",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<GetSubjectResultByClassId>> GetSubjectResultByClassId(int classId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@classId", classId);
            return await SqlMapper.QueryAsync<GetSubjectResultByClassId>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_SubjectResult_ByClassId",
                            commandType: CommandType.StoredProcedure);
        }
    }
}

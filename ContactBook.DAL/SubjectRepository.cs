using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Subject;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Subject;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class SubjectRepository : BaseRepository, ISubjectRepository
    {
        public async Task<DeleteSubjectResult> Delete(int subjectId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@SubjectId", subjectId);
            return await SqlMapper.QueryFirstOrDefaultAsync<DeleteSubjectResult>(cnn: connection,
                             param: parameters,
                            sql: "Sp_Delete_Subject",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<GetSubjectById> GetSubjectById(int subjectId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@SubjectId", subjectId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<GetSubjectById>(cnn: connection,
                             param: parameters,
                            sql: "Sp_Get_Subject_byId",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<GetSubjectAll>> GetSubjectAll()
        {
            return await SqlMapper.QueryAsync<GetSubjectAll>(connection, "Sp_Get_SubjectAll", CommandType.StoredProcedure);
        }
    

        public async Task<SaveSubjectResult> Save(SaveSubjectRequest request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@SubjectId", request.SubjectId);
                parameters.Add("@SubjectName", request.SubjectName);
                parameters.Add("@Coefficient", request.Coefficient);
                return (await SqlMapper.QueryFirstOrDefaultAsync<SaveSubjectResult>(cnn: connection,
                                            sql: "Sp_Save_Subject",
                                            param: parameters,
                                            commandType: CommandType.StoredProcedure));
            }
            catch (Exception ex)
            {
                return new SaveSubjectResult()
                {
                    SubjectId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }
    }
}

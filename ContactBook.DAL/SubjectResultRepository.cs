using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.SubjectResult;
using Dapper;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class SubjectResultRepository : BaseRepository, ISubjectResultRepository
    {
        public async Task<IEnumerable<GetSubjectCourseSemesterSubjectId>> GetSubjectCourseSemesterSubjectId(int courseId, int semesterId, int subjecId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CourseId", courseId);
            parameters.Add("@SemesterId", semesterId);
            parameters.Add("@SubjectId", subjecId);
            return await SqlMapper.QueryAsync<GetSubjectCourseSemesterSubjectId>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_Subject_ByCourseId_SemesterId_SubjectId",
                            commandType: CommandType.StoredProcedure);
        }
    }
}

using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Grade;
using Dapper;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class GradeRepository : BaseRepository, IGradeRepository
    {
        public async Task<GradeView> GetGradeById(int gradeId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@GradeId", gradeId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<GradeView>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_GradeId",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<GradeView>> GetGradeAll()
        {
            return await SqlMapper.QueryAsync<GradeView>(cnn: connection,
                                                    sql: "sp_Get_Grade_All",
                                                    commandType: CommandType.StoredProcedure);
        }

    }
}

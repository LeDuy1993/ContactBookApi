using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Degree;
using Dapper;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class DegreeRepository : BaseRepository, IDegreeRepository
    {
        public async Task<DegreeView> GetDegreeById(int degreeId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@DegreeId", degreeId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<DegreeView>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_DegreeById",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<DegreeView>> GetDegreeAll()
        {
            return await SqlMapper.QueryAsync<DegreeView>(cnn: connection,
                                                    sql: "sp_Get_DegreeAll",
                                                    commandType: CommandType.StoredProcedure);
        }
    }
}

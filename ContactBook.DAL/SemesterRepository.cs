using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Semester;
using Dapper;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class SemesterRepository : BaseRepository, ISemesterRepository
    {
        public async Task<IEnumerable<GetSemesterAll>> GetSemesterAll()
        {
            return await SqlMapper.QueryAsync<GetSemesterAll>(connection, "sp_Get_SemesterAll", CommandType.StoredProcedure);
        }
    }
}

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
        public async Task<IEnumerable<GetGradeAll>> GetGradeAll()
        {
            return await SqlMapper.QueryAsync<GetGradeAll>(connection, "sp_Get_GradesAll", CommandType.StoredProcedure);
        }
    }
}

using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Religion;
using Dapper;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class ReligionRepository : BaseRepository, IReligionRepository
    {
        public async Task<IEnumerable<GetReligionAll>> GetReligionAll()
        {
            return await SqlMapper.QueryAsync<GetReligionAll>(connection, "Sp_Get_ReligionAll", CommandType.StoredProcedure);
        }
    }
}

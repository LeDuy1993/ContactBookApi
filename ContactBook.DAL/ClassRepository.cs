using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Class;
using ContactBook.Domain.Responses.Course;
using Dapper;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class ClassRepository : BaseRepository, IClassRepository
    {
        public async Task<IEnumerable<GetClassAll>> GetClassAll()
        {
            return await SqlMapper.QueryAsync<GetClassAll>(connection, "sp_Get_ClassRoomsAll", CommandType.StoredProcedure);
        }
    }
}

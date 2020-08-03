using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using Dapper;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class CourseRepository : BaseRepository, ICourseRepository
    {
        public async Task<IEnumerable<GetCourseAll>> GetCourseAll()
        {
            return await SqlMapper.QueryAsync<GetCourseAll>(connection, "sp_Get_CoursesAll", CommandType.StoredProcedure);
        }
    }
}

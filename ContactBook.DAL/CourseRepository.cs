using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Course;
using ContactBook.Domain.Responses.Course;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class CourseRepository : BaseRepository, ICourseRepository
    {
        public async Task<IEnumerable<GetCourseAll>> GetCourseAll()
        {
            return await SqlMapper.QueryAsync<GetCourseAll>(cnn: connection, 
                                                            sql: "sp_Get_CoursesAll", 
                                                           commandType: CommandType.StoredProcedure);
        }

        public async Task<GetCourseAll> GetCourseById(int courseId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CourseId", courseId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<GetCourseAll>(cnn: connection,
                            param: parameters,
                            sql: "sp_Get_CourseById",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<SaveCourseResult> Save(SaveCourseRequest request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@CourseId", request.CourseId);
                parameters.Add("@CourseName", request.CourseName);
                return (await SqlMapper.QueryFirstOrDefaultAsync<SaveCourseResult>(cnn: connection,
                                            sql: "sp_Save_Course",
                                            param: parameters,
                                            commandType: CommandType.StoredProcedure));
            }
            catch (Exception ex)
            {
                return new SaveCourseResult()
                {
                    CourseId = 0,
                    Message = "Something went wrong, please try again"
                };
            }

        }

        //public async Task<DeleteTeacherResult> Delete(int teacherId)
        //{
        //    DynamicParameters parameters = new DynamicParameters();
        //    parameters.Add("@TeacherId", teacherId);
        //    return await SqlMapper.QueryFirstOrDefaultAsync<DeleteTeacherResult>(cnn: connection,
        //                     param: parameters,
        //                    sql: "sp_Delete_Teacher",
        //                    commandType: CommandType.StoredProcedure);
        //}
    }
}

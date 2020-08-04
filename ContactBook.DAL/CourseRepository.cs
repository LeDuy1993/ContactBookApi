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
            return await SqlMapper.QueryAsync<GetCourseAll>(cnn: connection, 
                                                            sql: "sp_Get_CoursesAll", 
                                                           commandType: CommandType.StoredProcedure);
        }

        //public async Task<TeacherView> GetTeacherById(int teacherId)
        //{
        //    DynamicParameters parameters = new DynamicParameters();
        //    parameters.Add("@TeacherId", teacherId);
        //    return (await SqlMapper.QueryFirstOrDefaultAsync<TeacherView>(cnn: connection,
        //                    param: parameters,
        //                    sql: "sp_Get_Teacher_ById",
        //                    commandType: CommandType.StoredProcedure));
        //}

        //public async Task<SaveTeacherResult> Save(SaveTeacherRequest request)
        //{
        //    try
        //    {
        //        DynamicParameters parameters = new DynamicParameters();
        //        parameters.Add("@TeacherId", request.TeacherId);
        //        parameters.Add("@TeacherName", request.TeacherName);
        //        //parameters.Add("@DayOfBirth", DateTime.Parse(request.DayOfBirth));
        //        parameters.Add("@DayOfBirth", request.DayOfBirth);
        //        parameters.Add("@PlaceOfBirth", request.PlaceOfBirth);
        //        parameters.Add("@Gender", bool.Parse(request.Gender));
        //        parameters.Add("@Phone", request.Phone);
        //        parameters.Add("@Address", request.Address);
        //        parameters.Add("@SubjectId", request.SubjectId);
        //        parameters.Add("@AvatarPath", request.AvatarPath);
        //        parameters.Add("@DegreeId", request.DegreeId);
        //        parameters.Add("@DayToWork", request.DayToWork);
        //        return (await SqlMapper.QueryFirstOrDefaultAsync<SaveTeacherResult>(cnn: connection,
        //                                    sql: "sp_Save_Teacher",
        //                                    param: parameters,
        //                                    commandType: CommandType.StoredProcedure));
        //    }
        //    catch (Exception ex)
        //    {
        //        return new SaveTeacherResult()
        //        {
        //            TeacherId = 0,
        //            Message = "Something went wrong, please try again"
        //        };
        //    }

        //}

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

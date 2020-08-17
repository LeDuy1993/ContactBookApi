using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Class;
using ContactBook.Domain.Responses.Class;
using ContactBook.Domain.Responses.Course;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class ClassRepository : BaseRepository, IClassRepository
    {
        public async Task<DeleteClassResult> Delete(int classId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@ClassId", classId);

            return await SqlMapper.QueryFirstOrDefaultAsync<DeleteClassResult>(cnn: connection,
                             param: parameters,
                            sql: "sp_Delete_Class",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<GetClassbyGradeIdCourseId>> GetbygradeIdCourseId(int gradeId, int courseId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@GradeId", gradeId);
            parameters.Add("@CourseId", courseId);

            return (await SqlMapper.QueryAsync<GetClassbyGradeIdCourseId>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_ClassRooms_ByCourseIdAndGradeId",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<GetClassAll>> GetClassAll()
        {
            return await SqlMapper.QueryAsync<GetClassAll>(connection, "sp_Get_ClassRoomsAll", CommandType.StoredProcedure);
        }

        public async Task<GetClassByClassId> GetClassByClassId(int classId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@ClassId", classId);

            return await SqlMapper.QueryFirstOrDefaultAsync<GetClassByClassId>(cnn: connection,
                            param: parameters,
                           sql: "sp_Get_ClassRoom_ByClassId",
                           commandType: CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<GetClassByCourseId>> GetClassByCourseId(int courseId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CourseId", courseId);
            return (await SqlMapper.QueryAsync<GetClassByCourseId>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_ClassRoomsAll_byCourseId",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<SaveClassResult> Save(SaveClassRequest request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@ClassId", request.ClassId);
                parameters.Add("@ClassName", request.ClassName);
                parameters.Add("@GradeId", request.GradeId);
                parameters.Add("@CourseId", request.CourseId);
                parameters.Add("@TeacherId", request.TeacherId);

                return (await SqlMapper.QueryFirstOrDefaultAsync<SaveClassResult>(cnn: connection,
                                            sql: "Sp_Save_Class",
                                            param: parameters,
                                            commandType: CommandType.StoredProcedure));
            }
            catch (Exception ex)
            {
                return new SaveClassResult()
                {
                    ClassId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }

       
    }
}

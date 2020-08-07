using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Teacher;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Teacher;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class TeacherRepository : BaseRepository, ITeacherRepository
    {
        public async Task<IEnumerable<GetTeacherBySubjectId>> GetTeacherBySubjectId(int subjectId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@SubjectId", subjectId);
            return (await SqlMapper.QueryAsync<GetTeacherBySubjectId>(cnn: connection,
                             param: parameters,
                             sql: "sp_Get_Teacher_bySubjectId",
                             commandType: CommandType.StoredProcedure));
        }
        public async Task<IEnumerable<TeacherView>> GetAllTeacher()
        {
            return await SqlMapper.QueryAsync<TeacherView>(cnn: connection,
                                          sql: "sp_Get_Teacher_All", 
                                          commandType: CommandType.StoredProcedure);
        }

        public async Task<TeacherView> GetTeacherById(int teacherId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@TeacherId", teacherId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<TeacherView>(cnn: connection,
                            param: parameters,
                            sql: "sp_Get_Teacher_ById",
                            commandType: CommandType.StoredProcedure));
        }
        public async Task<GetTeacherByClassId> GetTeacherByClassId(int classId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@ClassId", classId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<GetTeacherByClassId>(cnn: connection,
                            param: parameters,
                            sql: "sp_Get_Teacher_ByClassId",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<SaveTeacherResult> Save(SaveTeacherRequest request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@TeacherId", request.TeacherId);
                parameters.Add("@TeacherName", request.TeacherName);
                parameters.Add("@DayOfBirth", request.DayOfBirth);
                parameters.Add("@PlaceOfBirth", request.PlaceOfBirth);
                parameters.Add("@Gender", request.Gender);
                parameters.Add("@Phone", request.Phone);
                parameters.Add("@Address", request.Address);
                parameters.Add("@SubjectId", request.SubjectId);
                parameters.Add("@AvatarPath", request.AvatarPath);
                parameters.Add("@DegreeId", request.DegreeId);
                parameters.Add("@DayToWork", request.DayToWork);
                //parameters.Add("@DayToWork", request.DayToWork);
                return (await SqlMapper.QueryFirstOrDefaultAsync<SaveTeacherResult>(cnn: connection,
                                            sql: "sp_Save_Teacher",
                                            param: parameters,
                                            commandType: CommandType.StoredProcedure));
            }
            catch (Exception ex)
            {
                return new SaveTeacherResult()
                {
                    TeacherId = 0,
                    Message = "Something went wrong, please try again"
                };
            }

        }

        public async Task<DeleteTeacherResult> Delete(int teacherId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@TeacherId", teacherId);
            return await SqlMapper.QueryFirstOrDefaultAsync<DeleteTeacherResult>(cnn: connection,
                             param: parameters,
                            sql: "sp_Delete_Teacher",
                            commandType: CommandType.StoredProcedure);
        }
    }
}

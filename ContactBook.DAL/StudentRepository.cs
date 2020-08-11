using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Student;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Student;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
    public class StudentRepository : BaseRepository, IStudentRepository
    {
        public async Task<DeleteStudentResult> Delete(int studentId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@StudentId", studentId);
            return await SqlMapper.QueryFirstOrDefaultAsync<DeleteStudentResult>(cnn: connection,
                             param: parameters,
                            sql: "sp_Delete_Student",
                            commandType: CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<GetStudentAll>> GetStudentAll()
        {
            return await SqlMapper.QueryAsync<GetStudentAll>(connection, "sp_Get_StudentAll", CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<GetStudentByClassId>> GetStudentByClassId(int classId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@ClassId", classId);
            return await SqlMapper.QueryAsync<GetStudentByClassId>(cnn: connection,
                        param: parameters,
                        sql: "sp_Get_Students_byClassId",
                        commandType: CommandType.StoredProcedure);

            
        }
        public async Task<GetStudentDetail> GetStudentDetail(int studentid)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@StudentId", studentid);
            return (await SqlMapper.QueryFirstOrDefaultAsync<GetStudentDetail>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_StudentDetail",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<SaveStudentResult> Save(SaveStudentRequest request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@StudentId", request.StudentId);
                parameters.Add("@FirstName", request.FirstName);
                parameters.Add("@LastName", request.LastName);
                parameters.Add("@Gender", request.Gender);
                parameters.Add("@DayOfBirth", request.DayOfBirth);
                parameters.Add("@PlaceOfBirth", request.PlaceOfBirth);
                parameters.Add("@Address", request.Address);
                parameters.Add("@NationId", request.NationId);
                parameters.Add("@ReligionId", request.ReligionId);
                parameters.Add("@FartherName", request.FartherName);
                parameters.Add("@MortherName", request.MortherName);
                parameters.Add("@JobName", request.JobName);
                parameters.Add("@PhoneNumber", request.PhoneNumber);
                parameters.Add("@AvatarPath", request.AvatarPath);
                return (await SqlMapper.QueryFirstOrDefaultAsync<SaveStudentResult>(cnn: connection,
                                            sql: "sp_Save_Student",
                                            param: parameters,
                                            commandType: CommandType.StoredProcedure));
            }
            catch (Exception ex)
            {
                return new SaveStudentResult()
                {
                    StudentId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }
   
    }
}

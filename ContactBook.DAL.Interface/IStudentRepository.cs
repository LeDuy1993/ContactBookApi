using ContactBook.Domain.Responses.Student;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
     public interface IStudentRepository
    {
        Task<IEnumerable<GetStudentAll>> GetStudentAll();
        Task<GetStudentDetail> GetStudentDetail(int studentid);
        Task<IEnumerable<GetStudentByClassId>> GetStudentByClassId(int classId);

    }
}

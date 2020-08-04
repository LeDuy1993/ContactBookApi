using ContactBook.Domain.Responses.Student;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
     public interface IStudentRepository
    {
        public Task<IEnumerable<GetStudentAll>> GetStudentAll();
        public Task<GetStudentDetail> GetStudentDetail(int studentid);

    }
}

using ContactBook.Domain.Responses.Semester;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
     public interface ISemesterRepository
    {
        Task<IEnumerable<GetSemesterAll>> GetSemesterAll();
    }
}

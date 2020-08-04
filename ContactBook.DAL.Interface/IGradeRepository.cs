using ContactBook.Domain.Responses.Grade;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
     public interface IGradeRepository
    {
        Task<IEnumerable<GetGradeAll>> GetGradeAll();
    }
}

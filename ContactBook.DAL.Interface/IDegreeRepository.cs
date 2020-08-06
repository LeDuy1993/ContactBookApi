using ContactBook.Domain.Responses.Degree;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
     public interface IDegreeRepository
    {
        Task<IEnumerable<DegreeView>> GetDegreeAll();
        Task<DegreeView> GetDegreeById(int degreeId);
    }
}

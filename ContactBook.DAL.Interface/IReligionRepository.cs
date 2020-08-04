using ContactBook.Domain.Responses.Religion;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
     public interface IReligionRepository
    {
        Task<IEnumerable<GetReligionAll>> GetReligionAll();
    }
}

using ContactBook.Domain.Responses.Class;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
     public interface IClassRepository
    {
        Task<IEnumerable<GetClassAll>> GetClassAll();
    }
}

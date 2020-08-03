using ContactBook.Domain.Responses.Nation;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
   public interface INationRepository
    {
        Task<IEnumerable<NationView>> Gets();
        Task<NationView> Get(int nationId);
        //Task<IEnumerable<StudentView>> GetStudents(int nationId);

    }
}

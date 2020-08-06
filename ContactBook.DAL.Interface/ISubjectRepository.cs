using ContactBook.Domain.Repuests.Subject;
using ContactBook.Domain.Responses.Subject;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
     public interface ISubjectRepository
    {
        Task<IEnumerable<GetSubjectAll>> GetSubjectAll();
        Task<IEnumerable<GetSubjectByClassId>> GetSubjectByClassId(int subjectId);
        Task<GetSubjectById> GetSubjectById(int subjectId);
        Task<DeleteSubjectResult> Delete(int subjectId);
        Task<SaveSubjectResult> Save(SaveSubjectRequest request);
    }
}

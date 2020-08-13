using ContactBook.Domain.Repuests.Class;
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
        Task<IEnumerable<GetClassbyGradeIdCourseId>> GetbygradeIdCourseId(int gradeId, int courseId);
        Task<SaveClassResult> Save(SaveClassRequest request);
        Task<DeleteClassResult> Delete(int classId);
        Task<GetClassByClassId> GetClassByClassId(int classId);
    }
}

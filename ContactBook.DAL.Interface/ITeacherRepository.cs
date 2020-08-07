using ContactBook.Domain.Repuests.Teacher;
using ContactBook.Domain.Responses.Teacher;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
    public interface ITeacherRepository
    {
        Task<IEnumerable<TeacherView>> GetAllTeacher();
        Task<GetTeacherbyTeacherId> GetTeacherById(int teacherId);
        Task<DeleteTeacherResult> Delete(int teacherId);
        Task<SaveTeacherResult> Save(SaveTeacherRequest request); 
        Task<IEnumerable<GetTeacherBySubjectId>> GetTeacherBySubjectId(int subjectId);
        Task<GetTeacherByClassId> GetTeacherByClassId(int classId);
    }
}

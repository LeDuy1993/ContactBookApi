using ContactBook.Domain.Responses.Course;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
    public interface ICourseRepository
    {
        Task<IEnumerable<GetCourseAll>> GetCourseAll();
        Task<GetCourseAll> GetCourseById(int courseId);
        //Task<DeleteCourseResult> Delete(int courseId);
        //Task<SaveCourseResult> Save(SaveCourseRequest request);
    }
}

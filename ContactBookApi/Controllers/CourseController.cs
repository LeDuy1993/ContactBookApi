using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    [ApiController]
    public class CourseController : ControllerBase
    {
        private readonly ILogger<CourseController> _logger;
        private readonly ICourseRepository courseRepository;

        public CourseController(ILogger<CourseController> logger,
                                    ICourseRepository courseRepository)
        {
            _logger = logger;
            this.courseRepository = courseRepository;
        }
        /// <summary>
        ///  Get all course
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/course/GetCourseAll")]
        public async Task<IEnumerable<GetCourseAll>> GetCourseAll()
        {
            return await courseRepository.GetCourseAll();
        }
       

        ///// <summary>
        ///// Get teacher by id
        ///// </summary>
        ///// <param name="id"></param>
        ///// <returns></returns>
        //[HttpGet]
        //[Route("/api/teacher/GetTeacherById/{id}")]
        //public async Task<TeacherView> GetTeacherById(int id)
        //{
        //    return await teacherRepository.GetTeacherById(id);
        //}

        //[HttpPost]
        //[Route("/api/teacher/save")]
        //public async Task<SaveTeacherResult> Save(SaveTeacherRequest request)
        //{
        //    return await teacherRepository.Save(request);
        //}


        //[HttpDelete]
        //[Route("/api/teacher/delete/{id}")]
        //public async Task<DeleteTeacherResult> Delete(int id)
        //{
        //    return await teacherRepository.Delete(id);
        //}
    }
}

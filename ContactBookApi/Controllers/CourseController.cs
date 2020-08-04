using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Course;
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


        /// <summary>
        /// Get course by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/course/GetCourseById/{id}")]
        public async Task<GetCourseAll> GetCourseById(int id)
        {
            return await courseRepository.GetCourseById(id);
        }

        [HttpPost]
        [Route("/api/course/save")]
        public async Task<SaveCourseResult> Save(SaveCourseRequest request)
        {
            return await courseRepository.Save(request);
        }


        [HttpDelete]
        [Route("/api/course/delete/{id}")]
        public async Task<DeleteCourseResult> Delete(int id)
        {
            return await courseRepository.Delete(id);
        }
    }
}

using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
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

        [HttpGet]
        [Route("/api/course/GetCourseAll")]
        public async Task<IEnumerable<GetCourseAll>> GetCourseAll()
        {
            return await courseRepository.GetCourseAll();
        }
    }
}

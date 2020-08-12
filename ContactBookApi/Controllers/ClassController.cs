using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Class;
using ContactBook.Domain.Responses.Class;
using ContactBook.Domain.Responses.Course;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Routing;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    [ApiController]
    public class ClassController : ControllerBase
    {
        private readonly ILogger<ClassController> _logger;
        private readonly IClassRepository classRepository;

        public ClassController(ILogger<ClassController> logger,
                                    IClassRepository classRepository)
        {
            _logger = logger;
            this.classRepository = classRepository;
        }


        [HttpGet]
        [Route("/api/class/GetClassAll")]
        public async Task<IEnumerable<GetClassAll>> GetClassAll()
        {
            return await classRepository.GetClassAll();
        }


        [HttpGet]
        [Route("/api/class/get/{gradeId}/{courseId}")]
        public async Task<IEnumerable<GetClassbyGradeIdCourseId>> GetbygradeIdCourseId(int gradeId, int courseId)
        {
            return await classRepository.GetbygradeIdCourseId(gradeId, courseId);
        }

        [HttpPost]
        [Route("/api/class/save")]
        public async Task<SaveClassResult> Save(SaveClassRequest request)
        {
            return await classRepository.Save(request);
        }

        [HttpDelete]
        [Route("/api/class/delete/{id}")]
        public async Task<DeleteClassResult> Delete(int id)
        {
            return await classRepository.Delete(id);
        }
        [HttpGet]
        [Route("/api/class/GetClassByClassId/{classId}")]
        public async Task<GetClassByClassId> GetClassByClassId(int classId)
        {
            return await classRepository.GetClassByClassId(classId);
        }
    }
}

using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Student;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Student;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    [ApiController]
    public class StudentController : ControllerBase
    {
        private readonly ILogger<StudentController> _logger;
        private readonly IStudentRepository studentRepository;

        public StudentController(ILogger<StudentController> logger,
                                    IStudentRepository studentRepository)
        {
            _logger = logger;
            this.studentRepository = studentRepository;
        }

        [HttpGet]
        [Route("/api/student/GetStudentAll")]
        public async Task<IEnumerable<GetStudentAll>> GetStudentAll()
        {

            return await studentRepository.GetStudentAll();
        }

        [HttpGet]
        [Route("/api/student/GetStudentDetail/{id}")]
        public async Task<GetStudentDetail> GetStudentDetail(int id)
        {

            return await studentRepository.GetStudentDetail(id);
        }

        [HttpGet]
        [Route("/api/student/GetStudentByClassId/{classId}")]
        public async Task<IEnumerable<GetStudentByClassId>> GetStudentByClassId(int classId)
        {

            return await studentRepository.GetStudentByClassId(classId);
        }

        [HttpPost]
        [Route("/api/student/save")]
        public async Task<SaveStudentResult> Save(SaveStudentRequest request)
        {

            return await studentRepository.Save(request);
        }

        [HttpDelete]
        [Route("/api/student/delete/{id}")]
        public async Task<DeleteStudentResult> Delete(int id)
        {

            return await studentRepository.Delete(id);
        }

        [HttpGet]
        [Route("/api/student/GetStudentsNew")]
        public async Task<IEnumerable<GetStudentsNew>> GetStudentsNew()
        {

            return await studentRepository.GetStudentsNew();
        }
    }
}

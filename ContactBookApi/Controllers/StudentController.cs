using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Student;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    
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

        /*[HttpPost]
        [Route("/api/student/SaveStudent")]
        public async Task<SaveStudent> SaveStudent(Student request)
        {
            return await studentRepository.SaveStudent(request);
        }*/
    }
}

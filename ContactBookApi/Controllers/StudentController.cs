using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
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

       
    }
}

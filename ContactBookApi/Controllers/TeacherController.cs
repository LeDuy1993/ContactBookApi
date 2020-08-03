using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    public class TeacherController : ControllerBase
    {
        private readonly ILogger<TeacherController> _logger;
        private readonly ITeacherRepository teacherRepository;

        public TeacherController(ILogger<TeacherController> logger,
                                    ITeacherRepository teacherRepository)
        {
            _logger = logger;
            this.teacherRepository = teacherRepository;
        }

       
    }
}

using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    public class GradeController : ControllerBase
    {
        private readonly ILogger<GradeController> _logger;
        private readonly IGradeRepository gradeRepository;

        public GradeController(ILogger<GradeController> logger,
                                    IGradeRepository gradeRepository)
        {
            _logger = logger;
            this.gradeRepository = gradeRepository;
        }

       
    }
}

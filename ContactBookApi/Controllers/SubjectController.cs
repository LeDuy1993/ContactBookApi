using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    public class SubjectController : ControllerBase
    {
        private readonly ILogger<SubjectController> _logger;
        private readonly ISubjectRepository subjectRepository;

        public SubjectController(ILogger<SubjectController> logger,
                                    ISubjectRepository subjectRepository)
        {
            _logger = logger;
            this.subjectRepository = subjectRepository;
        }

       
    }
}

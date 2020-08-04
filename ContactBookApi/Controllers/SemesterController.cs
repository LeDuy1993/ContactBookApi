using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Semester;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    public class SemesterController : ControllerBase
    {
        private readonly ILogger<SemesterController> _logger;
        private readonly ISemesterRepository semesterRepository;

        public SemesterController(ILogger<SemesterController> logger,
                                    ISemesterRepository semesterRepository)
        {
            _logger = logger;
            this.semesterRepository = semesterRepository;
        }

        [HttpGet]
        [Route("/api/semester/GetSemesterAll")]
        public async Task<IEnumerable<GetSemesterAll>> GetSemesterAll()
        {
            return await semesterRepository.GetSemesterAll();
        }
    }
}

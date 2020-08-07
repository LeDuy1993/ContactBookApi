using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Subject;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Subject;
using ContactBook.Domain.Responses.SubjectResult;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    [ApiController]
    public class SubjectResultController : ControllerBase
    {
        private readonly ILogger<SubjectResultController> _logger;
        private readonly ISubjectResultRepository subjectResultRepository;

        public SubjectResultController(ILogger<SubjectResultController> logger,
                                    ISubjectResultRepository subjectResultRepository)
        {
            _logger = logger;
            this.subjectResultRepository = subjectResultRepository;
        }


        [HttpGet]
        [Route("/api/subjectResutl/GetSubjectCourseSemesterSubjectId/{courseId}/{semesterId}/{subjectId}")]
        public async Task<IEnumerable<GetSubjectCourseSemesterSubjectId>> GetSubjectCourseSemesterSubjectId(int courseId, int semesterId,int subjectId)
        {
            return await subjectResultRepository.GetSubjectCourseSemesterSubjectId(courseId,semesterId,subjectId);
        }

    }
}

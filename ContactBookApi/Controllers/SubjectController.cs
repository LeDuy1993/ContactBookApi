using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Subject;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Subject;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    [ApiController]
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

        [HttpGet]
        [Route("/api/subject/GetSubjectAll")]
        public async Task<IEnumerable<GetSubjectAll>> Gets()
        {
            return await subjectRepository.GetSubjectAll();
        }

        [HttpPost]
        [Route("/api/subject/save")]
        public async Task<SaveSubjectResult> Save(SaveSubjectRequest request)
        {
            return await subjectRepository.Save(request);
        }


        [HttpDelete]
        [Route("/api/subject/delete/{id}")]
        public async Task<DeleteSubjectResult> Delete(int id)
        {
            return await subjectRepository.Delete(id);
        }
        [HttpGet]
        [Route("/api/subject/GetSubjectById/{id}")]
        public async Task<GetSubjectById> GetSubjectById(int id)
        {
            return await subjectRepository.GetSubjectById(id);
        }
    }
}

using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Subject;
using ContactBook.Domain.Repuests.SubjectResult;
using ContactBook.Domain.Responses;
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
        [Route("/api/subjectResutl/GetSubjectResultClassIdSemesterSubjectId/{semesterId}/{subjectId}/{classId}")]
        public async Task<IEnumerable<GetSubjectResultClassIdSemesterSubjectId>> GetSubjectCourseSemesterSubjectId(int semesterId, int subjectId, int classId)
        {

            return await subjectResultRepository.GetSubjectResultClassIdSemesterSubjectId(semesterId, subjectId, classId);
        }

        [HttpGet]
        [Route("/api/subjectResutl/GetSubjectResultByCourseIdStudentId/{classId}/{studentId}")]
        public async Task<IEnumerable<GetSubjectResultByClassIdStudentId>> GetSubjectResultByClassIdStudentId(int classId, int studentId)
        {

            return await subjectResultRepository.GetSubjectResultByClassIdStudentId(classId, studentId);
        }

        [HttpGet]
        [Route("/api/subjectResutl/GetSubjectResultByClassId/{classId}")]
        public async Task<IEnumerable<GetSubjectResultByClassId>> GetSubjectResultByClassId(int classId)
        {

            return await subjectResultRepository.GetSubjectResultByClassId(classId);
        }

        [HttpPost]
        [Route("/api/subjectResutl/SaveSubjectResult")]
        public async Task<SaveResult> SaveSubjectResult(SaveResultPoint request)
        {

            return await subjectResultRepository.SaveSubjectResult(request);
        }

        [HttpGet]
        [Route("/api/subjectResutl/GetAllTypePoint")]
        public async Task<IEnumerable<GetAllTypePoint>> GetAllTypePoint()
        {

            return await subjectResultRepository.GetAllTypePoint();
        }

        [HttpGet]
        [Route("/api/subjectResutl/GetSubjectResultBySubjectResultId/{subjectResultId}")]
        public async Task<GetSubjectResultBySubjectResultId> GetSubjectResultBySubjectResultId(int subjectResultId)
        {

            return await subjectResultRepository.GetSubjectResultBySubjectResultId(subjectResultId);
        }
    }
}

using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Grade;
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

        /// <summary>
        /// Get all grade
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/grade/GetGradeAll")]
        public async Task<IEnumerable<GradeView>> GetGradeAll()
        {
            return await gradeRepository.GetGradeAll();
        }

        /// <summary>
        /// Get grade by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/grade/getGradeById/{id}")]
        public async Task<GradeView> GetGradeById(int id)
        {
            return await gradeRepository.GetGradeById(id);
        }
    }
}

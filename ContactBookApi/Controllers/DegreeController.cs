using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Degree;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    public class DegreeController : ControllerBase
    {
        private readonly ILogger<DegreeController> _logger;
        private readonly IDegreeRepository degreeRepository;

        public DegreeController(ILogger<DegreeController> logger,
                                    IDegreeRepository degreeRepository)
        {
            _logger = logger;
            this.degreeRepository = degreeRepository;
        }

        /// <summary>
        /// Get all Degree
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/grade/GetDegreeAll")]
        public async Task<IEnumerable<DegreeView>> GetDegreeAll()
        {
            return await degreeRepository.GetDegreeAll();
        }

        /// <summary>
        /// Get Degree by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/grade/getDegreeById/{id}")]
        public async Task<DegreeView> GetDegreeById(int id)
        {
            return await degreeRepository.GetDegreeById(id);
        }
    }
}

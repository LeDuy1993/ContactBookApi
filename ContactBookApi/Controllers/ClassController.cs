using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Class;
using ContactBook.Domain.Responses.Course;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Routing;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    public class ClassController : ControllerBase
    {
        private readonly ILogger<ClassController> _logger;
        private readonly IClassRepository classRepository;

        public ClassController(ILogger<ClassController> logger,
                                    IClassRepository classRepository)
        {
            _logger = logger;
            this.classRepository = classRepository;
        }


        [HttpGet]
        [Route("/api/class/GetClassAll")]
        public async Task<IEnumerable<GetClassAll>> GetClassAll()
        {
            return await classRepository.GetClassAll();
        }
    }
}

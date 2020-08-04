using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
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

       
    }
}

using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Course;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    public class ReligonController : ControllerBase
    {
        private readonly ILogger<ReligonController> _logger;
        private readonly IReligionRepository religionRepository;

        public ReligonController(ILogger<ReligonController> logger,
                                    IReligionRepository religionRepository)
        {
            _logger = logger;
            this.religionRepository = religionRepository;
        }

       
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Nation;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace ContactBookApi.Controllers
{
    [ApiController]
    public class NationController : ControllerBase
    {
        private readonly ILogger<NationController> logger;
        private readonly INationRepository nationRepository;

        public NationController(ILogger<NationController> logger,
                                INationRepository nationRepository)
        {
            this.logger = logger;
            this.nationRepository = nationRepository;
        }

        /// <summary>
        /// Get all nation in DB
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/nation/gets")]
        public async Task<IEnumerable<NationView>> Gets()
        {
            return await nationRepository.Gets();
        }

        /// <summary>
        /// Get nation by nation id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/nation/get/{id}")]
        public async Task<NationView> Get(int id)
        {
            return await nationRepository.Get(id);
        }
    }
}

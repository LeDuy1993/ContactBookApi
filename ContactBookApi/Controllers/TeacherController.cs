using ContactBook.DAL.Interface;
using ContactBook.Domain.Repuests.Teacher;
using ContactBook.Domain.Responses.Course;
using ContactBook.Domain.Responses.Teacher;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBookApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class TeacherController : ControllerBase
    {
        private readonly ILogger<TeacherController> _logger;
        private readonly ITeacherRepository teacherRepository;

        public TeacherController(ILogger<TeacherController> logger,
                                    ITeacherRepository teacherRepository)
        {
            _logger = logger;
            this.teacherRepository = teacherRepository;
        }

        /// <summary>
        /// Get all teacher
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/teacher/getAllTeacher")]
        public async Task<IEnumerable<TeacherView>> GetAllTeacher()
        {
            return await teacherRepository.GetAllTeacher();
        }
        [HttpGet]
        [Route("/api/teacher/GetTeacherBySubjectId/{subjectId}")]
        public async Task<IEnumerable<GetTeacherBySubjectId>> GetTeacherBySubjectId(int subjectId)
        {
            return await teacherRepository.GetTeacherBySubjectId(subjectId);
        }

        /// <summary>
        /// Get teacher by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/teacher/GetTeacherById/{id}")]
        public async Task<TeacherView> GetTeacherById(int id)
        {
            return await teacherRepository.GetTeacherById(id);
        }

        [HttpPost]
        [Route("/api/teacher/save")]
        public async Task<SaveTeacherResult> Save(SaveTeacherRequest request)
        {
            return await teacherRepository.Save(request);
        }


        [HttpDelete]
        [Route("/api/teacher/delete/{id}")]
        public async Task<DeleteTeacherResult> Delete(int id)
        {
            return await teacherRepository.Delete(id);
        }
    }
}

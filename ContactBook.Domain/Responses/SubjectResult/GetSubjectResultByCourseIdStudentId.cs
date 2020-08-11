using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.SubjectResult
{
    public class GetSubjectResultByCourseIdStudentId
    {
        public int SubjectResultId { get; set; }
        public int StudentId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string DateInput { get; set; }
        public int CourseId { get; set; }
        public int SemesterId { get; set; }
        public int SubjectId { get; set; }
        public string Point { get; set; }
        public int TypePointId { get; set; }
        public int ClassId { get; set; }
        public int Coefficient { get; set; }
    }
}

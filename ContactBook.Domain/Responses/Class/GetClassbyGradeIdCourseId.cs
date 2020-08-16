using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Class
{
    public class GetClassbyGradeIdCourseId
    {
        public int ClassId { get; set; }
        public string ClassName { get; set; }
        public int GradeId { get; set; }
        public int CourseId { get; set; }
        public int TeacherId { get; set; }
        public int Students { get; set; }
        public string TeacherName { get; set; }
    }
}

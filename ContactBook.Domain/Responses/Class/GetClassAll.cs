using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Class
{
    public class GetClassAll
    {
        public int ClassId { get; set; }
        public string ClassName { get; set; }
        public int GradeId { get; set; }
        public int CourseId { get; set; }
        public int TeacherId { get; set; }
    }
}

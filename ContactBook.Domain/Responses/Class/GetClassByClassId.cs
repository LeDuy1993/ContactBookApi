using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Class
{
    public class GetClassByClassId
    {
        public int ClassId { get; set; }
        public string ClassName { get; set; }
        public string CourseName { get; set; }
        public string TeacherName { get; set; }
    }
}

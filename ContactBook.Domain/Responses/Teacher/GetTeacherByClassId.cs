using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Teacher
{
    public class GetTeacherByClassId
    {
        public int ClassId { get; set; }
        public string ClassName { get; set; }
        public int TeacherId { get; set; }
        public string TeacherName { get; set; }
    }
}

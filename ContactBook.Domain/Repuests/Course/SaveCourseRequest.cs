using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Repuests.Course
{
   public class SaveCourseRequest
    {
        public int CourseId { get; set; }
        public string CourseName { get; set; }
    }
}

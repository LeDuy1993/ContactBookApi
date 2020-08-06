using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Teacher
{
    public class GetTeacherBySubjectId
    {
        public int TeacherId { get; set; }
        public string TeacherName { get; set; }
        public string DayOfBirth { get; set; }
        public string Gender { get; set; }
        public string Phone { get; set; }
        public string AvatarPath { get; set; }

    }
}

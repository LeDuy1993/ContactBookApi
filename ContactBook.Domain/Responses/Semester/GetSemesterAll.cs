using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Semester
{
    public class GetSemesterAll
    {
        public int SemesterId { get; set; }
        public string SemesterName { get; set; }
        public int CoefficientSemester { get; set; }
    }
}

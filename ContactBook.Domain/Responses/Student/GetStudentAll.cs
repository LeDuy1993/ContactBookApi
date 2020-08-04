using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Student
{
    public class GetStudentAll
    {
            public int StudentId { get; set; }
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string Gender { get; set; }
            public string DayOfBirth { get; set; }
            public string PlaceOfBirth { get; set; }
    }
}

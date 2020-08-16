using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Student
{
    public class GetStudentsNew
    {
        public int StudentId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
    }
}

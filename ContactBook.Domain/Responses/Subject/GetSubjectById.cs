using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Subject
{
    public class GetSubjectById
    {
        public int SubjectId { get; set; }
        public string SubjectName { get; set; }
        public int Coefficient { get; set; }
    }
}

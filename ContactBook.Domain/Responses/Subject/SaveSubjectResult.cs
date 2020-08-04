using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Subject
{
    public class SaveSubjectResult
    {
        public int SubjectId { get; set; }
        public string Message { get; set; }
    }
}

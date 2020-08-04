using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Subject
{
    public class DeleteSubjectResult
    {
        public int SubjectId { get; set; }
        public string Message { get; set; }
    }
}

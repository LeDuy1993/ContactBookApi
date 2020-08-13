using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.SubjectResult
{
    public class GetSubjectResultBySubjectResultId
    {
        public int SubjectResultId { get; set; }
        public int ClassId { get; set; }
        public int SemesterId { get; set; }
        public int SubjectId { get; set; }
        public int StudentId { get; set; }
        public string ListPoint { get; set; }
        public string ListDate { get; set; }
    }
}

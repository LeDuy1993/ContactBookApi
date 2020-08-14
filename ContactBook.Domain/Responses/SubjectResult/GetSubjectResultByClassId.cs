using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.SubjectResult
{
    public class GetSubjectResultByClassId
    {
        public int SubjectResultId { get; set; }
        public int StudentId { get; set; }
        public int SubjectId { get; set; }
        public int ClassStudentId { get; set; }
        public int SemesterId { get; set; }
        public int ClassSubjectId { get; set; }
        public string ListPoint { get; set; }
        public string ListDate { get; set; }
    }
}

﻿using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Repuests.SubjectResult
{
    public class SaveResultPoint
    {
        public int SubjectResultId { get; set; }
        public int StudentId { get; set; }
        public int SemesterId { get; set; }
        public int SubjectId { get; set; }
        public int TypePointId { get; set; }
        public int CourseId { get; set; }
        public int ClassId { get; set; }
        public float Point { get; set; }
    }
}

﻿using System;
using System.Collections.Generic;
using System.Text;

namespace ContactBook.Domain.Responses.Teacher
{
    public class GetTeacherbyTeacherId
    {
        public int TeacherId { get; set; }
        public string TeacherName { get; set; }
        public string DayOfBirth { get; set; }
        public string PlaceOfBirth { get; set; }
        public bool Gender { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public int SubjectId { get; set; }
        public string AvatarPath { get; set; }
        public int DegreeId { get; set; }
        public string DayToWork { get; set; }
    }
}

﻿using ContactBook.Domain.Responses.SubjectResult;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
    public interface ISubjectResultRepository
    {
 
        Task<IEnumerable<GetSubjectCourseSemesterSubjectId>> 
            GetSubjectCourseSemesterSubjectId(int courseId, int semesterId,int subjecId);
       
    }
}
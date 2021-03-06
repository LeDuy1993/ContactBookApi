﻿using ContactBook.Domain.Repuests.SubjectResult;
using ContactBook.Domain.Responses;
using ContactBook.Domain.Responses.SubjectResult;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ContactBook.DAL.Interface
{
    public interface ISubjectResultRepository
    {
 
        Task<IEnumerable<GetSubjectResultClassIdSemesterSubjectId>> GetSubjectResultClassIdSemesterSubjectId(int semesterId,int subjectId, int classId);
        Task<GetSubjectResultBySubjectResultId> GetSubjectResultBySubjectResultId(int subjectResultId);

        Task<IEnumerable<GetSubjectResultByClassIdStudentId>>
            GetSubjectResultByClassIdStudentId(int classId, int studentId);
        Task<IEnumerable<GetSubjectResultByClassId>>
           GetSubjectResultByClassId(int classId);
        Task<SaveResult> SaveSubjectResult(SaveResultPoint request);
        Task<IEnumerable<GetAllTypePoint>> GetAllTypePoint();
        Task<GetClassStudentIdByClassIdStudentId> GetClassStudentIdByClassIdStudentId(int classId, int studentId);
        Task<GetClassSubjectIdByClassIdSubjectId> GetClassSubjectIdByClassIdSubjectId(int classId, int subjectId);
    }
}

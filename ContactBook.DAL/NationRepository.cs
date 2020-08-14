using ContactBook.DAL.Interface;
using ContactBook.Domain.Responses.Nation;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace ContactBook.DAL
{
   public class NationRepository : BaseRepository, INationRepository
    {
        public async Task<NationView> Get(int nationId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@NationId", nationId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<NationView>(cnn: connection,
                             param: parameters,
                            sql: "sp_Get_NationId",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<GetNationAll>> GetNationAll()
        {
            return await SqlMapper.QueryAsync<GetNationAll>(cnn: connection,
                                                    sql: "sp_Get_NationAll",
                                                    commandType: CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<NationView>> Gets()
        {
            return await SqlMapper.QueryAsync<NationView>(cnn: connection, 
                                                    sql: "sp_Get_All_Nation", 
                                                    commandType: CommandType.StoredProcedure);
        }

        //public async Task<IEnumerable<StudentView>> GetStudents(int nationId)
        //{
        //    DynamicParameters parameters = new DynamicParameters();
        //    parameters.Add("@NationId", nationId);
        //    return await SqlMapper.QueryAsync<StudentView>(cnn: connection,
        //                param: parameters,
        //                sql: "sp_Get_Students_ByNationId",
        //                commandType: CommandType.StoredProcedure);
        //}
    }
}

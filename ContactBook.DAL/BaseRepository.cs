using ContactBook.Domain;
using System;
using System.Data;
using System.Data.SqlClient;

namespace ContactBook.DAL
{
    public class BaseRepository
    {
        protected IDbConnection connection;
        public BaseRepository()
        {
            connection = new SqlConnection(Common.ConnectionString);
        }
    }
}

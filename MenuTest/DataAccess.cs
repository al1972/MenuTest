using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace MenuTest
{
   public static class DataAccess {
private static readonly string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
//private static readonly DbProviderFactory factory = DbProviderFactories.GetFactory(dataProvider);

//public static int Update(string sql)
//        {
//            using (DbConnection connection = factory.CreateConnection())
//            {
//                connection.ConnectionString = connectionString;

//                using (DbCommand command = factory.CreateCommand())
//                {
//                    command.Connection = connection;
//                    command.CommandText = sql;

//                    connection.Open();
//                    return command.ExecuteNonQuery();
//                }
//            }
//        }

//public static DataTable GetDataTable(string sql)
//        {
//            using (DbConnection connection = factory.CreateConnection())
//            {
//                connection.ConnectionString = connectionString;

//                using (DbCommand command = factory.CreateCommand())
//                {
//                    command.Connection = connection;
//                    command.CommandType = CommandType.Text;
//                    command.CommandText = sql;

//                    using (DbDataAdapter adapter = factory.CreateDataAdapter())
//                    {
//                        adapter.SelectCommand = command;

//                        DataTable dt = new DataTable();
//                        adapter.Fill(dt);

//                        return dt;
//                    }
//                }
//            }
   }
}
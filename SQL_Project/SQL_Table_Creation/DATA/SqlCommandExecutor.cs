using System;
using System.Transactions;
using System.Data.SqlClient;
using System.IO;

namespace SQL_Project.SQL_Table_Creation.DATA
{
    public  class SqlCommandExecutor
    {
        //string to connect to the data base
        private  readonly string ConnectionString;

        //sets the connection string when the sql command executor is created
        public SqlCommandExecutor(string server, string database)
        {
            this.ConnectionString = (@"Server=(localdb)\MSSQLLocalDB;Database=JACOB\jacob;Integrated Security=SSPI;");
        }

        //another way to create the command executor
        public SqlCommandExecutor(string connectionString)
        {
            if (string.IsNullOrWhiteSpace(connectionString))
            {
                throw new ArgumentException("Thep ramater can't be null or empty", nameof(connectionString));
            }
            this.ConnectionString = connectionString;
        }

        //runs the sql command fed into the command executor
        public void RunSqlCommand(string filename)
        {
            string CommandText = File.ReadAllText(filename);

            using (var transaction = new TransactionScope())
            {
                using (var connection = new SqlConnection(ConnectionString))
                {
                    using (var command = new SqlCommand(CommandText, connection))
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        transaction.Complete();
                        connection.Close();
                    }
                }
            }
        }
    }
}

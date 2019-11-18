using System;
using System.Transactions;
using System.Data.SqlClient;
using System.IO;

namespace SQL_Project.SQL_Table_Creation.DATA
{
    public  class SqlCommandExecutor
    {
        private  readonly string ConnectionString;
        public SqlCommandExecutor(string server, string database)
        {
            this.ConnectionString = (@"Server=(localdb)\MSSQLLocalDB;Database=JACOB\jacob;Integrated Security=SSPI;");
        }

        public SqlCommandExecutor(string connectionString)
        {
            if (string.IsNullOrWhiteSpace(connectionString))
            {
                throw new ArgumentException("Thepramater can't be null or empty", nameof(connectionString));
            }
            this.ConnectionString = connectionString;
        }

        public void TESConnection()
        {
            string CommandText = File.ReadAllText(@"C:\Users\jacob\source\repos\SQL560Project\SQL_Project\SQL_Table_Creation\Tabels:FoodNStuff.JobType.sql");

            using (var transaction = new TransactionScope())
            {
                using (var connection = new SqlConnection(ConnectionString))
                {
                    using (var command = new SqlCommand(CommandText, connection))
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        transaction.Complete();
                    }
                }
            }
        }



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
                    }
                }
            }
        }
    }
}

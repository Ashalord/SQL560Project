using System;
using System.Data.SqlClient;
using System.IO;

namespace SQL_Project.SQL_Table_Creation.DATA
{
    public class CreateTablesScript
    {
        private string x = @"C:\Users\jacob\source\repos\SQL560Project\SQL_Project\SQL_Table_Creation\Tabels";
        private string y = @"C:\Users\jacob\source\repos\SQL560Project\SQL_Project\SQL_Table_Creation\Data";
        private SqlCommandExecutor cmd = new SqlCommandExecutor(@"Server=(localdb)\MSSQLLocalDB;Database=master;Trusted_Connection=True;");
        //Droping tables call
        public void Drop_Tables()
        {
            cmd.RunSqlCommand(Path.Combine(x, "DropTables.sql"));
        }

        //call to make all the sql tables
        public void Create_Tables()
        {
            string[] s = new string[7];

            s[0] = Path.Combine(x, "FoodNStuff.JobType.sql");
            s[1] = Path.Combine(x, "FoodNStuff.Empyloyee.sql"); 
            s[2] = Path.Combine(x, "FoodNStuff.Customer.sql"); 
            s[3] = Path.Combine(x, "FoodNStuff.Sales.sql"); 
            s[4] = Path.Combine(x, "FoodNStuff.Product.sql"); 
            s[5] = Path.Combine(x, "FoodNStuff.Inventory.sql"); 
            s[6] = Path.Combine(x, "FoodNStuff.SaleItem.sql");

            foreach (string st in s)
            {
                cmd.RunSqlCommand(st);
            }
        }

        //call to insert all the data
        public void Insert_Data()
        {
            cmd.RunSqlCommand(Path.Combine(y, "InsertScripts.sql"));
        }

        //drops the schema
        public void Drop_Schema()
        {
            cmd.RunSqlCommand(Path.Combine(x, "DropSchema.sql"));
        }

        //makes the schema
        public void Make_Schema()
        {
            cmd.RunSqlCommand(Path.Combine(x, "MakeSchema.sql"));
        }

    }
}

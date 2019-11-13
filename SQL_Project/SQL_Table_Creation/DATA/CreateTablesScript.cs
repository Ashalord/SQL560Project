using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SQL_Project.SQL_Table_Creation.DATA
{
    public static class CreateTablesScript
    {
        //Droping tables call
        public static void Drop_Tables()
        {
            var fileContent = File.ReadAllText("DropTables.sql");
            var sqlqueries = fileContent.Split(new[] { " GO " }, StringSplitOptions.RemoveEmptyEntries);

            var con = new SqlConnection("connstring");
            var cmd = new SqlCommand("query", con);
            con.Open();
            foreach (var query in sqlqueries)
            {
                cmd.CommandText = query;
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }

        //call to make all the sql tables
        public static void Create_Tables()
        {
            string[] s = new string[7];

            s[1] = "FoodNStuff.JobType";
            s[2] = "FoodNStuff.Employee";
            s[3] = "FoodNStuff.Customer";
            s[4] = "FoodNStuff.Sales";
            s[5] = "FoodNStuff.Product";
            s[6] = "FoodNStuff.Inventory";
            s[7] = "FoodNStuff.SaleItem";

            foreach(string st in s)
            {
                Make_Tables(st);
            }
        }

        //call to insert all the data
        public static void Insert_Data()
        {
            var fileContent = File.ReadAllText("InsertScripts.sql");
            var sqlqueries = fileContent.Split(new[] { " GO " }, StringSplitOptions.RemoveEmptyEntries);

            var con = new SqlConnection("connstring");
            var cmd = new SqlCommand("query", con);
            con.Open();
            foreach (var query in sqlqueries)
            {
                cmd.CommandText = query;
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }

        //creates the tables from the call create_tables()
        private static void Make_Tables(string s)
        {
            var fileContent = File.ReadAllText(s + ".sql");
            var sqlqueries = fileContent.Split(new[] { " GO " }, StringSplitOptions.RemoveEmptyEntries);

            var con = new SqlConnection("connstring");
            var cmd = new SqlCommand("query", con);
            con.Open();
            foreach (var query in sqlqueries)
            {
                cmd.CommandText = query;
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }
    }
}

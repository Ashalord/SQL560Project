﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SQL_Project.SQL_Table_Creation.DATA;
using System.Data.SqlClient;

namespace SQL_Project
{
    public partial class Form1 : Form
    {
        SqlConnection con = new SqlConnection(@"Server=(localdb)\MSSQLLocalDB;Database=master;Trusted_Connection=True;");
        SqlDataAdapter da;
        DataSet ds;

        public Form1()
        {
            CreateTablesScript cts = new CreateTablesScript();
            cts.Drop_Tables();
            cts.Create_Tables();
            cts.Insert_Data();
            InitializeComponent();
        }

        private void TEST_BUTTON_Click(object sender, EventArgs e)
        {
            string query = "Select * From FoodNStuff.JobType";
            da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);
            con.Close();

            if(ds.Tables[0].Rows.Count != 0)
            {
                dataGridView.DataSource = ds.Tables[0];
            }

            //SqlCommandExecutor SQL = new SqlCommandExecutor(@"Server=(localdb)\MSSQLLocalDB;Database=master;Trusted_Connection=True;");
            //SQL.RunSqlCommand(Path.Combine(@"C:\Users\jacob\source\repos\SQL560Project\SQL_Project\SQL_Table_Creation\Tabels", "MakeSchema.sql"));
        }
    }
}

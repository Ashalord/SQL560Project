using System;
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
        string x = @"C: \Users\jacob\source\repos\SQL560Project\SQL_Project\SQL_Queries\";
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

        private void MakeQueryVari(string file, string vari)
        {
            //"Select * From FoodNStuff.JobType"
            string query = File.ReadAllText(Path.Combine(x, file));
            query = query.Replace("$", vari);

            da = new SqlDataAdapter(query, con);
            ds = new DataSet();
            da.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count != 0)
            {
                dataGridView.DataSource = ds.Tables[0];
            }
        }


        private void FoodExp_Click(object sender, EventArgs e)
        {
            if(TopEXP.Text == "")
            {
                MessageBox.Show("ENTER A DATE YYYY-MM-DD");
            }
            else
            {
                MakeQueryVari("FoodExpOnDate.sql", TopEXP.Text);
                TopEXP.Text = "";
            }
            
        }

        private void TopEmployee_Click(object sender, EventArgs e)
        {
            if (EmpYear.Text == "")
            {
                MessageBox.Show("ENTER A YEAR");
            }
            else
            {
                MakeQueryVari("TopEmployeeYear.sql", EmpYear.Text);
                EmpYear.Text = "";
            }
        }

        private void ProdMonth_Click(object sender, EventArgs e)
        {
                if (ProductMonth.Text == "")
            {
                MessageBox.Show("ENTER A PRODUCT ID");
            }
            else
            {
                MakeQueryVari("SalesForProductByMonth.sql", ProductMonth.Text);
                ProductMonth.Text = "";
            }
        }

        private void TopCustMonth_Click_1(object sender, EventArgs e)
        {
            if (TOPCUST.Text == "")
            {
                MessageBox.Show("ENTER A MONTH 1-12");
            }
            else
            {
                MakeQueryVari("TopTenMonth.sql", TOPCUST.Text);
                TOPCUST.Text = "";
            }
        }
    }
}

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
using System.Data.SqlClient;
using SQL_Project.SQL_Table_Creation.DATA;

namespace SQL_Project
{
    public partial class Form1 : Form
    {
        //string for where the queries are located
        string x = @"C: \Users\jacob\source\repos\SQL560Project\SQL_Project\Procedures\";

        SqlConnection con = new SqlConnection(@"Server=(localdb)\MSSQLLocalDB;Database=master;Trusted_Connection=True;");
        SqlDataAdapter da;
        DataSet ds;

        //recreates the whole database before the form is loaded
        public Form1()
        {
            CreateTablesScript cts = new CreateTablesScript();
            cts.Drop_Tables();
            cts.Drop_Schema();
            cts.Make_Schema();
            cts.Create_Tables();
            cts.Insert_Data();
            InitializeComponent();
        }


        /// <summary>
        /// reads the sql code from a file and makes the query with the given sql code
        /// </summary>
        /// <param name="file"> file name for the sql code </param>
        /// <param name="vari"> the string that is read in from the textbox </param>
        private void MakeQueryVari(string file, string vari)
        {
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

        //on click takes in the date and returns what is expering on the day
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

        //on click takes in the year and returns the top employee for the year
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

        //on click takes in the product id and returns how much has been sold
        private void ProdMonth_Click(object sender, EventArgs e)
        {
                if (ProductMonth.Text == "")
            {
                MessageBox.Show("ENTER A PRODUCT ID");
            }
            else
            {
                MakeQueryVari("SalesForProduct.sql", ProductMonth.Text);
                ProductMonth.Text = "";
            }
        }

        //on click retuns the top custoemr for the month
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

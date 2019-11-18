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

namespace SQL_Project
{
    public partial class Form1 : Form
    {
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
            SqlCommandExecutor SQL = new SqlCommandExecutor(@"Server=(localdb)\MSSQLLocalDB;Database=master;Trusted_Connection=True;");
            SQL.RunSqlCommand(Path.Combine(@"C:\Users\jacob\source\repos\SQL560Project\SQL_Project\SQL_Table_Creation\Tables", "MakeSchema.sql"));
        }
    }
}

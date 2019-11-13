using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
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
            InitializeComponent();
        }

        private void TEST_BUTTON_Click(object sender, EventArgs e)
        {
            CreateTablesScript.Drop_Tables();
            CreateTablesScript.Create_Tables();
            CreateTablesScript.Insert_Data();
        }
    }
}

namespace SQL_Project
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.TopCustMonth = new System.Windows.Forms.Button();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.TopEmployee = new System.Windows.Forms.Button();
            this.TopEXP = new System.Windows.Forms.TextBox();
            this.TOPCUST = new System.Windows.Forms.TextBox();
            this.ProdMonth = new System.Windows.Forms.Button();
            this.FoodExp = new System.Windows.Forms.Button();
            this.EmpYear = new System.Windows.Forms.TextBox();
            this.ProductMonth = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // TopCustMonth
            // 
            this.TopCustMonth.Location = new System.Drawing.Point(295, 466);
            this.TopCustMonth.Name = "TopCustMonth";
            this.TopCustMonth.Size = new System.Drawing.Size(230, 88);
            this.TopCustMonth.TabIndex = 0;
            this.TopCustMonth.Text = "Top 10% Customers Of the Month";
            this.TopCustMonth.UseVisualStyleBackColor = true;
            this.TopCustMonth.Click += new System.EventHandler(this.TopCustMonth_Click_1);
            // 
            // dataGridView
            // 
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Location = new System.Drawing.Point(12, 12);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.Size = new System.Drawing.Size(1020, 426);
            this.dataGridView.TabIndex = 1;
            // 
            // TopEmployee
            // 
            this.TopEmployee.Location = new System.Drawing.Point(548, 463);
            this.TopEmployee.Name = "TopEmployee";
            this.TopEmployee.Size = new System.Drawing.Size(230, 88);
            this.TopEmployee.TabIndex = 2;
            this.TopEmployee.Text = "Top Employee For The Year";
            this.TopEmployee.UseVisualStyleBackColor = true;
            this.TopEmployee.Click += new System.EventHandler(this.TopEmployee_Click);
            // 
            // TopEXP
            // 
            this.TopEXP.Location = new System.Drawing.Point(40, 560);
            this.TopEXP.Name = "TopEXP";
            this.TopEXP.Size = new System.Drawing.Size(230, 20);
            this.TopEXP.TabIndex = 3;
            // 
            // TOPCUST
            // 
            this.TOPCUST.Location = new System.Drawing.Point(295, 560);
            this.TOPCUST.Name = "TOPCUST";
            this.TOPCUST.Size = new System.Drawing.Size(230, 20);
            this.TOPCUST.TabIndex = 4;
            // 
            // ProdMonth
            // 
            this.ProdMonth.Location = new System.Drawing.Point(802, 463);
            this.ProdMonth.Name = "ProdMonth";
            this.ProdMonth.Size = new System.Drawing.Size(230, 88);
            this.ProdMonth.TabIndex = 5;
            this.ProdMonth.Text = "Total Sales  for a Product";
            this.ProdMonth.UseVisualStyleBackColor = true;
            this.ProdMonth.Click += new System.EventHandler(this.ProdMonth_Click);
            // 
            // FoodExp
            // 
            this.FoodExp.Location = new System.Drawing.Point(40, 466);
            this.FoodExp.Name = "FoodExp";
            this.FoodExp.Size = new System.Drawing.Size(230, 87);
            this.FoodExp.TabIndex = 6;
            this.FoodExp.Text = "Food Expering on Date";
            this.FoodExp.UseVisualStyleBackColor = true;
            this.FoodExp.Click += new System.EventHandler(this.FoodExp_Click);
            // 
            // EmpYear
            // 
            this.EmpYear.Location = new System.Drawing.Point(548, 558);
            this.EmpYear.Name = "EmpYear";
            this.EmpYear.Size = new System.Drawing.Size(230, 20);
            this.EmpYear.TabIndex = 7;
            // 
            // ProductMonth
            // 
            this.ProductMonth.Location = new System.Drawing.Point(802, 558);
            this.ProductMonth.Name = "ProductMonth";
            this.ProductMonth.Size = new System.Drawing.Size(230, 20);
            this.ProductMonth.TabIndex = 8;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1044, 613);
            this.Controls.Add(this.ProductMonth);
            this.Controls.Add(this.EmpYear);
            this.Controls.Add(this.FoodExp);
            this.Controls.Add(this.ProdMonth);
            this.Controls.Add(this.TOPCUST);
            this.Controls.Add(this.TopEXP);
            this.Controls.Add(this.TopEmployee);
            this.Controls.Add(this.dataGridView);
            this.Controls.Add(this.TopCustMonth);
            this.Name = "Form1";
            this.Text = "Food and Stuff System";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button TopCustMonth;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Button TopEmployee;
        private System.Windows.Forms.TextBox TopEXP;
        private System.Windows.Forms.TextBox TOPCUST;
        private System.Windows.Forms.Button ProdMonth;
        private System.Windows.Forms.Button FoodExp;
        private System.Windows.Forms.TextBox EmpYear;
        private System.Windows.Forms.TextBox ProductMonth;
    }
}


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
            this.TEST_BUTTON = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // TEST_BUTTON
            // 
            this.TEST_BUTTON.Location = new System.Drawing.Point(234, 117);
            this.TEST_BUTTON.Name = "TEST_BUTTON";
            this.TEST_BUTTON.Size = new System.Drawing.Size(224, 199);
            this.TEST_BUTTON.TabIndex = 0;
            this.TEST_BUTTON.Text = "TEST";
            this.TEST_BUTTON.UseVisualStyleBackColor = true;
            this.TEST_BUTTON.Click += new System.EventHandler(this.TEST_BUTTON_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.TEST_BUTTON);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button TEST_BUTTON;
    }
}


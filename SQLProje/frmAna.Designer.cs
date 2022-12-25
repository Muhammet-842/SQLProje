
namespace SQLProje
{
    partial class frmAna
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
            this.btnOyun = new System.Windows.Forms.Button();
            this.btnHesap = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnOyun
            // 
            this.btnOyun.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnOyun.Location = new System.Drawing.Point(186, 136);
            this.btnOyun.Name = "btnOyun";
            this.btnOyun.Size = new System.Drawing.Size(142, 57);
            this.btnOyun.TabIndex = 11;
            this.btnOyun.Text = "Oyun";
            this.btnOyun.UseVisualStyleBackColor = true;
            this.btnOyun.Click += new System.EventHandler(this.btnOyun_Click);
            // 
            // btnHesap
            // 
            this.btnHesap.CausesValidation = false;
            this.btnHesap.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnHesap.Location = new System.Drawing.Point(354, 136);
            this.btnHesap.Name = "btnHesap";
            this.btnHesap.Size = new System.Drawing.Size(142, 57);
            this.btnHesap.TabIndex = 10;
            this.btnHesap.Text = "Hesap";
            this.btnHesap.UseVisualStyleBackColor = true;
            this.btnHesap.Click += new System.EventHandler(this.btnHesap_Click);
            // 
            // frmAna
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(676, 351);
            this.Controls.Add(this.btnOyun);
            this.Controls.Add(this.btnHesap);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Name = "frmAna";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmAna";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnOyun;
        private System.Windows.Forms.Button btnHesap;
    }
}
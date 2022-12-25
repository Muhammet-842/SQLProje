
namespace SQLProje
{
    partial class frmoyun
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.txtOyunId = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtOyunTur = new System.Windows.Forms.TextBox();
            this.btnGuncelle = new System.Windows.Forms.Button();
            this.btnSil = new System.Windows.Forms.Button();
            this.txtOyunFiyat = new System.Windows.Forms.TextBox();
            this.txtOyunPuan = new System.Windows.Forms.TextBox();
            this.txtOyunElestiri = new System.Windows.Forms.TextBox();
            this.txtOyunGb = new System.Windows.Forms.TextBox();
            this.txtSirketId = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.txtMagazaId = new System.Windows.Forms.TextBox();
            this.btnListele = new System.Windows.Forms.Button();
            this.btnEkle = new System.Windows.Forms.Button();
            this.btn_HomePage = new System.Windows.Forms.Button();
            this.btnUcretli = new System.Windows.Forms.Button();
            this.btnUcretsiz = new System.Windows.Forms.Button();
            this.txtUcretliId = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.btnUcretliSil = new System.Windows.Forms.Button();
            this.btnUcretsizSil = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.txtUcretsizId = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(-6, -1);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 25;
            this.dataGridView1.Size = new System.Drawing.Size(899, 304);
            this.dataGridView1.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(254, 328);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(69, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "Oyun ID:";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // txtOyunId
            // 
            this.txtOyunId.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtOyunId.Location = new System.Drawing.Point(329, 327);
            this.txtOyunId.Name = "txtOyunId";
            this.txtOyunId.Size = new System.Drawing.Size(100, 25);
            this.txtOyunId.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label2.Location = new System.Drawing.Point(246, 375);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 17);
            this.label2.TabIndex = 4;
            this.label2.Text = "Oyun Türü:";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // txtOyunTur
            // 
            this.txtOyunTur.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtOyunTur.Location = new System.Drawing.Point(329, 374);
            this.txtOyunTur.Name = "txtOyunTur";
            this.txtOyunTur.Size = new System.Drawing.Size(100, 25);
            this.txtOyunTur.TabIndex = 5;
            // 
            // btnGuncelle
            // 
            this.btnGuncelle.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnGuncelle.Location = new System.Drawing.Point(412, 606);
            this.btnGuncelle.Name = "btnGuncelle";
            this.btnGuncelle.Size = new System.Drawing.Size(100, 32);
            this.btnGuncelle.TabIndex = 7;
            this.btnGuncelle.Text = "Güncelle";
            this.btnGuncelle.UseVisualStyleBackColor = true;
            this.btnGuncelle.Click += new System.EventHandler(this.btnGuncelle_Click);
            // 
            // btnSil
            // 
            this.btnSil.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnSil.Location = new System.Drawing.Point(561, 606);
            this.btnSil.Name = "btnSil";
            this.btnSil.Size = new System.Drawing.Size(100, 32);
            this.btnSil.TabIndex = 8;
            this.btnSil.Text = "Sil";
            this.btnSil.UseVisualStyleBackColor = true;
            this.btnSil.Click += new System.EventHandler(this.btnSil_Click);
            // 
            // txtOyunFiyat
            // 
            this.txtOyunFiyat.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtOyunFiyat.Location = new System.Drawing.Point(329, 458);
            this.txtOyunFiyat.Name = "txtOyunFiyat";
            this.txtOyunFiyat.Size = new System.Drawing.Size(100, 25);
            this.txtOyunFiyat.TabIndex = 10;
            // 
            // txtOyunPuan
            // 
            this.txtOyunPuan.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtOyunPuan.Location = new System.Drawing.Point(329, 415);
            this.txtOyunPuan.Name = "txtOyunPuan";
            this.txtOyunPuan.Size = new System.Drawing.Size(100, 25);
            this.txtOyunPuan.TabIndex = 11;
            // 
            // txtOyunElestiri
            // 
            this.txtOyunElestiri.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtOyunElestiri.Location = new System.Drawing.Point(329, 502);
            this.txtOyunElestiri.Name = "txtOyunElestiri";
            this.txtOyunElestiri.Size = new System.Drawing.Size(100, 25);
            this.txtOyunElestiri.TabIndex = 12;
            // 
            // txtOyunGb
            // 
            this.txtOyunGb.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtOyunGb.Location = new System.Drawing.Point(329, 547);
            this.txtOyunGb.Name = "txtOyunGb";
            this.txtOyunGb.Size = new System.Drawing.Size(100, 25);
            this.txtOyunGb.TabIndex = 13;
            // 
            // txtSirketId
            // 
            this.txtSirketId.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtSirketId.Location = new System.Drawing.Point(547, 325);
            this.txtSirketId.Name = "txtSirketId";
            this.txtSirketId.Size = new System.Drawing.Size(100, 25);
            this.txtSirketId.TabIndex = 14;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label3.Location = new System.Drawing.Point(240, 418);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(88, 17);
            this.label3.TabIndex = 15;
            this.label3.Text = "Oyun Puanı:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label4.Location = new System.Drawing.Point(254, 459);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 17);
            this.label4.TabIndex = 16;
            this.label4.Text = "Fiyat:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label5.Location = new System.Drawing.Point(254, 503);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(65, 17);
            this.label5.TabIndex = 17;
            this.label5.Text = "Eleştiri: ";
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label6.Location = new System.Drawing.Point(264, 548);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(35, 17);
            this.label6.TabIndex = 18;
            this.label6.Text = "GB:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label7.Location = new System.Drawing.Point(464, 330);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(74, 17);
            this.label7.TabIndex = 19;
            this.label7.Text = "Şirket ID:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label8.Location = new System.Drawing.Point(464, 379);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(84, 17);
            this.label8.TabIndex = 20;
            this.label8.Text = "Mağaza ID:";
            this.label8.Click += new System.EventHandler(this.label8_Click);
            // 
            // txtMagazaId
            // 
            this.txtMagazaId.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtMagazaId.Location = new System.Drawing.Point(547, 372);
            this.txtMagazaId.Name = "txtMagazaId";
            this.txtMagazaId.Size = new System.Drawing.Size(100, 25);
            this.txtMagazaId.TabIndex = 21;
            // 
            // btnListele
            // 
            this.btnListele.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnListele.Location = new System.Drawing.Point(1, 382);
            this.btnListele.Name = "btnListele";
            this.btnListele.Size = new System.Drawing.Size(152, 49);
            this.btnListele.TabIndex = 22;
            this.btnListele.Text = "Listele";
            this.btnListele.UseVisualStyleBackColor = true;
            this.btnListele.Click += new System.EventHandler(this.btnListele_Click);
            // 
            // btnEkle
            // 
            this.btnEkle.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnEkle.Location = new System.Drawing.Point(260, 606);
            this.btnEkle.Name = "btnEkle";
            this.btnEkle.Size = new System.Drawing.Size(100, 32);
            this.btnEkle.TabIndex = 23;
            this.btnEkle.Text = "Ekle";
            this.btnEkle.UseVisualStyleBackColor = true;
            this.btnEkle.Click += new System.EventHandler(this.btnEkle_Click);
            // 
            // btn_HomePage
            // 
            this.btn_HomePage.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btn_HomePage.Location = new System.Drawing.Point(1, 304);
            this.btn_HomePage.Name = "btn_HomePage";
            this.btn_HomePage.Size = new System.Drawing.Size(152, 46);
            this.btn_HomePage.TabIndex = 53;
            this.btn_HomePage.Text = "⌂ Ana Sayfa";
            this.btn_HomePage.UseVisualStyleBackColor = true;
            this.btn_HomePage.Click += new System.EventHandler(this.btn_HomePage_Click);
            // 
            // btnUcretli
            // 
            this.btnUcretli.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnUcretli.Location = new System.Drawing.Point(26, 18);
            this.btnUcretli.Name = "btnUcretli";
            this.btnUcretli.Size = new System.Drawing.Size(148, 37);
            this.btnUcretli.TabIndex = 54;
            this.btnUcretli.Text = "Ücretli Oyunlar";
            this.btnUcretli.UseVisualStyleBackColor = true;
            this.btnUcretli.Click += new System.EventHandler(this.btnUcretli_Click);
            // 
            // btnUcretsiz
            // 
            this.btnUcretsiz.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnUcretsiz.Location = new System.Drawing.Point(18, 22);
            this.btnUcretsiz.Name = "btnUcretsiz";
            this.btnUcretsiz.Size = new System.Drawing.Size(148, 37);
            this.btnUcretsiz.TabIndex = 55;
            this.btnUcretsiz.Text = "Ücretsiz Oyunlar";
            this.btnUcretsiz.UseVisualStyleBackColor = true;
            this.btnUcretsiz.Click += new System.EventHandler(this.btnUcretsiz_Click);
            // 
            // txtUcretliId
            // 
            this.txtUcretliId.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtUcretliId.Location = new System.Drawing.Point(47, 61);
            this.txtUcretliId.Name = "txtUcretliId";
            this.txtUcretliId.Size = new System.Drawing.Size(100, 25);
            this.txtUcretliId.TabIndex = 56;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label9.Location = new System.Drawing.Point(11, 64);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(30, 17);
            this.label9.TabIndex = 57;
            this.label9.Text = "ID:";
            // 
            // btnUcretliSil
            // 
            this.btnUcretliSil.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnUcretliSil.Location = new System.Drawing.Point(47, 92);
            this.btnUcretliSil.Name = "btnUcretliSil";
            this.btnUcretliSil.Size = new System.Drawing.Size(100, 30);
            this.btnUcretliSil.TabIndex = 58;
            this.btnUcretliSil.Text = "Sil";
            this.btnUcretliSil.UseVisualStyleBackColor = true;
            this.btnUcretliSil.Click += new System.EventHandler(this.btnUcretliSil_Click);
            // 
            // btnUcretsizSil
            // 
            this.btnUcretsizSil.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnUcretsizSil.Location = new System.Drawing.Point(54, 98);
            this.btnUcretsizSil.Name = "btnUcretsizSil";
            this.btnUcretsizSil.Size = new System.Drawing.Size(100, 30);
            this.btnUcretsizSil.TabIndex = 61;
            this.btnUcretsizSil.Text = "Sil";
            this.btnUcretsizSil.UseVisualStyleBackColor = true;
            this.btnUcretsizSil.Click += new System.EventHandler(this.btnUcretsizSil_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label10.Location = new System.Drawing.Point(18, 75);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(30, 17);
            this.label10.TabIndex = 60;
            this.label10.Text = "ID:";
            // 
            // txtUcretsizId
            // 
            this.txtUcretsizId.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.txtUcretsizId.Location = new System.Drawing.Point(54, 67);
            this.txtUcretsizId.Name = "txtUcretsizId";
            this.txtUcretsizId.Size = new System.Drawing.Size(100, 25);
            this.txtUcretsizId.TabIndex = 59;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnUcretliSil);
            this.groupBox1.Controls.Add(this.btnUcretli);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.txtUcretliId);
            this.groupBox1.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.groupBox1.Location = new System.Drawing.Point(701, 309);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(192, 134);
            this.groupBox1.TabIndex = 62;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Ucretli Oyun";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnUcretsiz);
            this.groupBox2.Controls.Add(this.txtUcretsizId);
            this.groupBox2.Controls.Add(this.btnUcretsizSil);
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Font = new System.Drawing.Font("Segoe UI Semibold", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.groupBox2.Location = new System.Drawing.Point(710, 513);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(183, 138);
            this.groupBox2.TabIndex = 63;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Ucretsiz Oyun";
            // 
            // frmoyun
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(893, 650);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btn_HomePage);
            this.Controls.Add(this.btnEkle);
            this.Controls.Add(this.btnListele);
            this.Controls.Add(this.txtMagazaId);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtSirketId);
            this.Controls.Add(this.txtOyunGb);
            this.Controls.Add(this.txtOyunElestiri);
            this.Controls.Add(this.txtOyunPuan);
            this.Controls.Add(this.txtOyunFiyat);
            this.Controls.Add(this.btnSil);
            this.Controls.Add(this.btnGuncelle);
            this.Controls.Add(this.txtOyunTur);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtOyunId);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataGridView1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Name = "frmoyun";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.frmoyun_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtOyunId;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtOyunTur;
        private System.Windows.Forms.Button btnGuncelle;
        private System.Windows.Forms.Button btnSil;
        private System.Windows.Forms.Button btnAra;
        private System.Windows.Forms.TextBox txtOyunFiyat;
        private System.Windows.Forms.TextBox txtOyunPuan;
        private System.Windows.Forms.TextBox txtOyunElestiri;
        private System.Windows.Forms.TextBox txtOyunGb;
        private System.Windows.Forms.TextBox txtSirketId;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtMagazaId;
        private System.Windows.Forms.Button btnListele;
        private System.Windows.Forms.Button btnEkle;
        private System.Windows.Forms.Button btn_HomePage;
        private System.Windows.Forms.Button btnUcretli;
        private System.Windows.Forms.Button btnUcretsiz;
        private System.Windows.Forms.TextBox txtUcretliId;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btnUcretliSil;
        private System.Windows.Forms.Button btnUcretsizSil;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtUcretsizId;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
    }
}


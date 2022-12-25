using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SQLProje
{
    public partial class frmoyun : Form
    {
        public frmoyun()
        {
            InitializeComponent();
        }
        NpgsqlConnection bagla = new NpgsqlConnection("server=localHost; port=5432; Database=sqlproje1; user ID=postgres; password=qazxcde123");
        private void label1_Click(object sender, EventArgs e)
        {

        }


        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

      

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            bagla.Open();
            NpgsqlCommand komut3 = new NpgsqlCommand("update oyun set oyunpuan=@p1, elestiriler=@p2, fiyat=@p3 where oyunid=@p4", bagla);
            komut3.Parameters.AddWithValue("@p1", int.Parse(txtOyunPuan.Text));
            komut3.Parameters.AddWithValue("@p2", txtOyunElestiri.Text);
            komut3.Parameters.AddWithValue("@p3", int.Parse(txtOyunFiyat.Text));
            komut3.Parameters.AddWithValue("@p4", int.Parse(txtOyunId.Text));
            komut3.ExecuteNonQuery();
            MessageBox.Show("Guncelleme islemi basarili!");
            bagla.Close();
        }

        private void btnListele_Click(object sender, EventArgs e)
        {
            string sorgu = "select * from oyun";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu, bagla);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            bagla.Open();
            NpgsqlCommand komut = new NpgsqlCommand("insert into oyun (oyunid,oyunturu,oyunpuan,fiyat,elestiriler,oyungb,sirketid,magazaid) values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", bagla);
            komut.Parameters.AddWithValue("@p1", int.Parse(txtOyunId.Text));
            komut.Parameters.AddWithValue("@p2", txtOyunTur.Text);
            komut.Parameters.AddWithValue("@p3", int.Parse(txtOyunPuan.Text));
            komut.Parameters.AddWithValue("@p4", int.Parse(txtOyunFiyat.Text));
            komut.Parameters.AddWithValue("@p5", txtOyunElestiri.Text);
            komut.Parameters.AddWithValue("@p6", int.Parse(txtOyunGb.Text));
            komut.Parameters.AddWithValue("@p7", int.Parse(txtSirketId.Text));
            komut.Parameters.AddWithValue("@p8", int.Parse(txtMagazaId.Text));
            komut.ExecuteNonQuery();
            bagla.Close();
            MessageBox.Show("Islem basarili");

        }

        private void btnAra_Click(object sender, EventArgs e)
        {

        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            bagla.Open();
            NpgsqlCommand komut1 = new NpgsqlCommand("Delete From oyun where oyunid=@p1", bagla);
            komut1.Parameters.AddWithValue("@p1", int.Parse(txtOyunId.Text));
            komut1.ExecuteNonQuery();
            bagla.Close();
            MessageBox.Show("Silme islemi basarili!");
        }

        private void btn_HomePage_Click(object sender, EventArgs e)
        {
            frmAna hp = new frmAna();
            hp.Show();
            this.Hide();
        }

        private void frmoyun_Load(object sender, EventArgs e)
        {

        }

        private void btnUcretli_Click(object sender, EventArgs e)
        {
            string sorgu1 = "select * from ucretli";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu1, bagla);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
        }

        private void btnUcretsiz_Click(object sender, EventArgs e)
        {
            string sorgu2 = "select * from ucretsiz";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu2, bagla);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];

        }

        private void btnUcretliSil_Click(object sender, EventArgs e)
        {
            bagla.Open();
            NpgsqlCommand komut4 = new NpgsqlCommand("Delete From ucretli where oyunid=@p1", bagla);
            komut4.Parameters.AddWithValue("@p1", int.Parse(txtUcretliId.Text));
            komut4.ExecuteNonQuery();
            bagla.Close();
            MessageBox.Show("Silme islemi basarili!");
        }

        private void btnUcretsizSil_Click(object sender, EventArgs e)
        {
            bagla.Open();
            NpgsqlCommand komut5 = new NpgsqlCommand("Delete From ucretsiz where oyunid=@p1", bagla);
            komut5.Parameters.AddWithValue("@p1", int.Parse(txtUcretsizId.Text));
            komut5.ExecuteNonQuery();
            bagla.Close();
            MessageBox.Show("Silme islemi basarili!");
        }
    }
}

using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace SQLProje
{
    public partial class frmhesap : Form
    {
        public frmhesap()
        {
            InitializeComponent();
        }
        NpgsqlConnection bagla = new NpgsqlConnection("server=localHost; port=5432; Database=sqlproje1; user ID=postgres; password=qazxcde123");
        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void btn_HomePage_Click(object sender, EventArgs e)
        {
            frmAna hp = new frmAna();
            hp.Show();
            this.Hide();
        }

        private void btnListele_Click(object sender, EventArgs e)
        {
            string sorgu = "select * from hesap";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu, bagla);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            bagla.Open();
            NpgsqlCommand komut = new NpgsqlCommand("insert into hesap (\"hesapid\",ad,soyad,mail,oyunlar,arkadaslar,bakiye,profilid,magazaid,destekid,envanterid,kutuphaneid) values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12)", bagla);
            komut.Parameters.AddWithValue("@p1", int.Parse(txtHesapId.Text));
            komut.Parameters.AddWithValue("@p2", txtHesapAd.Text);
            komut.Parameters.AddWithValue("@p3", txtHesapSoyad.Text);
            komut.Parameters.AddWithValue("@p4", txtHesapMail.Text);
            komut.Parameters.AddWithValue("@p5", int.Parse(txtHesapOyunlar.Text));
            komut.Parameters.AddWithValue("@p6", int.Parse(txtHesapArkadas.Text));
            komut.Parameters.AddWithValue("@p7", int.Parse(txtHesapBakiye.Text));
            komut.Parameters.AddWithValue("@p8", int.Parse(txtHesapProfilId.Text));
            komut.Parameters.AddWithValue("@p9", int.Parse(txtHesapMagazaId.Text));
            komut.Parameters.AddWithValue("@p10", int.Parse(txtHesapDestekId.Text));
            komut.Parameters.AddWithValue("@p11", int.Parse(txtHesapEnvanterId.Text));
            komut.Parameters.AddWithValue("@p12", int.Parse(txtHesapKutuphaneId.Text));
            komut.ExecuteNonQuery();
            bagla.Close();
            MessageBox.Show("Islem basarili");
        }

        private void btnAra_Click(object sender, EventArgs e)
        {
           
         
        }

        private void button4_Click(object sender, EventArgs e)
        {
            bagla.Open();
            NpgsqlCommand komut2 = new NpgsqlCommand("Delete From hesap where hesapid=@p1", bagla);
            komut2.Parameters.AddWithValue("@p1", int.Parse(txtHesapId.Text));
            komut2.ExecuteNonQuery();
            bagla.Close();
            MessageBox.Show("Silme islemi basarili!");
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            bagla.Open();
            NpgsqlCommand komut3 = new NpgsqlCommand("update hesap set oyunlar=@p1, arkadaslar=@p2, bakiye=@p3 where hesapid=@p4", bagla);
            komut3.Parameters.AddWithValue("@p1", int.Parse(txtHesapOyunlar.Text));
            komut3.Parameters.AddWithValue("@p2", int.Parse(txtHesapArkadas.Text));
            komut3.Parameters.AddWithValue("@p3", int.Parse(txtHesapBakiye.Text));
            komut3.Parameters.AddWithValue("@p4", int.Parse(txtHesapId.Text));
            komut3.ExecuteNonQuery();
            MessageBox.Show("Guncelleme islemi basarili!");
            bagla.Close();
        }

        private void btnEklenilen_Click(object sender, EventArgs e)
        {
            string sorgu1 = "select * from eklenenhesap";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu1 ,bagla);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
        }
    }
}

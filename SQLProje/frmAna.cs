using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace SQLProje
{
    public partial class frmAna : Form
    {
        public frmAna()
        {
            InitializeComponent();
        }

        private void btnOyun_Click(object sender, EventArgs e)
        {
            frmoyun game = new frmoyun();
            game.Show();
            this.Hide();
        }

        private void btnHesap_Click(object sender, EventArgs e)
        {
            frmhesap hesap = new frmhesap();
            hesap.Show();
            this.Hide();
        }
    }
}

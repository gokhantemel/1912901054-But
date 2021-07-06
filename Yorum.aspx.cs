using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using Gokhantemel_1912901054.App_Code;

namespace Gokhantemel_1912901054
{
    public partial class Yorum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbl_sayı.Text = koduret();
            }
        }
        string koduret()
        {
            Random r = new Random();
            return r.Next(10000, 99999).ToString();
        }

        protected void buton_gonder_Click(object sender, EventArgs e)
        {
            if (lbl_sayı.Text == txtgvnlk.Text)
            {
                OleDbCommand cmd = Veritabani.KomutOlustur("insert into Yorum (yorum, konu, tarih) values (@yorum, @konu, @tarih)");
                cmd.Parameters.AddWithValue("@konu", txt_konu.Text);
                cmd.Parameters.AddWithValue("@yorum", txt_yorum.Text);
                cmd.Parameters.AddWithValue("@tarih", DateTime.Today);
                Veritabani.KomutCalistir(cmd);
                Lbl_yorumuyari.Text = "Yorum gönderildi.";
            }
            else
            {
                Lbl_yorumuyari.Text = "Güvenlik doğrulaması yanlış.";
            }
        }
    }
}
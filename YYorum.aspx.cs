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
    public partial class YYorum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string koduret()
        {
            Random r = new Random();
            return r.Next(10000, 99999).ToString();
        }

        protected void lnk_duzenle_Click(object sender, EventArgs e)
        {

            Session["yn"] = GridView1.SelectedValue;
            DataTable dt = Veritabani.veriGetir("select * from Yorum where yn = " + Session["yn"].ToString());
            if (dt.Rows.Count > 0)
            {
              
                txt_yoneticikonu.Text = dt.Rows[0]["konu"].ToString();
                txt_yorumyaz.Text = dt.Rows[0]["yorum"].ToString();
                Label_sayı.Text = koduret();
            }
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btn_kydt_Click(object sender, EventArgs e)
        {
            if (Label_sayı.Text == Text_sayıyazın.Text)
            {
                OleDbCommand cmd = Veritabani.KomutOlustur("update Yorum set konu = @konu, yorum = @yorum where yn = " + Session["yn"]);
                cmd.Parameters.AddWithValue("@konu", txt_yoneticikonu.Text);
                cmd.Parameters.AddWithValue("@yorum", txt_yorumyaz.Text);
                cmd.Parameters.AddWithValue("@tarih", DateTime.Now);

                Veritabani.KomutCalistir(cmd);
                Lab_uyari.Text = "Yorum Kaydedildi.";


            }
            else
            {
                Lab_uyari.Text = "Güvenlik doğrulaması yanlış.";
            }
        }

        protected void lnk_yrmsil_Click(object sender, EventArgs e)
        {
            if (Label_sayı.Text == Text_sayıyazın.Text)
            {
                OleDbCommand cmd = Veritabani.KomutOlustur("delete from Yorum where yn= @yn");
                Veritabani.KomutCalistir(cmd);
                Lab_uyari.Text = "Yorum silindi.";
            }
            else
            {
                Lab_uyari.Text = "Güvenlik doğrulaması yanlış.";
            }
        }
    }
}
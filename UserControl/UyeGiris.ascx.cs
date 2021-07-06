using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using Gokhantemel_1912901054.App_Code;

namespace Gokhantemel_1912901054.UserControl
{
    public partial class UyeGiris : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetki"] != null)
            {
                MultiView1.ActiveViewIndex = 1;
                lbladsoyad.Text = Session["adSoyad"].ToString();
            }
            else
            {
                MultiView1.ActiveViewIndex = 0;

            }
        }

        protected void BtnUnuttum_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void txtkullaniciadiunuttum_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnparolagonder_Click(object sender, EventArgs e)
        {

        }

        protected void Kullanıcı_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Parola_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            DataTable dt = Veritabani.veriGetir("select * from kullanici where silindi = false and  KullaniciAdi = '" + TxtKullaniciAdi.Text + "'");
            if (dt.Rows.Count == 0) //Kullanıcı veritabanında yok
            {
                TxtKullaniciAdi.Text = "";
                txtparola.Text = "";
            }
            else
            {
                if (txtparola.Text == dt.Rows[0]["parola"].ToString())
                {
                    Session["uyeNo"] = dt.Rows[0]["uyeNo"];
                    Session["adSoyad"] = dt.Rows[0]["adi"].ToString() + " " + dt.Rows[0]["soyadi"].ToString();
                    Session["yetki"] = dt.Rows[0]["yetki"];
                    MultiView1.ActiveViewIndex = 1;
                    lbladsoyad.Text = Session["adSoyad"].ToString();
                    Response.Redirect("Default.aspx");
                }

                else
                {
                    TxtKullaniciAdi.Text = "";
                    txtparola.Text = "";
                }
            }
        }
         protected void BtnKayıt_Click(object sender, EventArgs e)
        {
            Response.Redirect("UyeDetay.aspx");
        }
          protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            TxtKullaniciAdi.Text = "";
            txtparola.Text = "";
            MultiView1.ActiveViewIndex = 0;
            Response.Redirect("Default.aspx");
        }

        protected void btnuyebg_Click(object sender, EventArgs e)
        {
            Session["DetayUyeNo"] = "0";
            Session["DetayUyeNo"] = Session["uyeNo"];
            Response.Redirect("UyeDetay.aspx");
        }

        
    }
}
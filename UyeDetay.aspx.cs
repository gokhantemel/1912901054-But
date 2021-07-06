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
    public partial class UyeDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Labgüvenlik.Text = KodUret();

                if (Session["DetayUyeNo"] == null) //Yeni Üyelik
                {
                    btnbilgileriguncel.Visible = false;
                    //Kod yazmaya gerek yok. Sayfa ilk yüklenirken zaten boş yani bilgi doldurulmamış halde geliyor.
                }
                else if (Session["DetayUyeNo"].ToString() == "0") //Yeni üyelik
                {
                    btnbilgileriguncel.Visible = false;
                    //Kod yazmaya gerek yok. Sayfa ilk yüklenirken zaten boş yani bilgi doldurulmamış halde geliyor.
                }
                else
                {
                    btnekle.Visible = false;
                    DataTable dt = Veritabani.veriGetir(
                        "select * from kullanici where uyeNo = " + Session["DetayUyeNo"].ToString());
                    if (dt.Rows.Count > 0)
                    {
                        Labuyeno.Text = dt.Rows[0]["uyeNo"].ToString();
                        Texkullanıcıadı.Text = dt.Rows[0]["KullaniciAdi"].ToString();
                        Texparola.Text = dt.Rows[0]["parola"].ToString();
                        TextBox1.Text = dt.Rows[0]["parola"].ToString();
                        TextAD.Text = dt.Rows[0]["adi"].ToString();
                        TextSoyad.Text = dt.Rows[0]["soyadi"].ToString();
                        TextSoyad.Text = dt.Rows[0]["eposta"].ToString();
                        drpyo.SelectedValue = dt.Rows[0]["yetki"].ToString();



                    }
                }

                if (Session["Yetki"] == null) //Giriş yapılmamış 
                {
                    drpyo.SelectedValue = "2";
                    drpyo.Enabled = false;
                }
                else if (Session["Yetki"].ToString() == "1") //yönetici
                {
                    //yönetici tüm bilgileri değiştirebilir.
                    btnUyeSil.Visible = true;
                }
                else //kullanıcı
                {
                    drpyo.Enabled = false;
                }
            }
        }
        string KodUret()
        {
            //10000 - 99999
            Random r = new Random();
            return r.Next(10000, 999999).ToString();

        }

        protected void btnUyeEkle_Click(object sender, EventArgs e)
        {
            if (Labgüvenlik.Text == Textguvenlik.Text)
            {


                OleDbCommand cmd = Veritabani.KomutOlustur(
                    "insert into kullanici (KullaniciAdi, parola, adi, soyadi, eposta, yetki) " +
                                   "values (@KullaniciAdi, @parola, @adi, @soyadi, @eposta, @yetki)");
                cmd.Parameters.AddWithValue("@KullaniciAdi", Texkullanıcıadı.Text);
                cmd.Parameters.AddWithValue("@parola", Texparola.Text);
                cmd.Parameters.AddWithValue("@adi", TextAD.Text);
                cmd.Parameters.AddWithValue("@soyadi", TextSoyad.Text);
                cmd.Parameters.AddWithValue("@eposta", TextBox2.Text);
                cmd.Parameters.AddWithValue("@yetki", drpyo.SelectedValue);

                Veritabani.KomutCalistir(cmd);
            }
        }

        protected void btnAnaSayfaya_Click(object sender, EventArgs e)
        {
            Response.Redirect("anasayfa.aspx");
            Session["DetayUyeNo"] = "0";
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            if (Labgüvenlik.Text == Textguvenlik.Text)
            {


                OleDbCommand cmd = Veritabani.KomutOlustur(
                    "update kullanici set KullaniciAdi = @KullaniciAdi, parola = @parola, adi = @adi, soyadi = @soyadi, " +
                    "eposta = @eposta, yetki = @yetki where uyeNo = @uyeNo ");

                cmd.Parameters.AddWithValue("@KullaniciAdi", Texkullanıcıadı.Text);
                cmd.Parameters.AddWithValue("@parola", Texparola.Text);
                cmd.Parameters.AddWithValue("@adi", TextAD.Text);
                cmd.Parameters.AddWithValue("@soyadi", TextSoyad.Text);
                cmd.Parameters.AddWithValue("@eposta", TextBox2.Text);
                cmd.Parameters.AddWithValue("@yetki", drpyo.SelectedValue);
                cmd.Parameters.AddWithValue("@uyeNo", Labuyeno.Text);

                Veritabani.KomutCalistir(cmd);
            }
        }

        protected void btnUyeSil_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = Veritabani.KomutOlustur(
               "update kullanici set silindi = true where uyeNo = @uyeNo");
            cmd.Parameters.AddWithValue("@uyeNo", Labuyeno.Text);
            Veritabani.KomutCalistir(cmd);
            btnekle.Enabled = false;
            btnbilgileriguncel.Enabled = false;
            btnUyeSil.Enabled = false;
        }
    }
}
    }
}
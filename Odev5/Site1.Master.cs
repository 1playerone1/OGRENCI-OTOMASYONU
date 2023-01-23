using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Odev5
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["kullaniciDurumu"] == null)
                {
                    LinkButton1.Visible = true; // Öğrenci Giriş Butonu
                    LinkButton2.Visible = true; // Öğretmen Giriş Butonu
                    LinkButton3.Visible = true; // Öğrenci Kayıt Butonu

                    LinkButton4.Visible = false; // Çıkış Yap Butonu

                    LinkButton9.Visible = false; // Kullanıcı Giriş Yaptığında Merhaba Mesaj Butonu
                    LinkButton6.Visible = false; // Öğrenci Listesi Butonu
                    LinkButton7.Visible = false; // Öğrenci Not Giriş Butonu
                    LinkButton8.Visible = false; // Öğrenci Detaylı Bilgi Butonu
                    LinkButton5.Visible = false; // Öğretmen Listesi
                }
                else if (Session["kullaniciDurumu"].Equals("Öğrenci"))
                {
                    LinkButton1.Visible = false; // Öğrenci Giriş Butonu
                    LinkButton2.Visible = false; // Öğretmen Giriş Butonu
                    LinkButton3.Visible = false; // Öğrenci Kayıt Butonu

                    LinkButton4.Visible = true; // Çıkış Yap Butonu
                    LinkButton9.Visible = true; // Kullanıcı Giriş Yaptığında Merhaba Mesaj Butonu
                    LinkButton9.Text = "Merhaba " + Session["isim_soyisim"].ToString(); // Kullanıcı Giriş Yaptığında Merhaba Mesaj Butonu
                    LinkButton6.Visible = false; // Öğrenci Listesi Butonu
                    LinkButton7.Visible = false; // Öğrenci Not Giriş Butonu
                    LinkButton8.Visible = true; // Öğrenci Detaylı Bilgi Butonu
                    LinkButton5.Visible = false; // Öğretmen Listesi
                }
                else if (Session["kullaniciDurumu"].Equals("Öğretmen"))
                {
                    LinkButton1.Visible = false; // Öğrenci Giriş Butonu
                    LinkButton2.Visible = false; // Öğretmen Giriş Butonu
                    LinkButton3.Visible = false; // Öğrenci Kayıt Butonu

                    LinkButton4.Visible = true; // Çıkış Yap Butonu
                    LinkButton9.Visible = true; // Kullanıcı Giriş Yaptığında Merhaba Mesaj Butonu
                    LinkButton9.Text = "Merhaba " + Session["ogretmen_adi"].ToString(); // Kullanıcı Giriş Yaptığında Merhaba Mesaj Butonu
                    LinkButton6.Visible = true; // Öğrenci Listesi Butonu
                    LinkButton7.Visible = true; // Öğrenci Not Giriş Butonu
                    LinkButton8.Visible = true; // Öğrenci Detaylı Bilgi Butonu
                    LinkButton5.Visible = true; // Öğretmen Listesi
                }
            }
            catch(Exception ex) 
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogrencikayit.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogrenciListesi.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogrenciNot.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogrenciDetay.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogretmenListesi.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogrencigiris.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogretmengiris.aspx");
        }

        // Çıkış Yap Butonu
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["ogrenci_id"] = "";
            Session["isim_soyisim"] = "";
            Session["ogretmen_id"] = "";
            Session["ogretmen_adi"] = "";
            Session["kullaniciDurumu"] = "";

            LinkButton1.Visible = true; // Öğrenci Giriş Butonu
            LinkButton2.Visible = true; // Öğretmen Giriş Butonu
            LinkButton3.Visible = true; // Öğrenci Kayıt Butonu

            LinkButton4.Visible = false; // Çıkış Yap Butonu

            LinkButton9.Visible = false; // Kullanıcı Giriş Yaptığında Merhaba Mesaj Butonu
            LinkButton6.Visible = false; // Öğrenci Listesi Butonu
            LinkButton7.Visible = false; // Öğrenci Not Giriş Butonu
            LinkButton8.Visible = false; // Öğrenci Detaylı Bilgi Butonu
            LinkButton5.Visible = false; // Öğretmen Listesi
            Response.Redirect("AnaSayfa.aspx"); // Kullanıcı Çıkış Yap Butonuna Tıklayınca Ana Sayfaya Geri Dön
        }
    }
}
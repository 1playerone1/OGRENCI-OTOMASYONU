using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Odev5
{
    public partial class ogrencikayit : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Kayıt Butonu
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ayniOgrenciIDvarMi())
            {
                Response.Write("<script>alert('Girdiğiniz ID ile farklı bir öğrenci sistemde mevcut! " +
                    "Farklı bir Öğrenci ID girmeyi deneyin...');</script>");
            }
            else
            {
                yeniKullaniciKayit();
            }
        }

        // Aynı öğrenci ID varmı diye kontrol ediyor
        bool ayniOgrenciIDvarMi()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from ogrenci_profil where ogrenci_id='"
                    + TextBox7.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        // Yeni Kullanıcı Kayıt
        void yeniKullaniciKayit()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO ogrenci_profil(isim_soyisim,dogum_tarihi,tel_no,email," +
                    "sehir,ilce,pinkod,tam_adres,ogrenci_id,sifre,ogrenci_durumu) values(@isim_soyisim,@dogum_tarihi," +
                    "@tel_no,@email,@sehir,@ilce,@pinkod,@tam_adres,@ogrenci_id,@sifre,@ogrenci_durumu)", con);

                cmd.Parameters.AddWithValue("@isim_soyisim", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dogum_tarihi", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@tel_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@sehir", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ilce", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pinkod", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@ogrenci_id", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@tam_adres", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@sifre", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@ogrenci_durumu", "Beklemede");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Öğrenci Kaydı Başarılı!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
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
    public partial class ogrenciListesi : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        // Bul Butonu
        protected void Button1_Click(object sender, EventArgs e)
        {
            kullaniciyiIDyeGoreBul();
        }
        // Ekle Butonu
        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (ayniOgretmenIDvarMi())
            {
                Response.Write("<script>alert('Bu ID ile bir Öğrenci mevcut başka bir ID girmeyi deneyin!');</script>");
            }
            else
            {
                yeniOgretmenEkle();
            }
        }
        // Güncelle Butonu
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (ayniOgretmenIDvarMi())
            {
                kullaniciGuncelle();
            }
            else
            {
                Response.Write("<script>alert('Bu ID ile bir Öğrenci bulunmamaktadır!');</script>");
            }
        }
        // Sil Butonu
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (ayniOgretmenIDvarMi())
            {
                kullaniciSil();
            }
            else
            {
                Response.Write("<script>alert('Öğrenci sistemden silinmiştir!');</script>");
            }
        }

        void kullaniciyiIDyeGoreBul()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from ogrenci_profil where ogrenci_id='"
                    + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][0].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Girdiğiniz ID Bulunamadı!');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void kullaniciSil()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from ogrenci_profil " +
                    "WHERE ogrenci_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Öğrenci Silindi!');</script>");
                TextBoxTemizle();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void kullaniciGuncelle()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE ogrenci_profil SET isim_soyisim=@isim_soyisim" +
                    " WHERE ogrenci_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@isim_soyisim", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Öğrenci Güncellendi!');</script>");
                TextBoxTemizle();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void yeniOgretmenEkle()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO ogrenci_profil(ogrenci_id,isim_soyisim)" +
                    " values(@ogrenci_id,@isim_soyisim)", con);

                cmd.Parameters.AddWithValue("@ogrenci_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@isim_soyisim", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Öğrenci Kaydı Başarılı!');</script>");
                TextBoxTemizle();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        // Aynı öğrenci ID varmı diye kontrol ediyor
        bool ayniOgretmenIDvarMi()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from ogrenci_profil where ogrenci_id='"
                    + TextBox1.Text.Trim() + "';", con);
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
        void TextBoxTemizle()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        
    }
}
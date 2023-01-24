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
    public partial class ogrenciNot : System.Web.UI.Page
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            yeniOgretmenEkle();
        }
        void kullaniciyiIDyeGoreBul() // Öğrenciyi ogrenci_profil table dan bulur
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
                    TextBox2.Text = dt.Rows[0][6].ToString();
                    TextBox3.Text = dt.Rows[0][0].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
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

        void yeniOgretmenEkle()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO sinavTable(ogrenci_id,ogrenci_adi,vize,final)" +
                    " values(@ogrenci_id,@ogrenci_adi,@vize,@final)", con);

                cmd.Parameters.AddWithValue("@ogrenci_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@ogrenci_adi", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@vize", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@final", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Öğrenci Not Girişi Başarılı!');</script>");
                TextBoxTemizle();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void TextBoxTemizle()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
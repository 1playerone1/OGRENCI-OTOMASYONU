using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Odev5
{
    public partial class ogretmengiris : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Öğretmen giriş butonu
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from ogretmen_profil where ogretmen_id='"
                    + TextBox1.Text.Trim() + "' AND ogretmen_sifre='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Giriş Başarılı');</script>");
                        Session["ogretmen_id"] = dr.GetValue(0).ToString();
                        Session["ogretmen_adi"] = dr.GetValue(1).ToString();
                        Session["kullaniciDurumu"] = "Öğretmen";
                        //Session["ogrenci_durumu"] = dr.GetValue(11).ToString();
                    }
                    Response.Redirect("AnaSayfa.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Yanlış ID yada şifre girdiniz!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
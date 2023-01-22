using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Odev5
{
    public partial class ogrencigiris : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Öğrenci giriş butonu
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from ogrenci_profil where ogrenci_id='"
                    + TextBox1.Text.Trim() + "' AND sifre='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(8).ToString() + "');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Yanlış ID girdiniz!');</script>");
                }
            }
            catch(Exception ex) 
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
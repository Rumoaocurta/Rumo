using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class EditarComentrio : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string idfoto = Request.QueryString["id_foto"];
                string idcoment = Request.QueryString["id_coment"];
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("select conteudo from Comentario2 where nome = @nome and id = @id and foto_id = @foto_id", aSQLCon);
                aSQL.Parameters.AddWithValue("@nome", User.Identity.Name);
                aSQL.Parameters.AddWithValue("@id", idcoment);
                aSQL.Parameters.AddWithValue("@foto_id", idfoto);
                SqlDataReader dr = aSQL.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                        TextBox1.Text = dr["conteudo"].ToString();
                }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string idfoto = Request.QueryString["id_foto"];
            string idcoment = Request.QueryString["id_coment"];
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();
            SqlCommand aSQL;
            aSQL = new SqlCommand("update Comentario2 set conteudo = @conteudo where nome = @nome and id = @id and foto_id = @foto_id", aSQLCon);
            aSQL.Parameters.AddWithValue("@conteudo", TextBox1.Text);
            aSQL.Parameters.AddWithValue("@nome", User.Identity.Name);
            aSQL.Parameters.AddWithValue("@id", idcoment);
            aSQL.Parameters.AddWithValue("@foto_id", idfoto);
            aSQL.ExecuteNonQuery();
            Response.Redirect("~\\Detalhes.aspx?id_foto=" + idfoto);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string idfoto = Request.QueryString["id_foto"];
            Response.Redirect("~\\Detalhes.aspx?id_foto=" + idfoto);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string idfoto = Request.QueryString["id_foto"];
            string idcoment = Request.QueryString["id_coment"];
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();
            SqlCommand aSQL;
            aSQL = new SqlCommand("delete from Comentario2 where nome = @nome and id = @id and foto_id = @foto_id", aSQLCon);
            aSQL.Parameters.AddWithValue("@nome", User.Identity.Name);
            aSQL.Parameters.AddWithValue("@id", idcoment);
            aSQL.Parameters.AddWithValue("@foto_id", idfoto);
            aSQL.ExecuteNonQuery();
            Response.Redirect("~\\Detalhes.aspx?id_foto=" + idfoto);
        }
    }
}
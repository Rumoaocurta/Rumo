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
                string idfoto = Request.QueryString["id"];
                string idcoment = Request.QueryString["id_coment"];
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("select conteudo from Comentarios where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idcoment);
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
            string idpub = Request.QueryString["id"];
            string idcoment = Request.QueryString["id_coment"];
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();
            SqlCommand aSQL;
            if (TextBox1.Text.Trim() != "")
            {
                aSQL = new SqlCommand("update Comentarios set conteudo = @conteudo where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@conteudo", TextBox1.Text);
                aSQL.Parameters.AddWithValue("@id", idcoment);
                SqlCommand red = new SqlCommand("select tipo from Publicacao where id = " + idpub, aSQLCon);
                SqlDataReader dr = red.ExecuteReader();
                string tipo;
                if (dr.HasRows)
                {
                    dr.Read();
                    tipo = dr["tipo"].ToString();
                    if (tipo == "imagem")
                        Response.Redirect("~\\Detalhes.aspx?id=" + idpub);
                    else if (tipo == "video")
                        Response.Redirect("~\\Detalhesvideo.aspx?id=" + idpub);
                }
            }
            else
            {
                Label2.Text = "Erro! Você não pode enviar um comentário vazio";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string idpub = Request.QueryString["id"];
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();
            SqlCommand red = new SqlCommand("select tipo from Publicacao where id = " + idpub, aSQLCon);
            SqlDataReader dr = red.ExecuteReader();
            string tipo;
            if (dr.HasRows)
            {
                dr.Read();
                tipo = dr["tipo"].ToString();
                if (tipo == "imagem")
                    Response.Redirect("~\\Detalhes.aspx?id=" + idpub);
                else if (tipo == "video")
                    Response.Redirect("~\\Detalhesvideo.aspx?id=" + idpub);
            }
            Response.Redirect("~\\Detalhes.aspx?id=" + idpub);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string idpub = Request.QueryString["id"];
            string idcoment = Request.QueryString["id_coment"];
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();
            SqlCommand aSQL;
            aSQL = new SqlCommand("delete from Comentarios where id = @id", aSQLCon);
            aSQL.Parameters.AddWithValue("@id", idcoment);
            aSQL.ExecuteNonQuery();
            SqlCommand red = new SqlCommand("select tipo from Publicacao where id = " + idpub, aSQLCon);
            SqlDataReader dr = red.ExecuteReader();
            string tipo;
            if (dr.HasRows)
            {
                dr.Read();
                tipo = dr["tipo"].ToString();
                if (tipo == "imagem")
                    Response.Redirect("~\\Detalhes.aspx?id=" + idpub);
                else if (tipo == "video")
                    Response.Redirect("~\\Detalhesvideo.aspx?id=" + idpub);
            }
            Response.Redirect("~\\Detalhes.aspx?id=" + idpub);
        }
    }
}
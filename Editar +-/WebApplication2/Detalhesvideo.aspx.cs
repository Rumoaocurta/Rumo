using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Detalhesvideo : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                VincularDados();
            }
        }
        private void VincularDados()
        {
            string codigo = Request.QueryString["id"];
            SqlConnection connection = new SqlConnection(strcon);
            SqlCommand command = new SqlCommand("SELECT id from Publicacao where id =" + codigo, connection);
            SqlDataAdapter davideo = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            davideo.Fill(dt);
            gdvVideo.DataSource = dt;
            gdvVideo.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string codigo = Request.QueryString["id"];
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();
            SqlCommand aSQL;
            if (comentario.Text.Trim() != "")
            {
                aSQL = new SqlCommand("INSERT INTO Comentarios(usuario, conteudo, pub_id) VALUES (@usuario, @conteudo, @pub_id)", aSQLCon);
                aSQL.Parameters.AddWithValue("@usuario", User.Identity.Name);
                aSQL.Parameters.AddWithValue("@conteudo", comentario.Text);
                aSQL.Parameters.AddWithValue("@pub_id", codigo);
                aSQL.ExecuteNonQuery();
                Response.Redirect("~/Detalhesvideo.aspx?id=" + codigo);
            }
            else
            {
                Label2.Text = "Erro! Você não pode enviar um comentário vazio";
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            string comentid = GridView1.Rows[index].Cells[0].Text;
            if (GridView1.Rows[index].Cells[1].Text == User.Identity.Name)
            {
                string codigo = Request.QueryString["id"];
                if (e.CommandName == "Editar")
                    Response.Redirect("~\\EditarComentrio.aspx?id=" + codigo + "&id_coment=" + comentid);
            }
        }
    }
}
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
    public partial class Detalhes : System.Web.UI.Page
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
            SqlCommand command = new SqlCommand("SELECT id from Publicacao where id = " + codigo, connection);
            SqlDataAdapter daimages = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            daimages.Fill(dt);
            gdvImagem.DataSource = dt;
            gdvImagem.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string codigo = Request.QueryString["id_foto"];
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();
            SqlCommand aSQL;
            aSQL = new SqlCommand("INSERT INTO Comentario2(nome, conteudo, foto_id) VALUES (@nome, @conteudo, @foto_id)", aSQLCon);
            aSQL.Parameters.AddWithValue("@nome", User.Identity.Name);
            aSQL.Parameters.AddWithValue("@conteudo", comentario.Text);
            aSQL.Parameters.AddWithValue("@foto_id", codigo);
            aSQL.ExecuteNonQuery();
            Response.Redirect("~/Detalhes.aspx?id_foto=" + codigo);
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            string comentid = GridView1.Rows[index].Cells[0].Text;
            if (GridView1.Rows[index].Cells[1].Text == User.Identity.Name)
            {
                string codigo = Request.QueryString["id_foto"];
                Session["foto_edit"] = codigo;
                Session["user_edit"] = User.Identity.Name;
                if (e.CommandName == "Editar")
                    Response.Redirect("~\\EditarComentrio.aspx?id_foto=" + codigo + "&id_coment=" + comentid);
            }
        }
    }
}
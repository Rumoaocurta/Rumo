using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.JoeUser
{
    public partial class PubsUsuario : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                VincularDados();
                if (GridView1.Rows.Count.ToString() == "0")
                    Label1.Text = "Você não tem nenhuma imagem aprovada";
                else
                    Label1.Text = "Imagens Enviadas";
                if (GridView2.Rows.Count.ToString() == "0")
                    Label2.Text = "Você não tem nenhum vídeo aprovado";
                else
                    Label2.Text = "Videos Enviados";
            }
        }
        private void VincularDados()
        {
            SqlConnection connection = new SqlConnection(strcon);
            SqlCommand commandimg = new SqlCommand("SELECT descricao, id, usuario from Publicacao where estado = 1 and tipo = 'imagem' and usuario = @usuario order by id desc", connection);
            commandimg.Parameters.Add("@usuario", User.Identity.Name);
            SqlDataAdapter daimages = new SqlDataAdapter(commandimg);
            DataTable dti = new DataTable();
            daimages.Fill(dti);
            GridView1.DataSource = dti;
            GridView1.DataBind();
            GridView1.Attributes.Add("bordercolor", "black");

            SqlCommand commandvid = new SqlCommand("SELECT descricao, id, usuario from Publicacao where estado = 1 and tipo = 'video' and usuario = @usuario order by id desc", connection);
            commandvid.Parameters.Add("@usuario", User.Identity.Name);
            SqlDataAdapter davideos = new SqlDataAdapter(commandvid);
            DataTable dtv = new DataTable();
            davideos.Fill(dtv);
            GridView2.DataSource = dtv;
            GridView2.DataBind();
            GridView2.Attributes.Add("bordercolor", "black");
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                string editar = GridView1.Rows[index].Cells[0].Text;
                Response.Redirect("~/JoeUser/EditarFoto.aspx?id=" + editar);
            }
            if (e.CommandName == "Excluir")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                string idelete = GridView1.Rows[index].Cells[0].Text;
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("delete from Publicacao where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idelete);

                aSQL.ExecuteNonQuery();
                Response.Redirect("~/JoeUser/PubsUsuario.aspx");
            }
        }
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                string editar = GridView2.Rows[index].Cells[0].Text;
                Response.Redirect("~/JoeUser/EditarVideo.aspx?id=" + editar);
            }
            if (e.CommandName == "Excluir")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                string idelete = GridView2.Rows[index].Cells[0].Text;
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("delete from Publicacao where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idelete);

                aSQL.ExecuteNonQuery();
                Response.Redirect("~/JoeUser/PubsUsuario.aspx");
            }
        }
    }
}
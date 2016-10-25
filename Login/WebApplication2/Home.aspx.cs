using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Common;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                VincularDados();
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            
        }
        private void VincularDados()
        {
            SqlConnection connection = new SqlConnection(strcon);
            SqlCommand command = new SqlCommand("SELECT descricao, id from Fotos3 order by id desc", connection);
            SqlDataAdapter daimages = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            daimages.Fill(dt);
            gdvImagens.DataSource = dt;
            gdvImagens.DataBind();
            gdvImagens.Attributes.Add("bordercolor", "black");
        }

        protected void gdvImagens_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            string codigo;
            int index = Convert.ToInt32(e.CommandArgument);
            string curtida = gdvImagens.Rows[index].Cells[2].Text;
            DataKey key = gdvImagens.DataKeys[index];
            codigo = key.Value.ToString();
            Session["id"] = codigo;

            // Abrindo a Conexão com o banco de dados
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();

            // Executando o comando
            string valor = gdvImagens.Rows[index].Cells[2].Text;
            if (valor == "Curtir")
            {
                SqlCommand aSQL;
                SqlCommand select;
                select = new SqlCommand("Select * from Curtida2 where usuario = @usuario and foto_id = @foto_id", aSQLCon);
                select.Parameters.AddWithValue("@usuario", User.Identity.Name);
                select.Parameters.AddWithValue("@foto_id", codigo);
		if(gdvImagens.Rows[index].Cells[2].Text = "Curtir")
                {
			aSQL = new SqlCommand("INSERT INTO Curtida2(usuario, foto_id) VALUES (@nome, @foto_id)", aSQLCon);
                	aSQL.Parameters.AddWithValue("@nome", User.Identity.Name);
                	aSQL.Parameters.AddWithValue("@foto_id", codigo);
                	aSQL.ExecuteNonQuery();
			gdvImagens.Rows[index].Cells[2].Text = "Descurtir";
		}
                if(gdvImagens.Rows[index].Cells[2].Text = "Descurtir")
		{
			aSQL = new SqlCommand("Delete from Curtida2 where usuario = @usuario and foto_id = @foto_id", aSQLCon);
                	aSQL.Parameters.AddWithValue("@nome", User.Identity.Name);
                	aSQL.Parameters.AddWithValue("@foto_id", codigo);
                	aSQL.ExecuteNonQuery();
			gdvImagens.Rows[index].Cells[2].Text = "Curtir";
		}
                aSQLCon.Close();
                aSQLCon.Open();
                SqlDataReader dr = select.ExecuteReader();
                dr.Read();
            }
            /*int a = Convert.ToInt32(dr["situacao"]);
            dr.Close();
            if (a == 1)
            {
                aSQL = new SqlCommand("UPDATE Curtida2 SET situacao = 0 where usuario = @usuario and foto_id = @foto_id", aSQLCon);
                aSQL.Parameters.AddWithValue("@usuario", User.Identity.Name);
                aSQL.Parameters.AddWithValue("@foto_id", codigo);

                
            }*/
            aSQL.ExecuteNonQuery();
            
            Response.Redirect("~/Home.aspx");
            
        }
    }
}
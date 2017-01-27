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
    public partial class WebForm12 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!IsPostBack)
            {
                VincularDados();
            }*/
        }
        /*private void VincularDados()
        {
            SqlConnection connection = new SqlConnection(strcon);
            SqlCommand command = new SqlCommand("SELECT id, descricao, nome from EnvioDosUsuariosFoto2 order by id desc", connection);
            SqlDataAdapter daimages = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            daimages.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            GridView2.Attributes.Add("bordercolor", "black");
        }*/

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Postar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string idpost = GridView1.Rows[index].Cells[0].Text;
                string desc = GridView1.Rows[index].Cells[1].Text;
                string foto = "";
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("select imagem from EnvioDosUsuariosFoto2 where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idpost);
                SqlDataReader dr = aSQL.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        foto = dr["imagem"].ToString();
                    }
                }
                aSQLCon.Close();
                aSQLCon.Open();
                SqlCommand post;
                post = new SqlCommand("insert into Fotos3(descricao, imagem) values(@descricao, @imagem)", aSQLCon);

                post.Parameters.AddWithValue("@descricao", desc);
                post.Parameters.AddWithValue("@imagem", foto);

                post.ExecuteNonQuery();
                aSQLCon.Close();
                aSQLCon.Open();
                SqlCommand postdelete;
                postdelete = new SqlCommand("delete from EnvioDosUsuariosFoto2 where id = @id", aSQLCon);

                postdelete.Parameters.AddWithValue("@id", idpost);

                postdelete.ExecuteNonQuery();

                Response.Redirect("~/Home.aspx");
            }
            if (e.CommandName == "Excluir")
            {


                int index = Convert.ToInt32(e.CommandArgument);
               
                string idelete = GridView1.Rows[index].Cells[0].Text;
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("delete from EnvioDosUsuariosFoto2 where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idelete);
              
                aSQL.ExecuteNonQuery();
                Response.Redirect("~/Administrador/ConfirmarPublicacao.aspx");

            }
        }






    }
}
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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string idevento = Request.QueryString["idEvento"];
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("select nomeEvento, resumo, descricao from Eventos1 where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idevento);
                SqlDataReader dr = aSQL.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr["nomeEvento"].ToString();
                        TextBox4.Text = dr["resumo"].ToString();
                        TextBox3.Text = dr["descricao"].ToString();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string idevento = Request.QueryString["idEvento"];
            //string idcoment = Request.QueryString["id_coment"];
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();
            SqlCommand aSQL;
            //SqlDataReader dr = aSQL.ExecuteReader();
            aSQL = new SqlCommand("update Eventos1 set nomeEvento = @nomeEvento, resumo = @resumo, descricao = @descricao where id = @idEvento", aSQLCon);

            aSQL.Parameters.AddWithValue("@idEvento", idevento);
            aSQL.Parameters.AddWithValue("@nomeEvento", TextBox1.Text);
            aSQL.Parameters.AddWithValue("@resumo", TextBox4.Text);
            aSQL.Parameters.AddWithValue("@descricao", TextBox3.Text);
            aSQL.ExecuteNonQuery();
            //Response.Redirect("~\\Detalhes.aspx?id_foto=" + idfoto);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string idevento = Request.QueryString["idEvento"];
            //string idcoment = Request.QueryString["id_coment"];
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();
            SqlCommand aSQL;

            aSQL = new SqlCommand("delete from Eventos1 where id = @id", aSQLCon);
            aSQL.Parameters.AddWithValue("@id", idevento);
            aSQL.ExecuteNonQuery();
            //Response.Redirect("~\\Detalhes.aspx?id_foto=" + idfoto);
        }

    }
}
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
    public partial class Favoritos : System.Web.UI.Page
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
            SqlConnection connection = new SqlConnection(strcon);
            SqlCommand command = new SqlCommand("SELECT fo.descricao, fo.id from fotos3 fo inner join Lista_Favoritos lis on lis.Publicacao_id = fo.id where lis.Lista_id= 1 order by id desc", connection);
            SqlDataAdapter daimages = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            daimages.Fill(dt);
            gdvImagens.DataSource = dt;
            gdvImagens.DataBind();
            gdvImagens.Attributes.Add("bordercolor", "black");
        }
    }
}
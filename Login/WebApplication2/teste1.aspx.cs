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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                VincularDados();
            }
        }

        protected void gdvImagens_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "comando")
            {
                string codigo;
                int index = Convert.ToInt32(e.CommandArgument);
                codigo = gdvImagens.Rows[index].Cells[0].Text;
                Session["id"] = codigo;
                Response.Redirect("~/teste2.aspx");
            }
        }
        private void VincularDados()
        {
            SqlConnection connection = new SqlConnection(strcon);
            SqlCommand command = new SqlCommand("SELECT descricao,id from Fotos3 order by id desc", connection);
            SqlDataAdapter daimages = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            daimages.Fill(dt);
            gdvImagens.DataSource = dt;
            gdvImagens.DataBind();
            gdvImagens.Attributes.Add("bordercolor", "black");
        }
    }
}
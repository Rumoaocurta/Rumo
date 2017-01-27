using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string aSQLConecStr;

            if (!IsPostBack)
            {
                // Lendo a conexão de dados do Web.Config
                aSQLConecStr = ConfigurationManager.ConnectionStrings["aspnetdbConnectionString"].ConnectionString;

                // Abrindo a Conexão com o banco de dados
                SqlConnection aSQLCon = new SqlConnection(aSQLConecStr);
                aSQLCon.Open();

                // Executando o comando
                SqlCommand aSQL = new SqlCommand("SELECT * FROM Usuario WHERE UserName = @Login", aSQLCon);
                aSQL.Parameters.AddWithValue("@Login", User.Identity.Name);
                aSQL.ExecuteNonQuery();

                // Executa comando, gerando objeto DbDataReader
                DbDataReader dr = aSQL.ExecuteReader();
                //Le titulo do livro do resultado e apresenta no segundo rótulo
                if (dr.HasRows)
                {
                    // Lima o textbox2
                    dr.Read(); // Le o proximo registro
                    // Adiciona o livro encontrato ao TextoBox
                    TextBoxNome.Text = dr["Nome"].ToString();
                    TextBoxemail.Text = dr["email"].ToString();
                    TextBoxTelefone.Text = dr["Telefone"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string aSQLConecStr;

            // Lendo a conexão de dados do Web.Config
            aSQLConecStr = ConfigurationManager.ConnectionStrings["aspnetdbConnectionString"].ConnectionString;

            // Abrindo a Conexão com o banco de dados
            SqlConnection aSQLCon = new SqlConnection(aSQLConecStr);
            aSQLCon.Open();

            // Executando o comando
            SqlCommand aSQL;
            if (TextBoxNome.Text == "" || TextBoxemail.Text == "" || TextBoxTelefone.Text == "")
                aSQL = new SqlCommand("INSERT INTO Usuario(UserName, Nome, email, Telefone) VALUES (@Login, @Nome, @email, @Telefone)", aSQLCon);

            else
                aSQL = new SqlCommand("UPDATE Usuario SET Nome = @Nome, email = @email,Telefone = @Telefone  where Username = @Username ", aSQLCon);
            aSQL.Parameters.AddWithValue("@Login", User.Identity.Name);
            aSQL.Parameters.AddWithValue("@Nome", TextBoxNome.Text);
            aSQL.Parameters.AddWithValue("@email", TextBoxemail.Text);
            aSQL.Parameters.AddWithValue("@Telefone", TextBoxTelefone.Text);
            aSQL.Parameters.AddWithValue("@Username", User.Identity.Name);
            aSQL.ExecuteNonQuery();

            Response.Redirect("~/JoeUser/HomeUsuario.aspx");
        }
    }
}
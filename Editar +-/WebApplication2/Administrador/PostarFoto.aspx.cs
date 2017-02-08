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
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (arquivoUploadImagem.HasFile)
            {
                //obtem o tamanho da imagem enviada
                int tamanho = arquivoUploadImagem.PostedFile.ContentLength;
                //cria um array de bytes para armazenar os dados binários da imagem
                byte[] imgbyte = new byte[tamanho];
                //armazena a imagem selecinada na memória
                HttpPostedFile img = arquivoUploadImagem.PostedFile;
                //define os dados binários
                img.InputStream.Read(imgbyte, 0, tamanho);
                string descricaoImagem = txtDescricao.Text;
                //abre uma conexão 
                SqlConnection connection = new SqlConnection(strcon);
                connection.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Fotos3 (imagem,descricao) VALUES (@imagem,@descricao)", connection);
                cmd.Parameters.Add("@descricao", SqlDbType.VarChar, 50).Value = descricaoImagem;
                cmd.Parameters.Add("@imagem", SqlDbType.Image).Value = imgbyte;
                int contador = cmd.ExecuteNonQuery();
                connection.Close();
                if (contador == 1)
                {
                    
                    txtDescricao.Text = string.Empty;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('" + descricaoImagem + " imagem incluida com sucesso')", true);
                }
            }


        }

          

        protected void gdvImagens_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            // Abrindo a Conexão com o banco de dados
            SqlConnection aSQLCon = new SqlConnection(strcon);
            aSQLCon.Open();

            // Executando o comando
            SqlCommand aSQL;
            SqlCommand select;
            select = new SqlCommand("Select situacao from Curtida where usuario = @usuario and foto_id = @foto_id", aSQLCon);
            select.Parameters.AddWithValue("@usuario", User.Identity.Name);
            select.Parameters.AddWithValue("@foto_id", Context.Request.QueryString["ImgID"]);
            aSQL = new SqlCommand("INSERT INTO Curtida(usuario, situacao, foto_id) VALUES (@nome, 1, @foto_id)", aSQLCon);
            aSQL.Parameters.AddWithValue("@nome", User.Identity.Name);
            aSQL.Parameters.AddWithValue("@foto_id", Context.Request.QueryString["ImgID"]);
            aSQL.ExecuteNonQuery();
            SqlDataReader dr = select.ExecuteReader();
            int a = Convert.ToInt32(dr["situacao"]);
            if (a == 1)
            {
                aSQL = new SqlCommand("UPDATE Curtida SET situacao = 0 where usuario = @usuario and foto_id = @foto_id", aSQLCon);
                aSQL.Parameters.AddWithValue("@nome", User.Identity.Name);
                aSQL.Parameters.AddWithValue("@foto_id", Context.Request.QueryString["ImgID"]);
                aSQL.ExecuteNonQuery();
            }
            
            
            Response.Redirect("~/Home.aspx");



        }
    }
}
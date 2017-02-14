using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Administrador
{
    public partial class PostarPublicacao : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (arquivoUploadImagem.HasFile && txtDescricao.Text.Trim() != "")
            {
                //obtem o tamanho da imagem enviada
                int tamanho = arquivoUploadImagem.PostedFile.ContentLength;
                //cria um array de bytes para armazenar os dados binários da imagem
                byte[] imgbyte = new byte[tamanho];
                string testeArquivo = arquivoUploadImagem.PostedFile.ContentType;
                //armazena a imagem selecinada na memória
                HttpPostedFile img = arquivoUploadImagem.PostedFile;
                //define os dados binários
                img.InputStream.Read(imgbyte, 0, tamanho);
                string descricaoImagem = txtDescricao.Text;
                //abre uma conexão 
                SqlConnection connection = new SqlConnection(strcon);
                connection.Open();
                if (testeArquivo == "image/png" || testeArquivo == "image/jpeg")
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO Publicacao (descricao, conteudo, tipo, estado, usuario) VALUES (@descricao, @conteudo, @tipo, 1, @usuario)", connection);
                    cmd.Parameters.Add("@descricao", descricaoImagem);
                    cmd.Parameters.Add("@conteudo", SqlDbType.Image).Value = imgbyte;
                    cmd.Parameters.Add("@tipo", "imagem");
                    cmd.Parameters.Add("@usuario", User.Identity.Name);
                    int contador = cmd.ExecuteNonQuery();
                    connection.Close();
                    if (contador == 1)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('A imagem " + descricaoImagem + " foi incluida com sucesso')", true);
                        Response.Redirect("~/Home.aspx");
                    }
                }
                if (testeArquivo == "video/mp4")
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO Publicacao (descricao, conteudo, tipo, estado, usuario) VALUES (@descricao, @conteudo, @tipo, 1, @usuario)", connection);
                    cmd.Parameters.Add("@descricao", descricaoImagem);
                    cmd.Parameters.Add("@conteudo", SqlDbType.Image).Value = imgbyte;
                    cmd.Parameters.Add("@tipo", "video");
                    cmd.Parameters.Add("@usuario", User.Identity.Name);
                    int contador = cmd.ExecuteNonQuery();
                    connection.Close();
                    if (contador == 1)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('O vídeo " + descricaoImagem + " foi incluido com sucesso')", true);
                        Response.Redirect("~/Home.aspx");
                    }
                }
            }
            else
            {

                LabelErro.Text = "Erro! Verifique se o arquivo está no formato correto e se o campo de Descrição não está vazio";
            }

        }
    }
}
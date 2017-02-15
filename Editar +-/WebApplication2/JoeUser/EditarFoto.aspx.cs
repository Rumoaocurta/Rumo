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
    public partial class EditarFoto : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string idfoto = Request.QueryString["id"];
            if (arquivoUploadImagem.HasFile && txtDescricao.Text.Trim() != "")
            {
                int tamanho = arquivoUploadImagem.PostedFile.ContentLength;
                //cria um array de bytes para armazenar os dados binários da imagem
                byte[] imgbyte = new byte[tamanho];
                string testeArquivo = arquivoUploadImagem.PostedFile.ContentType;
                //armazena a imagem selecinada na memória
                HttpPostedFile img = arquivoUploadImagem.PostedFile;
                //define os dados binários
                img.InputStream.Read(imgbyte, 0, tamanho);
                //abre uma conexão 
                SqlConnection connection = new SqlConnection(strcon);
                connection.Open();
                if (testeArquivo == "image/png" || testeArquivo == "image/jpeg")
                {
                    SqlCommand cmd = new SqlCommand("update Publicacao set descricao = @descricao, conteudo = @conteudo where id = @id", connection);
                    cmd.Parameters.Add("@descricao", txtDescricao.Text);
                    cmd.Parameters.Add("@conteudo", SqlDbType.Image).Value = imgbyte;
                    cmd.Parameters.Add("@id", idfoto);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("~/JoeUser/PubsUsuario.aspx");
                }
                else
                {
                    LabelErro.Text = "Formato de arquivo inválido";
                }
            }
            if (!arquivoUploadImagem.HasFile && txtDescricao.Text.Trim() != "")
            {
                SqlConnection connection = new SqlConnection(strcon);
                connection.Open();
                SqlCommand cmd = new SqlCommand("update Publicacao set descricao = @descricao where id = @id", connection);
                cmd.Parameters.Add("@descricao", txtDescricao.Text);
                cmd.Parameters.Add("@id", idfoto);
                cmd.ExecuteNonQuery();
                Response.Redirect("~/JoeUser/PubsUsuario.aspx");
            }
            if (arquivoUploadImagem.HasFile && txtDescricao.Text.Trim() == "")
            {
                int tamanho = arquivoUploadImagem.PostedFile.ContentLength;
                byte[] imgbyte = new byte[tamanho];
                string testeArquivo = arquivoUploadImagem.PostedFile.ContentType;
                HttpPostedFile img = arquivoUploadImagem.PostedFile;
                img.InputStream.Read(imgbyte, 0, tamanho);
                SqlConnection connection = new SqlConnection(strcon);
                connection.Open();
                if (testeArquivo == "image/png" || testeArquivo == "image/jpeg")
                {
                    SqlCommand cmd = new SqlCommand("update Publicacao set conteudo = @conteudo where id = @id", connection);
                    cmd.Parameters.Add("@conteudo", SqlDbType.Image).Value = imgbyte;
                    cmd.Parameters.Add("@id", idfoto);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("~/JoeUser/PubsUsuario.aspx");
                }
                else
                {
                    LabelErro.Text = "Formato de arquivo inválido";
                }
            }
            if (!arquivoUploadImagem.HasFile && txtDescricao.Text.Trim() == "")
                Response.Redirect("~/JoeUser/PubsUsuario.aspx");
        }
    }
}
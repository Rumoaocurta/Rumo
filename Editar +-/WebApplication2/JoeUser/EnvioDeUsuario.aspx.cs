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
    public partial class WebForm11 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("INSERT INTO EnvioDosUsuariosFoto2 (imagem,descricao, nome) VALUES (@imagem,@descricao,@nome)", connection);
                cmd.Parameters.AddWithValue("@nome", User.Identity.Name);
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
      }

   }



       





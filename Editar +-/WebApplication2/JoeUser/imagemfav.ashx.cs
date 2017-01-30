using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    /// <summary>
    /// Summary description for imagemfav
    /// </summary>
    public class imagemfav : IHttpHandler
    {

        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;

        public void ProcessRequest(HttpContext context)
        {
            string imagemID = context.Request.QueryString["ImgID"];
            SqlConnection connection = new SqlConnection(strcon);
            connection.Open();
            SqlCommand command = new SqlCommand("select fo.imagem from fotos3 fo inner join Lista_Favoritos lis on lis.Publicacao_id = fo.id where lis.Lista_id= 1 and fo.id=" + imagemID, connection);
            SqlDataReader dr = command.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((Byte[])dr[0]);
            connection.Close();
            context.Response.End();
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
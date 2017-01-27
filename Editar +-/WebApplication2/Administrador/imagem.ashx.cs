using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    /// <summary>
    /// Summary description for imagem
    /// </summary>
    public class imagem : IHttpHandler
    {


        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;

        public void ProcessRequest(HttpContext context)
        {
            string imagemID = context.Request.QueryString["imagemID"];
            SqlConnection connection = new SqlConnection(strcon);
            connection.Open();
            SqlCommand command = new SqlCommand("select imagem from EnvioDosUsuariosFoto2 where id=" + imagemID, connection);
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
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    /// <summary>
    /// Summary description for VideoHandler
    /// </summary>
    public class VideoHandler : IHttpHandler
    {
        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;

        public void ProcessRequest(HttpContext context)
        {
            string videoID = context.Request.QueryString["VidID"];
            SqlConnection connection = new SqlConnection(strcon);
            connection.Open();
            SqlCommand command = new SqlCommand("select conteudo from Publicacao where id=" + videoID + " and tipo = 'video' and estado = 1", connection);
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
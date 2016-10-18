﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class AddEvento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string aSQLConecStr;

            // Lendo a conexão de dados do Web.Config
            aSQLConecStr = ConfigurationManager.ConnectionStrings["Evento"].ConnectionString;

            // Abrindo a Conexão com o banco de dados
            SqlConnection aSQLCon = new SqlConnection(aSQLConecStr);
            aSQLCon.Open();

            // Executando o comando
            SqlCommand aSQL = new SqlCommand("INSERT INTO Eventos1(nomeEvento, DescricaoEvento, ImagemEvento) VALUES (@nomeEvento, @DescricaoEvento, @ImagemEvento)", aSQLCon);
            aSQL.Parameters.AddWithValue("@nomeEvento", TextBox1.Text);
            aSQL.Parameters.AddWithValue("@DescricaoEvento", TextBox3.Text);
            aSQL.Parameters.AddWithValue("@ImagemEvento", FileUpload1.FileContent);
            aSQL.ExecuteNonQuery();

            Response.Redirect("~/crud2.aspx");
        }
    }
}
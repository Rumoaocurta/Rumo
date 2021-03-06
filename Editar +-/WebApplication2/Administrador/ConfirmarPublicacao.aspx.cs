﻿using System;
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
    public partial class WebForm12 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["Fotos"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                VincularDados();
                if (GridView1.Rows.Count.ToString() == "0")
                    Label1.Text = "Não há imagens aguardando aprovação";
                else
                    Label1.Text = "Imagens Recebidas";
                if (GridView2.Rows.Count.ToString() == "0")
                    Label2.Text = "Não há vídeos aguardando aprovação";
                else
                    Label2.Text = "Videos Recebidos";
            }
        }
        private void VincularDados()
        {
            SqlConnection connection = new SqlConnection(strcon);
            SqlCommand commandimg = new SqlCommand("SELECT descricao, id, usuario from Publicacao where estado = 0 and tipo = 'imagem' order by id desc", connection);
            SqlDataAdapter daimages = new SqlDataAdapter(commandimg);
            DataTable dti = new DataTable();
            daimages.Fill(dti);
            GridView1.DataSource = dti;
            GridView1.DataBind();
            GridView1.Attributes.Add("bordercolor", "black");

            SqlCommand commandvid = new SqlCommand("SELECT descricao, id, usuario from Publicacao where estado = 0 and tipo = 'video' order by id desc", connection);
            SqlDataAdapter davideos = new SqlDataAdapter(commandvid);
            DataTable dtv = new DataTable();
            davideos.Fill(dtv);
            GridView2.DataSource = dtv;
            GridView2.DataBind();
            GridView2.Attributes.Add("bordercolor", "black");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Postar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string idpost = GridView1.Rows[index].Cells[0].Text;
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("update Publicacao set estado = 1 where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idpost);
                aSQL.ExecuteReader();

                Response.Redirect("~/Administrador/ConfirmarPublicacao.aspx");
            }
            if (e.CommandName == "Excluir")
            {


                int index = Convert.ToInt32(e.CommandArgument);
               
                string idelete = GridView1.Rows[index].Cells[0].Text;
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("delete from Publicacao where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idelete);
              
                aSQL.ExecuteNonQuery();
                Response.Redirect("~/Administrador/ConfirmarPublicacao.aspx");

            }
        }
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Postar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string idpost = GridView2.Rows[index].Cells[0].Text;
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("update Publicacao set estado = 1 where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idpost);
                aSQL.ExecuteReader();

                Response.Redirect("~/Administrador/ConfirmarPublicacao.aspx");
            }
            if (e.CommandName == "Excluir")
            {


                int index = Convert.ToInt32(e.CommandArgument);

                string idelete = GridView2.Rows[index].Cells[0].Text;
                SqlConnection aSQLCon = new SqlConnection(strcon);
                aSQLCon.Open();
                SqlCommand aSQL;
                aSQL = new SqlCommand("delete from Publicacao where id = @id", aSQLCon);
                aSQL.Parameters.AddWithValue("@id", idelete);

                aSQL.ExecuteNonQuery();
                Response.Redirect("~/Administrador/ConfirmarPublicacao.aspx");

            }
        }






    }
}
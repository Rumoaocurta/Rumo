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
    public partial class WebForm4 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Detalhe")
            {
                string codigo;
                int index = Convert.ToInt32(e.CommandArgument);
                codigo = GridView1.Rows[index].Cells[0].Text;
                Session["id"] = codigo;

                Response.Redirect("~/DetalheEvento.aspx");
            }
        }

        
    }
}
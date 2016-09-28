using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebFormMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.Name == "ADM")
            {
                HyperLink3.NavigateUrl = "~/Administrador/WebFormAdmin.aspx";
                HyperLink2.NavigateUrl = "~/crud2.aspx";
            }
            else
            {
                HyperLink3.NavigateUrl = "~/ErroNãoÉADM.aspx";
                HyperLink2.NavigateUrl = "~/EventoUsuario.aspx";
            }
        }
    }
}
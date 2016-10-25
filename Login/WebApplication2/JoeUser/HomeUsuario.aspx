<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomeUsuario.aspx.cs" Inherits="WebApplication2.WebForm7" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
</head>
<body>

    <div>
    Página para Usuario<br/>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/JoeUser/usuario.aspx">Eitar perfil</asp:HyperLink><br/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Menu</asp:HyperLink>
    </div>
    </form>
</body>
</html>
</asp:Content>

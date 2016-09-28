<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErroNãoÉADM.aspx.cs" Inherits="WebApplication2.ErroNãoÉADM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Desculpe, só adm tem acesso a esta página.<br/><br/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebFormMenu.aspx">Voltar a página anterior</asp:HyperLink> 
        <br/>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Administrador/WebFormAdmin.aspx">Entrar como adm</asp:HyperLink>
    </div>
    </form>
</body>
</html>

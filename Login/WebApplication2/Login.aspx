<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Login ID="Login1" runat="server"></asp:Login><br/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AcessoPublico/WebFormLoginCreate.aspx">Criar Novo Usuário</asp:HyperLink>
    </div>
    </form>
</body>
</html>

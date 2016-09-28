<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMenu.aspx.cs" Inherits="WebApplication2.WebFormMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Parabens <asp:LoginName ID="LoginName1" runat="server" />
        , você está no nosso site<br/>
            <asp:HyperLink ID="HyperLink3" runat="server">Ir para página do Administrador</asp:HyperLink><br/>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/JoeUser/WebFormJoe.aspx">Ir para página do usuário</asp:HyperLink><br/>

            <br/>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/usuario.aspx">Cadastro de usuário</asp:HyperLink><br/>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/crud2.aspx">cadastro de crud 2</asp:HyperLink><br/>
        Caso deseje sair, clique aqui: <asp:LoginStatus ID="LoginStatus1" runat="server" />
        
    </div>
    </form>
</body>
</html>

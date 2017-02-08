<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ADMHome.aspx.cs" Inherits="WebApplication2.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        height: 23px;
        width: 352px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
</head>
<body>

    <div>
    Página para Administradores<br/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Menu</asp:HyperLink>







        <table style="width: 100%;">
            
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Administrador/Eventos.aspx">Editar eventos</asp:HyperLink><br/>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Administrador/ConfirmarPublicacao.aspx">Confirmar Publucações de usuários</asp:HyperLink><br/>
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Administrador/AddEvento.aspx">Postar Evento</asp:HyperLink><br/>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Administrador/PostarFoto.aspx">Postar Foto</asp:HyperLink><br/>
                </td>
                
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PostarFoto.aspx.cs" Inherits="WebApplication2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
            height: 23px;
            width: 72px;
        }
        .auto-style8 {
            width: 855px;
        }
        .auto-style9 {
            width: 72px;
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Menu</asp:HyperLink><br/><br/><h3>Descrição da foto</h3>







        <table style="width: 100%;">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8"><asp:TextBox ID="txtDescricao" runat="server" BackColor="#FFFFCC" Height="97px" TextMode="MultiLine" Width="260px"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">Foto: <asp:FileUpload ID="arquivoUploadImagem" runat="server" Width="350px" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style8"><asp:Button ID="btnUpload" runat="server" Text="Enviar Foto" onclick="btnUpload_Click" /><br/><br/>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Administrador/ADMHome.aspx">Voltar</asp:HyperLink>  </td>
                
            </tr>
        </table>
    </form>
</body>
</html>

</asp:Content>

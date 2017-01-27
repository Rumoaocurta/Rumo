<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EnvioDeUsuario.aspx.cs" Inherits="WebApplication2.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
</head>
<body>

    <div>
    Página de Envio de Fotos<br/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Menu</asp:HyperLink>







        <table style="width: 100%;">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td><asp:TextBox ID="txtDescricao" runat="server" BackColor="#FFFFCC" Height="97px" TextMode="MultiLine" Width="260px"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>Imagem:<asp:FileUpload ID="arquivoUploadImagem" runat="server" Width="350px" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/JoeUser/HomeUsuario.aspx">Voltar</asp:HyperLink> 
                </td>
                <td><asp:Button ID="btnUpload" runat="server" Text="Enviar Arquivo" onclick="btnUpload_Click" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>


</asp:Content>

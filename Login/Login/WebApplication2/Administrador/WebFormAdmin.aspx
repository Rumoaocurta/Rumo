<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAdmin.aspx.cs" Inherits="WebApplication2.WebFormAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 324px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Página para Administradores<br/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Menu</asp:HyperLink>







        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td><asp:TextBox ID="txtDescricao" runat="server" BackColor="#FFFFCC" Height="97px" TextMode="MultiLine" Width="260px"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>Imagem:<asp:FileUpload ID="arquivoUploadImagem" runat="server" Width="350px" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td><asp:Button ID="btnUpload" runat="server" Text="Enviar Arquivo" onclick="btnUpload_Click" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>

        
     

    
   
   


    
    </form>
</body>
</html>

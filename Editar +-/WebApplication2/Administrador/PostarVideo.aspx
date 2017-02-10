<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PostarVideo.aspx.cs" Inherits="WebApplication2.Administrador.PostarVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Página para Administradores<br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Menu</asp:HyperLink>
    <br />
    <br />
    <h3>Descrição do Vídeo</h3>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtDescricao" runat="server" BackColor="#FFFFCC" Height="97px" TextMode="MultiLine" Width="260px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">Vídeo:
                <asp:FileUpload ID="arquivoUploadVideo" runat="server" Width="350px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style8">
                <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" Text="Enviar Video" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Administrador/ADMHome.aspx">Voltar</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

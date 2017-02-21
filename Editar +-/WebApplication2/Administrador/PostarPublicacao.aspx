<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PostarPublicacao.aspx.cs" Inherits="WebApplication2.Administrador.PostarPublicacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <style type="text/css">
            .erro {
                color:red;
            }
        </style>
    </head>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/ADMHome.aspx">Voltar</asp:HyperLink><br/><br/><h3>Envie a publicação</h3>
    <table style="width: 100%;">
            <tr>
                <td></td>
                <td>Descrição:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8"><asp:TextBox ID="txtDescricao" runat="server" BackColor="#FFFFCC" Height="97px" TextMode="MultiLine" Width="260px"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">Arquivo: <asp:FileUpload ID="arquivoUploadImagem" runat="server" Width="350px" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style8"><asp:Button ID="btnUpload" runat="server" Text="Confirmar Envio" onclick="btnUpload_Click" /><br />
                    <br /><asp:Label ID="LabelErro" runat="server" Text="" CssClass="erro"></asp:Label></td>
                
            </tr>
        </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarVideo.aspx.cs" Inherits="WebApplication2.JoeUser.EditarVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
    <title></title>
        <style type="text/css">
            .erro {
                color:red;
            }
        </style>
</head>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Menu</asp:HyperLink><br/><br/><h3>Insira as novas informações</h3>
    Obs: Deixe o campo em branco para não alterá-lo<br /><br />
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
                <td class="auto-style8">Arquivo: <asp:FileUpload ID="arquivoUploadVideo" runat="server" Width="350px" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style8"><asp:Button ID="btnUpload" runat="server" Text="Atualizar" onclick="btnUpload_Click" /><br />
                    <br /><asp:Label ID="LabelErro" runat="server" Text="" CssClass="erro"></asp:Label>
                
            </tr>
        </table>
</asp:Content>

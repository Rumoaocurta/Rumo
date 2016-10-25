<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="WebApplication2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 337px;
        }
    .auto-style7 {
        height: 44px;
        width: 337px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">

         <tr>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td><asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Home.aspx"></asp:Login><br/>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AcessoPublico/WebFormLoginCreate.aspx">Criar Novo Usuário</asp:HyperLink></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="usuario.aspx.cs" Inherits="WebApplication2.WebForm10" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 257px;
        }
        .auto-style3 {
            height: 23px;
            width: 257px;
        }
    </style>
</head>
<body>
    <form>
    <p>
        Cadastro de Usuário</p>
    <hr /><br/>
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBoxNome" runat="server" Width="606px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Email "></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBoxemail" runat="server" Width="602px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Telefone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxTelefone" runat="server" Width="604px"></asp:TextBox>
            </td>
        </tr>
    </table>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Salvar" />
    </form>
</body>
</html>

</asp:Content>

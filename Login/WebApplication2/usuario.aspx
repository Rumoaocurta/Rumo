<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuario.aspx.cs" Inherits="WebApplication2.usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        Cadastro de Usuário :D</p>
    <hr /><br/>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxLogin" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBoxNome" runat="server" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Email "></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBoxemail" runat="server" Width="224px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Telefone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxTelefone" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Salvar" />
    </form>
</body>
</html>

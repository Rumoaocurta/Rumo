<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarComentrio.aspx.cs" Inherits="WebApplication2.EditarComentrio" %>
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
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Edite seu comentário"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Editar" />
    &nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Excluir" />
    <br />
    <asp:Label ID="Label2" runat="server" CssClass="erro"></asp:Label>
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Voltar" />
</asp:Content>

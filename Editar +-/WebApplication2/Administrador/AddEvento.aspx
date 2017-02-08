<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddEvento.aspx.cs" Inherits="WebApplication2.AddEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 370px;
        }
        .auto-style6 {
            width: 393px;
            height: 132px;
        }
        .auto-style8 {
            width: 348px;
        }
        .auto-style9 {
            width: 348px;
            height: 132px;
        }
        .auto-style10 {
            width: 393px;
        }
        .auto-style12 {
            height: 132px;
        }
    </style>

<body>
       <table style= "width: 570px">
           <tr>
               <td class="auto-style8">
                   &nbsp;</td>
               <td class="auto-style10">
       <h3>Envie os dados do seu evento!</h3>
               </td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style9"></td>
               <td class="auto-style6">Nome do Evento: <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
                   <br />
                   Resumo do Evento: <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
                   <br />
       
       Descrição:  <br /><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="84px" Width="332px"></asp:TextBox>
       <br/><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
               </td>
               <td class="auto-style12"></td>
           </tr>
           <tr>
               <td class="auto-style8">&nbsp;</td>
               <td class="auto-style10"><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Evento %>" InsertCommand="INSERT INTO Eventos(nomeEvento, descricao) VALUES (@nome, @descricao)" SelectCommand="Select * from Eventos1">
           <InsertParameters>
               <asp:Parameter Name="nome" />
               <asp:Parameter Name="descricao" />
               <asp:Parameter Name="imagem" />
           </InsertParameters>
           </asp:SqlDataSource>
                   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/Eventos.aspx">Voltar</asp:HyperLink>
               </td>
               <td>&nbsp;</td>
           </tr>
       </table>
       <br />
</body>
</html>
</asp:Content>
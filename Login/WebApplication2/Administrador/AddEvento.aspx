<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEvento.aspx.cs" Inherits="WebApplication2.AddEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 370px;
        }
        .auto-style2 {
            width: 448px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
       <table style="width:100%;">
           <tr>
               <td class="auto-style1">
                   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/Eventos.aspx">Voltar</asp:HyperLink>
               </td>
               <td class="auto-style2">
       <h1>Envie os dados do seu evento!<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Evento %>" InsertCommand="INSERT INTO Eventos1(nomeEvento, DescricaoEvento, ImagemEvento) VALUES (@nome, @descricao, @imagem)" SelectCommand="Select * from Eventos1">
           <InsertParameters>
               <asp:Parameter Name="nome" />
               <asp:Parameter Name="descricao" />
               <asp:Parameter Name="imagem" />
           </InsertParameters>
           </asp:SqlDataSource>
       </h1>
               </td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style1">&nbsp;</td>
               <td class="auto-style2">Nome do Evento: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
       Imagem: <asp:FileUpload ID="FileUpload1" runat="server" /><br />
       Descrição: <br /><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
   <br />
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
               </td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style1">&nbsp;</td>
               <td class="auto-style2">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
       </table>
       <br />
</form>
</body>
</html>

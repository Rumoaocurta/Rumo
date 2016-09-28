<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventoUsuario.aspx.cs" Inherits="WebApplication2.EventoUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 297px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebFormMenu.aspx">Voltar</asp:HyperLink>
                </td>
                <td class="auto-style4"><h1>&nbsp;&nbsp;&nbsp; EVENTOS</h1></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="223px">
                        <Columns>
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                        </Columns>
                    </asp:GridView>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Evento %>" SelectCommand="select ImagemEvento as Imagem, nomeEvento as Nome, DescricaoEvento as Descricao from Eventos1 order by id desc">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

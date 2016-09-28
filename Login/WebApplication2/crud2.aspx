<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crud2.aspx.cs" Inherits="WebApplication2.crud2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 211px;
        }
        .auto-style2 {
            width: 241px;
        }
        .auto-style3 {
            width: 211px;
            height: 71px;
        }
        .auto-style4 {
            width: 241px;
            height: 71px;
        }
        .auto-style5 {
            height: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebFormMenu.aspx">Voltar</asp:HyperLink>
                </td>
                <td class="auto-style4"><h1>&nbsp;&nbsp;&nbsp; EVENTOS</h1></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="223px" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                            <asp:ButtonField CommandName="Editar" Text="Editar" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>Adicionar novo evento?
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/AddEvento.aspx" Text="Adicionar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Evento %>" SelectCommand="select ImagemEvento as Imagem, nomeEvento as Nome, DescricaoEvento as Descricao from Eventos1 order by id desc" DeleteCommand="DELETE FROM Eventos1 WHERE id = @id
" UpdateCommand="UPDATE Eventos1
SET nomeEvento = @nomeEvento, DescricaoEvento = @DescricaoEvento 
WHERE id = @id
">
            <DeleteParameters>
                <asp:Parameter Name="id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="nomeEvento" />
                <asp:Parameter Name="DescricaoEvento" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

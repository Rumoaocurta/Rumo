<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Eventos.aspx.cs" Inherits="WebApplication2.Eventos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2
    {
        width: 58px;
    }
    .auto-style4
    {
        width: 59px;
    }
    .auto-style5
    {
        width: 60px;
    }
    .auto-style6
    {
        width: 312px;
    }
        .auto-style7 {
        height: 23px;
        width: 312px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
            <tr>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/ADMHome.aspx">Voltar</asp:HyperLink>
                </td>
                <td class="auto-style4"><h1>&nbsp;&nbsp;&nbsp; EVENTOS</h1></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="223px" OnRowCommand="GridView1_RowCommand" DataKeyNames="id">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="Resumo" HeaderText="Resumo" SortExpression="Resumo" />
                            <asp:ButtonField CommandName="Editar" Text="Editar" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>Adicionar novo evento?
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Administrador/AddEvento.aspx" Text="Adicionar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Evento %>" SelectCommand="select id, nomeEvento as Nome, resumo as Resumo from Eventos1 order by id desc" DeleteCommand="DELETE FROM Eventos1 WHERE id = @id" UpdateCommand="UPDATE Eventos1 SET nomeEvento = @nomeEvento, resumo = @resumo, descricao = @descricao WHERE id = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="nomeEvento" />
                <asp:Parameter Name="resumo" />
                <asp:Parameter Name="descricao" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>

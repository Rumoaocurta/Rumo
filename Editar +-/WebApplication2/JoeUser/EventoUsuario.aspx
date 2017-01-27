<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EventoUsuario.aspx.cs" Inherits="WebApplication2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        height: 23px;
        width: 201px;
    }
    .auto-style7 {
        height: 23px;
        width: 239px;
    }
    .auto-style8 {
        height: 23px;
        width: 194px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
   
</head>
<body>

    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style8">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Voltar</asp:HyperLink>
                </td>
                <td class="auto-style7"><h1>&nbsp;&nbsp;&nbsp; EVENTOS</h1></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="223px" DataKeyNames="ID" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="Resumo" HeaderText="Resumo" SortExpression="Resumo" />
                            <asp:ButtonField CommandName="Detalhe" Text="Detalhes" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Evento %>" SelectCommand="select id as ID, nomeEvento as Nome, resumo as Resumo from Eventos1 order by id desc">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
</asp:Content>

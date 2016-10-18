<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarEvento.aspx.cs" Inherits="WebApplication2.EditarEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 229px;
        }
        .auto-style2 {
            width: 229px;
            height: 41px;
        }
        .auto-style3 {
            height: 60px;
        }
        .auto-style4 {
            width: 229px;
            height: 60px;
        }
    </style>
</head>
<body>
    <script language=javascript>
        function ConfirmaExclusao() {
            return confirm('Deseja realmente excluir este registro?');
        }
</script>

    <form id="form1" runat="server">
    <div>
    <table style="width:100%;">
            <tr>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/crud2.aspx">Voltar</asp:HyperLink>
                </td>
                <td class="auto-style3"><h1>&nbsp;&nbsp;&nbsp; EVENTOS</h1></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Atualizar"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Deletar" OnClientClick="javascript:return ConfirmaExclusao();"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Evento %>" DeleteCommand="DELETE FROM Eventos1 WHERE id = @id" SelectCommand="select ImagemEvento as Imagem, nomeEvento as Nome, DescricaoEvento as Descricao from Eventos1 order by id desc" UpdateCommand="UPDATE Eventos1
SET nomeEvento = @nomeEvento, DescricaoEvento = @DescricaoEventos
WHERE id = @id

">
            <DeleteParameters>
                <asp:Parameter Name="id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="nomeEvento" />
                <asp:Parameter Name="DescricaoEventos" />
                <asp:Parameter Name="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarEventoADM.aspx.cs" Inherits="WebApplication2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        height: 23px;
        width: 201px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <script language=javascript>
        function ConfirmaExclusao() {
            return confirm('Deseja realmente excluir este registro?');
        }
</script>


    <div>
    <table style="width:100%;">
            <tr>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/Eventos.aspx">Voltar</asp:HyperLink>
                </td>
                <td class="auto-style3"><h1>&nbsp;&nbsp;&nbsp; EVENTOS</h1></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Edite os dados do seu evento:"></asp:Label>
                    <br />
                    Nome do Evento:
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                   Resumo do Evento:
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                   <br />
       
       Descrição: 
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
   <br />
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Atualizar" />  &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Deletar" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Evento %>" DeleteCommand="DELETE FROM Eventos WHERE id = @id" SelectCommand="select nomeEvento as Nome, descricao as Descricao from Eventos order by id desc" UpdateCommand="UPDATE Eventos
SET nomeEvento = @nomeEvento, descricao = @descricao
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

</body>
</html>

</asp:Content>

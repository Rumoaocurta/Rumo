<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="WebApplication2.Detalhes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gdvImagem" runat="server" AutoGenerateColumns="False" ShowHeader="False">
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Image ID="Image1" runat="server" 
            ImageUrl='<%# "ImagemHandler.ashx?ImgID="+ Eval("id") %>'/>
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Envie um comentário"></asp:Label>
    <br />
    <asp:TextBox ID="comentario" runat="server"></asp:TextBox><asp:Button ID="Button2" runat="server" Text="Enviar" OnClick="Button2_Click" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" SortExpression="id" />
            <asp:BoundField DataField="Usuário" HeaderText="Usuário" SortExpression="Usuário" />
            <asp:BoundField DataField="conteudo" HeaderText="Conteúdo" SortExpression="conteudo" />
            <asp:ButtonField CommandName="Editar" Text="Editar" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fotos %>" SelectCommand="select id, nome as Usuário, conteudo from Comentario2 where foto_id = @foto_id ORDER BY id">
        <SelectParameters>
            <asp:SessionParameter Name="foto_id" SessionField="foto_id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" PostBackUrl="~/Home.aspx" Text="Voltar" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConfirmarPublicacao.aspx.cs" Inherits="WebApplication2.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>

        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />

            <asp:BoundField HeaderText = "descricao" DataField="descricao" SortExpression="descricao" />
            <asp:BoundField HeaderText = "nome" DataField="nome" SortExpression="nome" />
            <asp:TemplateField HeaderText="Imagem">
            <ItemTemplate>
            <asp:Image ID="Image1" runat="server" 
                    ImageUrl='<%# "imagem.ashx?imagemID="+ Eval("id") %>' Height="45px" 
                    Width="52px"/>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField CommandName="Postar" Text="Postar" />
            <asp:ButtonField CommandName="Excluir" Text="Excluir" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fotos %>" SelectCommand="SELECT * FROM [EnvioDosUsuariosFoto2]"></asp:SqlDataSource>


    <br/>

    

    </asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetalheEvento.aspx.cs" Inherits="WebApplication2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="819px" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Resumo" HeaderText="Resumo" SortExpression="Resumo" />
            <asp:BoundField DataField="Descrição" HeaderText="Descrição" SortExpression="Descrição" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Evento %>" SelectCommand="select nomeEvento as Nome, resumo as Resumo, descricao as Descrição from Eventos1 where id = @id">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br/>


</asp:Content>

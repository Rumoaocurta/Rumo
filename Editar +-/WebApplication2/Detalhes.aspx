﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="WebApplication2.Detalhes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <style type="text/css">
            .erro {
                color:red;
            }
        </style>
    </head>
<asp:GridView ID="gdvImagem" runat="server" AutoGenerateColumns="False" ShowHeader="False" PageSize="1">
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Image ID="Image1" runat="server" 
            ImageUrl='<%# "ImagemHandler.ashx?ImgID="+ Eval("id") %>' Height ="300px" Width ="400px"/>
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView><br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Text="Envie um comentário"></asp:Label>
    <br />
    <asp:TextBox ID="comentario" runat="server"></asp:TextBox><asp:Button ID="Button2" runat="server" Text="Enviar" OnClick="Button2_Click" />

    <br />
    <asp:Label ID="Label2" runat="server" CssClass="erro"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" SortExpression="id" />
            <asp:BoundField DataField="Usuário" HeaderText="Usuário" SortExpression="Usuário" />
            <asp:BoundField DataField="conteudo" HeaderText="Conteúdo" SortExpression="conteudo" />
            <asp:ButtonField CommandName="Editar" Text="Editar" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fotos %>" SelectCommand="select id, usuario as Usuário, conteudo as Conteudo from Comentarios where pub_id = @pub_id ORDER BY id">
        <SelectParameters>
            <asp:QueryStringParameter Name="pub_id" QueryStringField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" PostBackUrl="~/Home.aspx" Text="Voltar" />
</asp:Content>

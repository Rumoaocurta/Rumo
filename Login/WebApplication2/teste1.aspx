<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="teste1.aspx.cs" Inherits="WebApplication2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .Gridview {
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Teste
    </p>

        
     <asp:GridView ID="gdvImagens" CssClass="Gridview" runat="server" AutoGenerateColumns="False"
    HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" Height="350px" 
        Width="500px" OnRowCommand="gdvImagens_RowCommand">
    <Columns>
    <asp:BoundField HeaderText = "Descrição" DataField="descricao" />
    <asp:TemplateField HeaderText="Imagem">
    <ItemTemplate>
    <asp:Image ID="Image1" runat="server" 
            ImageUrl='<%# "ImagemHandler.ashx?ImgID="+ Eval("id") %>' Height="45px" 
            Width="52px"/>
    </ItemTemplate>
    </asp:TemplateField>
        <asp:ButtonField CommandName="comando" Text="Button" />

    </Columns>
    <HeaderStyle BackColor="#7779AF" ForeColor="White"></HeaderStyle>
    </asp:GridView>


    </asp:Content>

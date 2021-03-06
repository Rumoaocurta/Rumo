﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConfirmarPublicacao.aspx.cs" Inherits="WebApplication2.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label ID="Label1" runat="server" Text="Imagens Recebidas"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" DataKeyNames="id">
        <Columns>

        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />

            <asp:BoundField HeaderText = "descricao" DataField="descricao" SortExpression="descricao" />
            <asp:BoundField HeaderText = "Usuario" DataField="usuario" />
            <asp:TemplateField HeaderText="Foto">
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
    <br />
    <asp:Label ID="Label2" runat="server" Text="Vídeos Recebidos"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand" DataKeyNames="id">
        <Columns>

        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />

            <asp:BoundField HeaderText = "descricao" DataField="descricao" SortExpression="descricao" />
            <asp:BoundField HeaderText = "Usuario" DataField="usuario" />
            <asp:TemplateField HeaderText="Vídeo">
            <ItemTemplate>
            <video width="200" height="160" controls>
  <source src='<%# "video.ashx?VidID="+ Eval("id")%>' type="video/mp4"/>
</video>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField CommandName="Postar" Text="Postar" />
            <asp:ButtonField CommandName="Excluir" Text="Excluir" />
        </Columns>
    </asp:GridView>
    <br />

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/ADMHome.aspx">Voltar</asp:HyperLink>


    <br/>

    

    </asp:Content>

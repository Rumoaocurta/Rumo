<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PubsUsuario.aspx.cs" Inherits="WebApplication2.JoeUser.PubsUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Estas são as publicações que você postou!</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Imagens Enviadas"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" DataKeyNames="id">
        <Columns>

        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />

            <asp:BoundField HeaderText = "descricao" DataField="descricao" SortExpression="descricao" />
            <asp:BoundField HeaderText = "Usuario" DataField="usuario" />
            <asp:TemplateField HeaderText="Foto">
            <ItemTemplate>
            <asp:Image ID="Image1" runat="server" 
                    ImageUrl='<%# "~/ImagemHandler.ashx?ImgID="+ Eval("id") %>' Height="45px" 
                    Width="52px"/>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField CommandName="Editar" Text="Editar" />
            <asp:ButtonField CommandName="Excluir" Text="Excluir" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Vídeos Enviados"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand" DataKeyNames="id">
        <Columns>

        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />

            <asp:BoundField HeaderText = "descricao" DataField="descricao" SortExpression="descricao" />
            <asp:BoundField HeaderText = "Usuario" DataField="usuario" />
            <asp:TemplateField HeaderText="Vídeo">
            <ItemTemplate>
            <video width="200" height="160" controls>
  <source src='<%# "../VideoHandler.ashx?VidID="+ Eval("id")%>' type="video/mp4"/>
</video>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField CommandName="Editar" Text="Editar" />
            <asp:ButtonField CommandName="Excluir" Text="Excluir" />
        </Columns>
    </asp:GridView></p>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/JoeUser/HomeUsuario.aspx">Voltar</asp:HyperLink>

</asp:Content>

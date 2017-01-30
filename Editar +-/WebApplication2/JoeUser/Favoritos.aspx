<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="WebApplication2.Favoritos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Essas são suas publicações favoritas"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="gdvImagens" CssClass="Gridview" runat="server" AutoGenerateColumns="False"
    HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" Height="350px" 
        Width="500px" DataKeyNames="id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
    <Columns>

        <asp:BoundField DataField="id" HeaderText="Id" />

    <asp:BoundField HeaderText = "Descrição" DataField="descricao" />
    <asp:TemplateField HeaderText="Imagem">
    <ItemTemplate>
    <asp:Image ID="Image1" runat="server" 
            ImageUrl='<%# "imagemfav.ashx?ImgID="+ Eval("id") %>' Height="45px" 
            Width="52px"/>
    </ItemTemplate>
    </asp:TemplateField>
        <asp:ButtonField CommandName="Curtir" Text="Curtir" />

        <asp:ButtonField CommandName="Comentarios" Text="Comentários" />

    </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True"></HeaderStyle>
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/JoeUser/HomeUsuario.aspx">Voltar</asp:HyperLink>
</asp:Content>

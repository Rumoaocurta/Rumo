<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 301px;
        }
        .auto-style10 {
            height: 33px;
        }
        .auto-style11 {
            width: 276px;
            height: 33px;
        }
        .auto-style13 {
            width: 276px;
        }
        .auto-style15 {
            width: 476px;
        }
        .Gridview {
            margin-left: 0px;
        }
        .auto-style16 {
            width: 164px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
<body>

    <div>


        <table style="width: 100%;">
            <tr>
                <td class="auto-style11"></td>
                <td style ="text-align:center" class="auto-style7"> Parabens <asp:LoginName ID="LoginName1" runat="server" />
        , você está no nosso site<br/>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Administrador/ADMHome.aspx">Ir para página do Administrador</asp:HyperLink><br/>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/JoeUser/HomeUsuario.aspx">Ir para página do usuário</asp:HyperLink><br/>

            <br/>

                    <br/>
        
        Caso deseje sair, clique aqui: <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <table>
    <tr><td class="auto-style16"> &nbsp;</td>
    <td class="auto-style15"> &nbsp;</td>
    </tr><tr><td class="auto-style16">&nbsp;</td>
    <td class="auto-style15"> 
       
        <asp:GridView ID="gdvImagens" CssClass="Gridview" runat="server" AutoGenerateColumns="False"
    HeaderStyle-BackColor="#7779AF" HeaderStyle-ForeColor="white" Height="350px" 
        Width="500px" OnRowCommand="gdvImagens_RowCommand" DataKeyNames="id">
    <Columns>
    <asp:BoundField HeaderText = "Descrição" DataField="descricao" />
    <asp:TemplateField HeaderText="Imagem">
    <ItemTemplate>
    <asp:Image ID="Image1" runat="server" 
            ImageUrl='<%# "ImagemHandler.ashx?ImgID="+ Eval("id") %>' Height="45px" 
            Width="52px"/>
    </ItemTemplate>
    </asp:TemplateField>
        <asp:ButtonField CommandName="curti" Text="Curtir" />

        <asp:BoundField DataField="id" Visible="False" />

    </Columns>
    <HeaderStyle BackColor="#7779AF" ForeColor="White"></HeaderStyle>
    </asp:GridView>


                </td>
    </tr><tr><td class="auto-style16">
    </td>
    <td class="auto-style15">&nbsp;</td>
    </tr>
    </table>
    </div>

        <br />
       

</body>
</html>
</asp:Content>

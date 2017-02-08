<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebFormLoginCreate.aspx.cs" Inherits="WebApplication2.AcessoPublico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 473px;
        }
        .auto-style4 {
            width: 10px;
        }
        .auto-style5 {
            width: 207px;
        }
        .auto-style6 {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <title></title>
</head>
<body>

    <div>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/WebFormMenu.aspx" OnCreatedUser="CreateUserWizard1_CreatedUser" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Width="803px">
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <table style="font-family:Verdana;font-size:100%;width:819px;">
                            
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="color:White;background-color:#000;font-weight:bold;">
                                            Crie já sua nova conta:</td>
                                        <tr>
                                            <td class="auto-style4">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nome:</asp:Label>
                                            </td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Senha:</asp:Label>
                                            </td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4">
                                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirmar senha:</asp:Label>
                                            </td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4">
                                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                            </td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4">
                                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Pergunta de segurança:</asp:Label>
                                            </td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4">
                                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Resposta de segurança:</asp:Label>
                                            </td>
                                            <td class="auto-style6">
                                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="A Senha e a Senha de Confirmação devem corresponder." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="color:Red;">
                                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        </caption>
                                    </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle BorderWidth="0px" />
        </asp:CreateUserWizard>
    </div>
    
</body>
</html>
</asp:Content>
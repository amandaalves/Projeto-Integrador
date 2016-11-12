<%@ Page Title="Cadastro | Improve" Language="C#" MasterPageFile="~/Acesso Público/MasterPagePublica.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Projeto_Integrador.Acesso_Público.Cadastro1" Theme="css" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="page-breadcrumb">
            <div class="vertical-center sun">
                <div class="container">
                    <div class="row">
                        <div class="action">
                            <div class="col-sm-12">
                                <h1 class="title">Cadastrar</h1>
                                <p>Seja bem-vindo!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="col-md-12">
            <div class="formulario col-md-4 col-md-offset-4 col-sm-10 col-sm-offset-1">
                <div class="contact-form bottom">
                    <asp:CreateUserWizard ID="CreateUserWizard1" name="contact-form" runat="server" Width="100%" ContinueDestinationPageUrl="~/Home.aspx">
                        <WizardSteps>
                            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                                <ContentTemplate>
                                    <div class="form-group">
                                        <asp:TextBox ID="UserName" type="username" runat="server" class="form-control" required="required" placeholder="Nome de usuário"></asp:TextBox>
                                        <!-- <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator> -->
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="Email" type="email" runat="server" class="form-control" required="required" placeholder="Email"></asp:TextBox>
                                        <!-- <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator> -->
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="Password" type="password" runat="server" TextMode="Password" class="form-control" required="required" placeholder="Senha"></asp:TextBox>
                                        <!-- <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator> -->
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="ConfirmPassword" type="password" runat="server" TextMode="Password" class="form-control" required="required" placeholder="Confirmar senha"></asp:TextBox>
                                        <!-- <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator> -->
                                    </div>
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </ContentTemplate>
                                <CustomNavigationTemplate>
                                    <div class="form-group">
                                        <asp:Button ID="StepNextButton" name="submit" class="btn btn-submit" runat="server" CommandName="MoveNext" Text="CADASTRAR" ValidationGroup="CreateUserWizard1" />
                                    </div>
                                </CustomNavigationTemplate>
                            </asp:CreateUserWizardStep>
                            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" OnActivate="CompleteWizardStep1_Activate"></asp:CompleteWizardStep>
                        </WizardSteps>
                    </asp:CreateUserWizard>
                </div>
            </div>
        </div>

        <div class="padding"></div>
</asp:Content>

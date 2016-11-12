<%@ Page Title="Entrar | Improve" Language="C#" MasterPageFile="~/Acesso Público/MasterPagePublica.Master" AutoEventWireup="true" CodeBehind="Entrar.aspx.cs" Inherits="Projeto_Integrador.Acesso_Público.Entrar1" Theme="css" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="page-breadcrumb">
        <div class="vertical-center sun">
            <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title">Entrar</h1>
                            <p>Bem-vindo de volta!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="shortcodes">
        <div class="container">
            <div class="formularioaviso col-md-12" style="display: none">
                <div class="col-md-4 col-md-offset-4 col-sm-12 alert alert-info fade in">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4>Email e/ou senha inválidos</h4>
                    <p>Parece que há um erro! Por favor, tente novamente.</p>
                </div>
            </div>
            <div class="col-md-12">
                <div class="formulario col-md-4 col-md-offset-4 col-sm-12">
                    <div class="contact-form bottom">
                        <asp:Login ID="Login1" name="contact-form" runat="server" Width="100%" DestinationPageUrl="~/Home.aspx">
                            <LayoutTemplate>
                                <div class="form-group">
                                    <asp:TextBox ID="UserName" runat="server" type="username" class="form-control" required="required" placeholder="Nome de usuário"></asp:TextBox>
                                    <!-- <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator> -->
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" type="password" class="form-control" required="required" placeholder="Senha"></asp:TextBox>
                                    <!-- <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator> -->
                                </div>
                                <!-- <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." /> -->
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" ValidationGroup="Login1" name="submit" class="btn btn-submit" Text="ENTRAR" />
                            </LayoutTemplate>
                        </asp:Login>
                    </div>
                </div>
            </div>

            <div class="padding"></div>

        </div>
    </section>
</asp:Content>

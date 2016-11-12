<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Config2.aspx.cs" Inherits="Projeto_Integrador.Config2" Theme="css" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="config col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1">
        <div class="edit col-sm-12 col-md-12">
            <div class="formularioaviso col-md-12">
                <div class="col-md-10 col-md-offset-1  col-sm-12 alert alert-info fade in">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4>Algo está incorreto</h4>
                    <p>Por favor, verifique seus dados e tente novamente!</p>
                </div>
            </div>
        </div>
        <div class="imgconfig2 col-sm-6 col-md-4 col-md-offset-2">
            <div class="conteudo">
                <img src="../Imagens/icon.png" width="65%" height="65%" class="img-rounded">
                <button type="button" class="btn btn-xs btn-info">FAZER UPLOAD</button>
            </div>
        </div>
        <div class="dados2 col-sm-6 col-md-4">
            <div class="conteudo">
                <div class="conteudo">
                    <form id="main-contact-form" name="contact-form" method="post" action="">
                        <h4>Nome completo</h4>
                        <div class="form-group">
                            <input type="name" class="form-control" required="required" placeholder="Fulano da Silva">
                        </div>
                        <h4>Data de nascimento:</h4>
                        <div class="form-group">
                            <input type="name" class="form-control" required="required" placeholder="Fulano da Silva">
                        </div>
                        <h4>Nome de usuário:</h4>
                        <div class="form-group">
                            <input type="username" class="form-control" required="required" placeholder="fulano123">
                        </div>
                        <h4>Email:</h4>
                        <div class="form-group">
                            <input type="email" class="form-control" required="required" placeholder="fulano@gmail.com">
                        </div>
                        <h4>Senha:</h4>
                        <div class="form-group">
                            <input type="password" class="form-control" required="required" placeholder="****">
                        </div>
                        <h4>Confirmação de senha:</h4>
                        <div class="form-group">
                            <input type="password" class="form-control" required="required" placeholder="****">
                        </div>
                    </form>
                </div>
            </div>
            <div class="edit col-sm-12 col-md-12">
                <input type="submit" name="submit" class="btn btn-submit3" value="SALVAR">
            </div>
        </div>
</asp:Content>

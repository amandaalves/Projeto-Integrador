<%@ Page Title="Configurações | Improve" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Config.aspx.cs" Inherits="Projeto_Integrador.Config" Theme="css" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="config2 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1">
        <div class="imgconfig col-sm-6 col-md-4 col-md-offset-2">
            <div class="conteudo">
                <img src="../Imagens/icon.png" width="65%" height="65%" class="img-rounded" />
            </div>
        </div>
        <div class="dados col-sm-6 col-md-4">
            <div class="conteudo">
                <h4>Nome completo:</h4>
                <h4>Data de nascimento:</h4>
                <h4>Email:</h4>
                <h4>Nome de usuário:</h4>
                <h4>Senha:</h4>
            </div>
            <input type="submit" name="submit" class="btn btn-submit2" value="EDITAR">
        </div>
    </div>
</asp:Content>

<%@ Page Title="Mochila | Improve" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Mochila.aspx.cs" Inherits="Projeto_Integrador.Mochila" Theme="css" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-12 col-md-10 col-md-offset-1" class="table table-bordered text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
					  <h1>MOCHILA</h1>
					  
		
						<div id="upload">
							<h4>UPLOAD DE ARQUIVOS</h4>
							<form action="demo_form.asp">
								  <input class="btn btn-submit3" type="file" name="pic" accept="file_extension">
								  <input class="btn btn-submit3" type="submit">
							</form>
						</div>
						<div id="seusarquivos">
							<h4>SEUS ARQUIVOS</h4>
						</div>	
				</div>
</asp:Content>

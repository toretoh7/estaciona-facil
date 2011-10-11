﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_CLIENTES_CONVENIO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">ID_Cliente_Convenio</div>
        <div class="display-field"><%: Model.ID_Cliente_Convenio %></div>
        
        <div class="display-label">ID_Veiculo</div>
        <div class="display-field"><%: Model.ID_Veiculo %></div>
        
        <div class="display-label">Nome_Cliente_Convenio</div>
        <div class="display-field"><%: Model.Nome_Cliente_Convenio %></div>
        
        <div class="display-label">CPF_Cliente_Convenio</div>
        <div class="display-field"><%: Model.CPF_Cliente_Convenio %></div>
        
        <div class="display-label">RG_Cliente_Convenio</div>
        <div class="display-field"><%: Model.RG_Cliente_Convenio %></div>
        
        <div class="display-label">Endereco_Cliente_Convenio</div>
        <div class="display-field"><%: Model.Endereco_Cliente_Convenio %></div>
        
        <div class="display-label">Numero_Cliente_Convenio</div>
        <div class="display-field"><%: Model.Numero_Cliente_Convenio %></div>
        
        <div class="display-label">Bairro_Cliente_Convenio</div>
        <div class="display-field"><%: Model.Bairro_Cliente_Convenio %></div>
        
        <div class="display-label">Cidade_Cliente_Convenio</div>
        <div class="display-field"><%: Model.Cidade_Cliente_Convenio %></div>
        
        <div class="display-label">Estado_Cliente_Convenio</div>
        <div class="display-field"><%: Model.Estado_Cliente_Convenio %></div>
        
        <div class="display-label">Telefone</div>
        <div class="display-field"><%: Model.Telefone %></div>
        
        <div class="display-label">Celular</div>
        <div class="display-field"><%: Model.Celular %></div>
        
        <div class="display-label">Email</div>
        <div class="display-field"><%: Model.Email %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID_Cliente_Convenio }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>


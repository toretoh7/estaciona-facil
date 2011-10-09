﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_CONVENIO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete</h2>

    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">ID_Convenio</div>
        <div class="display-field"><%: Model.ID_Convenio %></div>
        
        <div class="display-label">ID_Cliente_Convenio</div>
        <div class="display-field"><%: Model.ID_Cliente_Convenio %></div>
        
        <div class="display-label">Razao_Social</div>
        <div class="display-field"><%: Model.Razao_Social %></div>
        
        <div class="display-label">CNPJ</div>
        <div class="display-field"><%: Model.CNPJ %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_VEICULO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete</h2>

    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">ID_Veiculo</div>
        <div class="display-field"><%: Model.ID_Veiculo %></div>
        
        <div class="display-label">Placa_Veiculo</div>
        <div class="display-field"><%: Model.Placa_Veiculo %></div>
        
        <div class="display-label">Marca_Veiculo</div>
        <div class="display-field"><%: Model.Marca_Veiculo %></div>
        
        <div class="display-label">Cor_Veiculo</div>
        <div class="display-field"><%: Model.Cor_Veiculo %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</asp:Content>


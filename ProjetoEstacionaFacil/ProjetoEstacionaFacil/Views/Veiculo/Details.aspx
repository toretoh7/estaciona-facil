<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_VEICULO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

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
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID_Veiculo }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>


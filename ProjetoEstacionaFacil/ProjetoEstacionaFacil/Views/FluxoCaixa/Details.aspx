<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_FLUXO_CAIXA>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">ID_Fluxo_Caixa</div>
        <div class="display-field"><%: Model.ID_Fluxo_Caixa %></div>
        
        <div class="display-label">ID_Clientes_Diarios</div>
        <div class="display-field"><%: Model.ID_Clientes_Diarios %></div>
        
        <div class="display-label">Valor</div>
        <div class="display-field"><%: String.Format("{0:F}", Model.Valor) %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID_Fluxo_Caixa }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>


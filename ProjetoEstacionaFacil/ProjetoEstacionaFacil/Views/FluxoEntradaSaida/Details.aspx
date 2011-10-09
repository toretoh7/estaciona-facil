<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_FLUXO_ENTRADA_SAIDA>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">ID_Fluxo_E_S</div>
        <div class="display-field"><%: Model.ID_Fluxo_E_S %></div>
        
        <div class="display-label">ID_Cliente_Convenio</div>
        <div class="display-field"><%: Model.ID_Cliente_Convenio %></div>
        
        <div class="display-label">ID_Clientes_Diarios</div>
        <div class="display-field"><%: Model.ID_Clientes_Diarios %></div>
        
        <div class="display-label">ID_Fluxo_Caixa</div>
        <div class="display-field"><%: Model.ID_Fluxo_Caixa %></div>
        
        <div class="display-label">Hora_Entrada</div>
        <div class="display-field"><%: Model.Hora_Entrada %></div>
        
        <div class="display-label">Hora_Saida</div>
        <div class="display-field"><%: Model.Hora_Saida %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID_Fluxo_E_S }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>


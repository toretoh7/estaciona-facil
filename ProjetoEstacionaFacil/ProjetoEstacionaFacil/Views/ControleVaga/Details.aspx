<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_CONTROLE_VAGA>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">ID_Vagas</div>
        <div class="display-field"><%: Model.ID_Vagas %></div>
        
        <div class="display-label">ID_Veiculo</div>
        <div class="display-field"><%: Model.ID_Veiculo %></div>
        
        <div class="display-label">ID_Clientes_Diarios</div>
        <div class="display-field"><%: Model.ID_Clientes_Diarios %></div>
        
        <div class="display-label">ID_Cliente_Convenio</div>
        <div class="display-field"><%: Model.ID_Cliente_Convenio %></div>
        
        <div class="display-label">Vaga</div>
        <div class="display-field"><%: Model.Vaga %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID_Vagas }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>


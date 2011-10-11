<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_CLIENTES_DIARIO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">ID_Clientes_Diarios</div>
        <div class="display-field"><%: Model.ID_Clientes_Diarios %></div>
        
        <div class="display-label">ID_Veiculo</div>
        <div class="display-field"><%: Model.ID_Veiculo %></div>
        
        <div class="display-label">Nome_Cliente_Diario</div>
        <div class="display-field"><%: Model.Nome_Cliente_Diario %></div>
        
        <div class="display-label">Telefone</div>
        <div class="display-field"><%: Model.Telefone %></div>
        
        <div class="display-label">Celular</div>
        <div class="display-field"><%: Model.Celular %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID_Clientes_Diarios }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>


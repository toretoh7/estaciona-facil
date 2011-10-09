<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_CONVENIO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

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
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.ID_Convenio }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>


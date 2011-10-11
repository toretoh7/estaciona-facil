<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_CLIENTES_DIARIO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ID_Clientes_Diarios) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID_Clientes_Diarios) %>
                <%: Html.ValidationMessageFor(model => model.ID_Clientes_Diarios) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ID_Veiculo) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID_Veiculo) %>
                <%: Html.ValidationMessageFor(model => model.ID_Veiculo) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nome_Cliente_Diario) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nome_Cliente_Diario) %>
                <%: Html.ValidationMessageFor(model => model.Nome_Cliente_Diario) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Telefone) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Telefone) %>
                <%: Html.ValidationMessageFor(model => model.Telefone) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Celular) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Celular) %>
                <%: Html.ValidationMessageFor(model => model.Celular) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>


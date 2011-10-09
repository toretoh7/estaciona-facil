<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_CONVENIO>" %>

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
                <%: Html.LabelFor(model => model.ID_Convenio) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID_Convenio) %>
                <%: Html.ValidationMessageFor(model => model.ID_Convenio) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ID_Cliente_Convenio) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID_Cliente_Convenio) %>
                <%: Html.ValidationMessageFor(model => model.ID_Cliente_Convenio) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Razao_Social) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Razao_Social) %>
                <%: Html.ValidationMessageFor(model => model.Razao_Social) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CNPJ) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.CNPJ) %>
                <%: Html.ValidationMessageFor(model => model.CNPJ) %>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_VEICULO>" %>

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
                <%: Html.LabelFor(model => model.ID_Veiculo) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID_Veiculo) %>
                <%: Html.ValidationMessageFor(model => model.ID_Veiculo) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Placa_Veiculo) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Placa_Veiculo) %>
                <%: Html.ValidationMessageFor(model => model.Placa_Veiculo) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Marca_Veiculo) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Marca_Veiculo) %>
                <%: Html.ValidationMessageFor(model => model.Marca_Veiculo) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Cor_Veiculo) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Cor_Veiculo) %>
                <%: Html.ValidationMessageFor(model => model.Cor_Veiculo) %>
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


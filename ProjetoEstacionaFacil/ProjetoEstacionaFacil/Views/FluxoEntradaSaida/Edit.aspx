<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProjetoEstacionaFacil.Models.TB_FLUXO_ENTRADA_SAIDA>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ID_Fluxo_E_S) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID_Fluxo_E_S) %>
                <%: Html.ValidationMessageFor(model => model.ID_Fluxo_E_S) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ID_Cliente_Convenio) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID_Cliente_Convenio) %>
                <%: Html.ValidationMessageFor(model => model.ID_Cliente_Convenio) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ID_Clientes_Diarios) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID_Clientes_Diarios) %>
                <%: Html.ValidationMessageFor(model => model.ID_Clientes_Diarios) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ID_Fluxo_Caixa) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ID_Fluxo_Caixa) %>
                <%: Html.ValidationMessageFor(model => model.ID_Fluxo_Caixa) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Hora_Entrada) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Hora_Entrada) %>
                <%: Html.ValidationMessageFor(model => model.Hora_Entrada) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Hora_Saida) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Hora_Saida) %>
                <%: Html.ValidationMessageFor(model => model.Hora_Saida) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>


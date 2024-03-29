﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ProjetoEstacionaFacil.Models.TB_FLUXO_CAIXA>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID_Fluxo_Caixa
            </th>
            <th>
                ID_Clientes_Diarios
            </th>
            <th>
                Valor
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.ID_Fluxo_Caixa }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.ID_Fluxo_Caixa })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.ID_Fluxo_Caixa })%>
            </td>
            <td>
                <%: item.ID_Fluxo_Caixa %>
            </td>
            <td>
                <%: item.ID_Clientes_Diarios %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.Valor) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>


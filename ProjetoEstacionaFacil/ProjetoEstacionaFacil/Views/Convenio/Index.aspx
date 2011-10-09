<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ProjetoEstacionaFacil.Models.TB_CONVENIO>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID_Convenio
            </th>
            <th>
                ID_Cliente_Convenio
            </th>
            <th>
                Razao_Social
            </th>
            <th>
                CNPJ
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.ID_Convenio }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.ID_Convenio })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.ID_Convenio })%>
            </td>
            <td>
                <%: item.ID_Convenio %>
            </td>
            <td>
                <%: item.ID_Cliente_Convenio %>
            </td>
            <td>
                <%: item.Razao_Social %>
            </td>
            <td>
                <%: item.CNPJ %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>


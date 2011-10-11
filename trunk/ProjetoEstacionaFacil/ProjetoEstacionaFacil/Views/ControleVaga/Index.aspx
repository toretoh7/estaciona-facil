<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ProjetoEstacionaFacil.Models.TB_CONTROLE_VAGA>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID_Vagas
            </th>
            <th>
                ID_Veiculo
            </th>
            <th>
                ID_Clientes_Diarios
            </th>
            <th>
                ID_Cliente_Convenio
            </th>
            <th>
                Vaga
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.ID_Vagas }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.ID_Vagas })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.ID_Vagas })%>
            </td>
            <td>
                <%: item.ID_Vagas %>
            </td>
            <td>
                <%: item.ID_Veiculo %>
            </td>
            <td>
                <%: item.ID_Clientes_Diarios %>
            </td>
            <td>
                <%: item.ID_Cliente_Convenio %>
            </td>
            <td>
                <%: item.Vaga %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>


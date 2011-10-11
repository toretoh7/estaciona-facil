<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ProjetoEstacionaFacil.Models.TB_CLIENTES_DIARIO>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID_Clientes_Diarios
            </th>
            <th>
                ID_Veiculo
            </th>
            <th>
                Nome_Cliente_Diario
            </th>
            <th>
                Telefone
            </th>
            <th>
                Celular
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.ID_Clientes_Diarios }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.ID_Clientes_Diarios })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.ID_Clientes_Diarios })%>
            </td>
            <td>
                <%: item.ID_Clientes_Diarios %>
            </td>
            <td>
                <%: item.ID_Veiculo %>
            </td>
            <td>
                <%: item.Nome_Cliente_Diario %>
            </td>
            <td>
                <%: item.Telefone %>
            </td>
            <td>
                <%: item.Celular %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>


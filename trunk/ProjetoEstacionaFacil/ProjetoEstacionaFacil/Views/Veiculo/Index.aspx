<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ProjetoEstacionaFacil.Models.TB_VEICULO>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID_Veiculo
            </th>
            <th>
                Placa_Veiculo
            </th>
            <th>
                Marca_Veiculo
            </th>
            <th>
                Cor_Veiculo
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.ID_Veiculo }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.ID_Veiculo })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.ID_Veiculo })%>
            </td>
            <td>
                <%: item.ID_Veiculo %>
            </td>
            <td>
                <%: item.Placa_Veiculo %>
            </td>
            <td>
                <%: item.Marca_Veiculo %>
            </td>
            <td>
                <%: item.Cor_Veiculo %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>


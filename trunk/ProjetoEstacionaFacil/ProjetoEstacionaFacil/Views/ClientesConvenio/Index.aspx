<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ProjetoEstacionaFacil.Models.TB_CLIENTES_CONVENIO>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID_Cliente_Convenio
            </th>
            <th>
                ID_Veiculo
            </th>
            <th>
                Nome_Cliente_Convenio
            </th>
            <th>
                CPF_Cliente_Convenio
            </th>
            <th>
                RG_Cliente_Convenio
            </th>
            <th>
                Endereco_Cliente_Convenio
            </th>
            <th>
                Numero_Cliente_Convenio
            </th>
            <th>
                Bairro_Cliente_Convenio
            </th>
            <th>
                Cidade_Cliente_Convenio
            </th>
            <th>
                Estado_Cliente_Convenio
            </th>
            <th>
                Telefone
            </th>
            <th>
                Celular
            </th>
            <th>
                Email
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.ID_Cliente_Convenio }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.ID_Cliente_Convenio })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.ID_Cliente_Convenio })%>
            </td>
            <td>
                <%: item.ID_Cliente_Convenio %>
            </td>
            <td>
                <%: item.ID_Veiculo %>
            </td>
            <td>
                <%: item.Nome_Cliente_Convenio %>
            </td>
            <td>
                <%: item.CPF_Cliente_Convenio %>
            </td>
            <td>
                <%: item.RG_Cliente_Convenio %>
            </td>
            <td>
                <%: item.Endereco_Cliente_Convenio %>
            </td>
            <td>
                <%: item.Numero_Cliente_Convenio %>
            </td>
            <td>
                <%: item.Bairro_Cliente_Convenio %>
            </td>
            <td>
                <%: item.Cidade_Cliente_Convenio %>
            </td>
            <td>
                <%: item.Estado_Cliente_Convenio %>
            </td>
            <td>
                <%: item.Telefone %>
            </td>
            <td>
                <%: item.Celular %>
            </td>
            <td>
                <%: item.Email %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>


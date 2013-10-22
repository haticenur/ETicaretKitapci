<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Panel.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Client.Admin.Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Kategoriler</h3>
    <table cellpadding="0" cellspacing="0">

        <asp:Repeater ID="rptCategories" OnItemCommand="rptCategories_ItemCommand" runat="server">
            <ItemTemplate>

                <tr class="odd">
                    <td><%# Eval("Name") %></td>
                    <td class="action"><a class="edit" href="CategoryForm.aspx?catId=<%# Eval("Id") %>">Düzenle</a></td>
                    <td> <asp:LinkButton ID="lnkDelete" CommandArgument='<%# Eval("Id") %>' runat="server">Sil</asp:LinkButton></td>
                   
                </tr>



            </ItemTemplate>
        </asp:Repeater>

    </table>

</asp:Content>

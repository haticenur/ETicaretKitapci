<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Panel.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Client.Admin.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Ürünler</h3>

    <table>
        <asp:Repeater ID="rptProducts" OnItemCommand="rptProducts_ItemCommand" runat="server">
            <ItemTemplate>
                <tr class="odd">
                    <td><%# Eval("Category.Name") %></td>
                    <td><%# Eval("Name") %></td>
                    <td><%# Eval("Price") %></td>
                    <td><a class="action" href="Products.aspx?productId=<%# Eval("Id") %>">Düzenle</a></td>
                    <td>
                        <asp:LinkButton ID="lnkDelete" CommandArgument='<%# Eval("Id") %>' runat="server">Sil</asp:LinkButton></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

</asp:Content>

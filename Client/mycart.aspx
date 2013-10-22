<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="mycart.aspx.cs" Inherits="Client.mycart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="feat_prod_box_details">

        <table class="cart_table">
            <tr class="cart_title">
                <td>Resim</td>
                <td>Kitap Adı</td>
                <td>Adet</td>
                <td>Fiyat</td>
                <td>Toplam</td>
            </tr>

            <asp:Repeater ID="rptCart" runat="server" OnItemCommand="rptCart_ItemCommand">
                <ItemTemplate>
                    <tr>
                        <td><a href="details.html">
                            <img src="ProductImages/<%# Eval("Image") %>" width="98px" alt="" title="" border="0" class="cart_thumb" /></a></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Quantity") %></td>
                        <td><%# Eval("Price") %></td>
                        <td><%# Total(Eval("Price").ToString(),Eval("Quantity").ToString()) %></td>
                        <td>
                            <asp:LinkButton ID="lnkDelete" CommandArgument='<%# Eval("Id") %>' runat="server">Sil</asp:LinkButton></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>



            <tr>
                <td colspan="4" class="cart_total"><span class="red">TOTAL:</span></td>
                <td>
                    <asp:Literal ID="ltrTotal" runat="server"></asp:Literal></td>
            </tr>
         

        </table>
        
       <p style="padding-left:350px"><asp:Button  ID="btnSave" OnClick="btnSave_Click" runat="server" Text="Sat&#305;n Al" /></p> 




    </div>

</asp:Content>

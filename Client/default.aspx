<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Client._default" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="title">
        <span class="title_icon">
            <img src="images/bullet1.gif" alt="" title=""></span>Kitaplar
    </div>

    <asp:Repeater ID="rptProducts" runat="server">
        <ItemTemplate>
            <div class="feat_prod_box">
                <div class="prod_img">
                    <a href="#">
                        <img src="ProductImages/<%# Eval("Image") %>" width="98" alt="" title="" border="0"></a>
                </div>
                <div class="prod_det_box">
                    <div class="box_top"></div>
                    <div class="box_center">
                        <div class="prod_title"><%# Eval("Name") %></div>
                        <div class="detail.aspx?productId=<%# Eval("Id") %>" style="padding-left: 20px;">
                            <h4>Fiyat:   <%# Eval("Price","{0:0.00}") %> TL</h4>
                            <h4>Stok:   <%# Eval("Stock") %></h4>
                        </div>
                        <a href="detail.aspx?productId=<%# Eval("Id") %>" class="more">Detay</a>
                        <div class="clear"></div>
                    </div>

                    <div class="box_bottom"></div>
                </div>
                <div class="clear"></div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

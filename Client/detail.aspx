<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="Client.detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="crumb_nav">
        <a href="index.html">home</a> &gt;&gt; product name
           
    </div>
    <div class="title">
        <span class="title_icon">
             <img src="images/bullet1.gif" alt="" title="" /></span><%= product.Name %>
    </div>

    <div class="feat_prod_box_details">

        <div class="prod_img">
           
                <img src="ProductImages/<%= product.Image %>" width="98px" alt="" title="" border="0" />
            <br />
            <br />
            <a href="ProductImages/<%= product.Image %>" rel="lightbox">
                <img src="images/zoom.gif" alt="" title="" border="0" /></a>
        </div>

        <div class="prod_det_box">
            <div class="box_top"></div>
            <div class="box_center">
                <div class="prod_title">Detaylar</div>
                <div class="price">
                    <strong>Stok:</strong><span class="red"><%= product.Stock%></span>


                </div>
                <div class="price"><strong>Fiyat:</strong> <span class="red"><%= String.Format("{0:0.00}",product.Price) %> TL</span></div>
                                                                            
                                                                                 
                <div class="price">
                    <asp:DropDownList ID="ddlQuantity" runat="server">
                   <asp:ListItem Value="1" Text="1"></asp:ListItem>
                    <asp:ListItem Value="2" Text="2"></asp:ListItem>
                    <asp:ListItem Value="3" Text="3"></asp:ListItem>
                    <asp:ListItem Value="4" Text="4"></asp:ListItem>
                    <asp:ListItem Value="5" Text="5"></asp:ListItem>
                </asp:DropDownList>
                </div>
                

                <asp:Button ID="btnAddCart" OnClick="btnAddCart_Click" CssClass="more" runat="server" Text="Sepete Ekle" />
                <div class="clear"></div>
            </div>

            <div class="box_bottom"></div>
        </div>
        <div class="clear"></div>
    </div>


    <div id="demo" class="demolayout">
    </div>



    <div class="clear"></div>

    <!--end of left content-->
</asp:Content>

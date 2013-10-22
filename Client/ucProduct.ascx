<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucProduct.ascx.cs" Inherits="Client.ucProduct" %>

<div class="feat_prod_box">
                <div class="prod_img">
                    <a href="#">
                        <img src="ProductImages/<%= ImageUrl %>" width="98" alt="" title="" border="0"></a>
                </div>
                <div class="prod_det_box">
                    <div class="box_top"></div>
                    <div class="box_center">
                        <div class="prod_title"><%= Name %></div>
                        <div class="detail.aspx?productId=<%= productId %>" style="padding-left: 20px;">
                            <h4>Fiyat: <%= Price %> TL</h4>
                            <h4>Stok:   <%= Stock %></h4>
                        </div>
                        <a href="detail.aspx?productId=<%= productId %>" class="more">Detay</a>
                        <div class="clear"></div>
                    </div>

                    <div class="box_bottom"></div>
                </div>
                <div class="clear"></div>
            </div>

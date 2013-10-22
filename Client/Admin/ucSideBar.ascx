<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSideBar.ascx.cs" Inherits="Client.Admin.ucSideBar" %>

<% if (Client.Models.Helper.Sayfalar[0] == "Kategoriler")
   {%>
<li><a href="CategoryForm.aspx">Kategori Ekle</a></li>
<li><a href="Categories.aspx">Tüm Kategoriler</a></li>
<%} %>

<% if (Client.Models.Helper.Sayfalar[0] == "Ürünler")
   {%>
<li><a href="ProductForm.aspx">Ürün Ekle</a></li>
<li><a href="Products.aspx">Tüm Ürünler</a></li>

<% }%>

<% if (Client.Models.Helper.Sayfalar[0] == "Siparişler")
   {%>
<li><a href="#">Sipariş Ekle</a></li>
<li><a href="#">Tüm Siparişler</a></li>

<% }%>

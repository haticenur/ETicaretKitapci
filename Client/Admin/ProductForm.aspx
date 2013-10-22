<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Panel.Master" AutoEventWireup="true" CodeBehind="ProductForm.aspx.cs" Inherits="Client.Admin.ProductForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <fieldset>
        <p><label>Kategori:</label>
            <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList>
        </p>
        <p><label>Ürün Adı:</label>
            <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        </p>
        <p><label>Stok:</label>
            <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
        </p>
        <p><label>Fiyat:</label>
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        </p>
        <p><label>Resim:</label>
            <asp:FileUpload ID="fl" runat="server" />
        </p>
        <p><label>
            <asp:Literal ID="ltrError" runat="server"></asp:Literal></label>
            <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" Text="Kaydet" />
        </p>

    </fieldset>

</asp:Content>

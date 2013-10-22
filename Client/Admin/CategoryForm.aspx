<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Panel.Master" AutoEventWireup="true" CodeBehind="CategoryForm.aspx.cs" Inherits="Client.Admin.CategoryForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <fieldset>
        <p>
            <label>Kategori Adı:</label>
            <asp:TextBox ID="txtCategoryName" CssClass="text-medium" runat="server"></asp:TextBox>
        </p>
           <p>
            <label>
                <asp:Literal ID="ltrError" runat="server"></asp:Literal></label>
               <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" Text="Kaydet" />
        </p>
    </fieldset>

</asp:Content>

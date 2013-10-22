<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Panel.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Client.Admin.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <p><label>Kullanıcı Adı:</label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </p>
         <p><label>Şifre:</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        </p>
         <p><label>
             <asp:Literal ID="ltrError" runat="server"></asp:Literal></label>
             <asp:Button ID="btnLogin"  OnClick="btnLogin_Click" runat="server" Text="Giriş" />
        </p>
    </fieldset>

</asp:Content>

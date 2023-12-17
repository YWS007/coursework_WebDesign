<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="testAdminLogin.aspx.cs" Inherits="Assignment.ADMIN.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title></title>
 <style type="text/css">
     .auto-style1 {
         width: 100%;
     }
     .auto-style2 {
         width: 227px;
     }
     .auto-style3 {
         width: 1018px;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Login Page" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
<p>
    &nbsp;</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ADMIN/testAdminRegistration.aspx">Not yet Registered?</asp:HyperLink>
<table class="auto-style1">
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="errorMsg" runat="server" Text="errMsg" EnableTheming="True" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" Text="Sign in" OnClick="Button1_Click" />
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminRegistration.aspx.cs" Inherits="Assignment.ADMIN.adminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .auto-style4 {
        width: 168px;
    }
    .auto-style3 {
        width: 556px;
    }
    .auto-style6 {
        width: 168px;
        height: 42px;
    }
    .auto-style7 {
        width: 556px;
        height: 42px;
    }
    .auto-style5 {
        margin-left: 480px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
                <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Admin Registration Page"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="gender" runat="server">
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>Not to Specify</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Country:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="country" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="UserName:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="psw" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p class="auto-style5">
            <asp:Label ID="errMsg" runat="server" Text="errMsg"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
        <div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageUser.aspx.cs" Inherits="Assignment.ADMIN.manageUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 203px;
    }
    .auto-style3 {
        width: 783px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Manage Member Profile"></asp:Label>
        <p>
            <asp:Label ID="svfName" runat="server" Text="Label"></asp:Label>
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="UserName:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="uname" runat="server" AutoPostBack="True" OnSelectedIndexChanged="uname_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:RadioButton ID="rbFemale" runat="server" GroupName="gender" Text="Female" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbMale" runat="server" GroupName="gender" Text="Male" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Country:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="country" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Remove" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="errMsg" runat="server" Text="errMsg"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;&nbsp;</p>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminEditProfile.aspx.cs" Inherits="Assignment.ADMIN.adminEditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
    .auto-style1 {
        width: 100%;
        margin-right: 0px;
    }
    .auto-style3 {
        width: 850px;
    }
    .auto-style4 {
        width: 183px;
    }
    .auto-style5 {
        width: 183px;
        height: 50px;
    }
    .auto-style6 {
        width: 783px;
        }
    .auto-style7 {
        width: 1087px;
        height: 50px;
    }
    .auto-style8 {
        width: 1087px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
                        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="My Profile"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="uname" runat="server" Text="username"></asp:Label>
                &nbsp;&nbsp;
                </td>
                <td class="auto-style8">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CommandName="SignOut">Sign Out</asp:LinkButton>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style7">
                    &nbsp;<asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" Text="Female" />
&nbsp;&nbsp;
&nbsp;<asp:RadioButton ID="rbMale" runat="server" GroupName="Gender" Text="Male" />
&nbsp;</td>
                <td class="auto-style6" rowspan="5">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Country:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="country" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Label ID="errMsg" runat="server" Text="errMsg"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="img" runat="server" Text="img"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

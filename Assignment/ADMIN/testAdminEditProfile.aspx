<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Assignment.ADMIN.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                            <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="My Profile"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <asp:Label ID="uname" runat="server" Text="username"></asp:Label>
                &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testAdminEditProfile.aspx">Profile</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testManageUser.aspx">User</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testCourseManagement.aspx">Course</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testQuizManage.aspx">Quiz</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink7" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testQuizScoreView.aspx">View Score</asp:HyperLink>
                    &nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testFeedbackManage.aspx">Feedback</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testManageAnnouncement.aspx">News</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink8" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testManageContact.aspx">Contact Page</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink10" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testManageAboutPage.aspx">About Page</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink9" runat="server" Font-Underline="False" ForeColor="Blue" NavigateUrl="~/ADMIN/testAdminLogin.aspx">Sign Out</asp:HyperLink>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="fname" runat="server" BackColor="Transparent"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="Transparent" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="lname" runat="server" BackColor="Transparent"></asp:TextBox>
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
                    <asp:TextBox ID="country" runat="server" BackColor="Transparent"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="email" runat="server" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="pwd" runat="server" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Label ID="errMsg" runat="server" Text="errMsg" EnableTheming="True" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="img" runat="server" Text="img" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
</asp:Content>

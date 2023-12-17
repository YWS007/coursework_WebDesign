<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="Assignment.ADMIN.adminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Admin Dashboard"></asp:Label>
        <div>
        </div>
        <p>
            <asp:Label ID="uname" runat="server" Text="uname"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ADMIN/adminEditProfile.aspx">Edit Profile</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ADMIN/manageUser.aspx">Manage User</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ADMIN/courseManagement.aspx">Manage Course</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ADMIN/quizManage.aspx">Manage Quiz</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ADMIN/feedbackManage.aspx">Manage Feedback</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign out</asp:LinkButton>
        </p>
        </div>
    </form>
</body>
</html>

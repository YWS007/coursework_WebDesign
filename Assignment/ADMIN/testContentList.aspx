<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="testContentList.aspx.cs" Inherits="Assignment.ADMIN.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title></title>
 <style type="text/css">
     .auto-style1 {
        width: 100%;
    }

    .table-style {
        border-collapse: collapse;
        width: 100%;
    }

    .td-style {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    .auto-style2 {
        width: 36px;
    }

    .auto-style3 {
        width: 46px;
    }

    .auto-style4 {
        width: 265px;
    }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Content List"></asp:Label>
    <br />
<table class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td colspan="2">
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
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="courseCategory" runat="server" AutoPostBack="true" >
                <asp:ListItem>Tea</asp:ListItem>
                <asp:ListItem>Wushu</asp:ListItem>
                <asp:ListItem>Festival</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="search" runat="server" OnClick="search_Click" Text="Search" />
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="courseID" Width="60%" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" CssClass="table-style">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-primary" SelectText="Select" />
                    <asp:BoundField DataField="courseID" HeaderText="Course ID" ItemStyle-CssClass="td-style" />
                    <asp:BoundField DataField="courseName" HeaderText="Course Name" ItemStyle-CssClass="td-style" />
                </Columns>
            </asp:GridView>


        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>
</asp:Content>

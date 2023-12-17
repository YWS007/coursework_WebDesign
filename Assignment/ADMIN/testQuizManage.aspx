<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="testQuizManage.aspx.cs" Inherits="Assignment.ADMIN.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 40px;
        width: 590px;
    }
    .auto-style4 {
        height: 40px;
        width: 228px;
    }
    .auto-style6 {
        height: 40px;
    }
    .auto-style7 {
        width: 47px;
    }
    .auto-style8 {
        height: 40px;
        width: 47px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Manage Quiz"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6" colspan="2">
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
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="CourseID"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="cID" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Quiz Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="quizName" runat="server" BackColor="Transparent"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">Category</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="category" runat="server">
                            <asp:ListItem>Tea</asp:ListItem>
                            <asp:ListItem>Wushu</asp:ListItem>
                            <asp:ListItem>Festival</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">Question number</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="questionNum" runat="server" BackColor="Transparent"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="quizID" runat="server" Text="quizID" Visible="False"></asp:Label>
                    &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
                        &nbsp;
                        <asp:Button ID="edit" runat="server" Text="Edit" OnClick="edit_Click" />
                        &nbsp;
                        <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
                    &nbsp;&nbsp;
                        <asp:Button ID="manageQuestion" runat="server" OnClick="manageQuestion_Click" Text="Manage Question" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="quizID" Width="100%" AutoGenerateColumns="false">
                           <Columns>
                               <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chk" runat="server" AutoPostBack="true" OnCheckedChanged="chk_CheckedChanged" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <asp:BoundField DataField="quizID" HeaderText="Quiz ID" />
                               <asp:BoundField DataField="quizName" HeaderText="Quiz Name" />
                               <asp:BoundField DataField="quizCategory" HeaderText="Quiz Category" />
                               <asp:BoundField DataField="questionNumber" HeaderText="Question Number" />
                               <asp:BoundField DataField="contentID" HeaderText="Content ID" />
       
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>

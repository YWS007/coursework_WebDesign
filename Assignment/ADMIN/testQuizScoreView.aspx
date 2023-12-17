<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="testQuizScoreView.aspx.cs" Inherits="Assignment.ADMIN.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
<style type="text/css">
    .auto-style1 {
        width: 88%;
    }
    .auto-style2 {
        width: 45px;
    }
    .auto-style3 {
        width: 1195px;
    }
    .auto-style4 {
        width: 818px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    &nbsp;<table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="View Score"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Quiz List"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="quizID" Width="100%" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoPostBack="true">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lblSelect" runat="server" CommandName="Select" CommandArgument='<%# Eval("quizID") %>' >Select</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="quizID" HeaderText="Quiz ID" />
                        <asp:BoundField DataField="quizName" HeaderText="Quiz Name" />
                    </Columns>
                </asp:GridView>


            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Score"></asp:Label>
                </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="errMsg" runat="server" ForeColor="Red" Text="No records found!" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView2" runat="server" DataKeyNames="quiz" Width="100%" AutoGenerateColumns="false" >
                    
                    <Columns>
                       <asp:BoundField DataField="quiz" HeaderText="Quiz ID" />
                       <asp:BoundField DataField="member" HeaderText="Member ID" />
                       <asp:BoundField DataField="fname" HeaderText="First Name" />
                       <asp:BoundField DataField="lname" HeaderText="Last Name" />
                       <asp:BoundField DataField="date" HeaderText="Date" />
                       <asp:BoundField DataField="score" HeaderText="Score" />

                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>

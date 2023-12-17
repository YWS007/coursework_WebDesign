<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="testCourseManagement.aspx.cs" Inherits="Assignment.ADMIN.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 281px;
    }
    .auto-style3 {
        width: 246px;
    }
    .auto-style4 {
        width: 281px;
        height: 46px;
    }
    .auto-style5 {
        width: 246px;
        height: 46px;
    }
    .auto-style6 {
        height: 46px;
    }
    .auto-style8 {
        width: 80px;
    }
    .auto-style9 {
        width: 80px;
        height: 46px;
    }


    .table-style {
        border-collapse: collapse;
        width: 100%;
        border: 1px solid #ddd; /* Add borders to the table */
    }

    .table-style th, .table-style td {
        border: 1px solid #ddd; /* Add borders to table cells */
        padding: 8px; /* Add padding to table cells */
        text-align: left;
    }

    .table-style th {
        background-color: #f2f2f2; /* Add a background color to table header cells */
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div style="font-size:x-large" align="center">Course Info Manage Form</div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Course ID</td>
                    <td>
                        <asp:TextBox ID="courseID" runat="server" Font-Size="Medium" Width="355px" BackColor="Transparent"></asp:TextBox>
                    &nbsp;
                        <asp:Button ID="bSearch" runat="server" OnClick="bSearch_Click" Text="Search" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Course Name</td>
                    <td>
                        <asp:TextBox ID="courseName" runat="server" Font-Size="Medium" Width="346px" BackColor="Transparent"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Course Category</td>
                    <td>
                        <asp:RadioButton ID="rbTea" runat="server" GroupName="courseCategory" Text="Tea" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="rbWushu" runat="server" GroupName="courseCategory" Text="Wushu" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="rbFestival" runat="server" GroupName="courseCategory" Text="Festival" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">Instructor</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="instructor" runat="server" Font-Size="Medium" Width="446px" BackColor="Transparent"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Image</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="Transparent" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="164px" Width="249px" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="img" runat="server" Text="img" Visible="False"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="bAdd" runat="server" BackColor="#9966FF" BorderColor="#9966FF" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Add" Width="137px" />
                        &nbsp;&nbsp;
                        <asp:Button ID="bUpdate" runat="server" Text="Update" OnClick="bEdit_Click" BackColor="#66FF33" ForeColor="Black" />
                        &nbsp;&nbsp;
                        <asp:Button ID="bDelete" runat="server" Text="Delete" OnClick="bDelete_Click" BackColor="#FF3300" ForeColor="White" />
                        &nbsp;&nbsp;
                        <asp:Button ID="bReset" runat="server" OnClick="bReset_Click" Text="Reset" BackColor="#FFFF99" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Manage Content" BackColor="#3366FF" ForeColor="White" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td colspan="4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="courseID" Width="98%" AutoGenerateColumns="false" CssClass="table-style" Height="198px">
                           <Columns>
                               <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chk" runat="server" AutoPostBack="true" OnCheckedChanged="chk_CheckedChanged" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <asp:BoundField DataField="courseID" HeaderText="Course ID" />
                               <asp:BoundField DataField="courseName" HeaderText="Course Name" />
                               <asp:BoundField DataField="courseCategory" HeaderText="Course Category" />
                               <asp:BoundField DataField="instructor" HeaderText="Instructor" />
                               <asp:BoundField DataField="image" HeaderText="Image" />
                               
                            </Columns>
                        </asp:GridView>
                      

                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
</asp:Content>

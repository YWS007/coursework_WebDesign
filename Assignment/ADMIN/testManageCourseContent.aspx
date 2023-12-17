<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="testManageCourseContent.aspx.cs" Inherits="Assignment.ADMIN.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 22px;
    }
    .auto-style4 {
        width: 169px;
    }
    .auto-style8 {
        width: 882px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Course Content"></asp:Label>
            <br />
            <br />
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
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="course" runat="server" Text="course"></asp:Label>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label13" runat="server" Text="Chapter"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="chapter" runat="server" Width="220px" BackColor="Transparent"></asp:TextBox>
                    &nbsp;<asp:Label ID="ch" runat="server" Text="ch" Visible="False"></asp:Label>
                    &nbsp;
                    <asp:Label ID="cID" runat="server" Text="contentID" Visible="False"></asp:Label>
                </td>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="contentID" Width="100%" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-primary" SelectText="Select" />
                        <asp:BoundField DataField="chapter" HeaderText="Chapter" />
                        <asp:BoundField DataField="title" HeaderText="Title" />
                    </Columns>
                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Text="Title"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="title" runat="server" Width="636px" BackColor="Transparent"></asp:TextBox>
                </td>
                <td rowspan="24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label16" runat="server" Text="Subtitle 1"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="st1" runat="server" Width="636px" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Content 1"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="cont1" runat="server" Height="130px" TextMode="MultiLine" Width="548px" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Image 1"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="Transparent" />
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="142px" Width="206px" />
                    &nbsp;<asp:Label ID="img1" runat="server" Text="img" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label14" runat="server" Text="Subtitle 2"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="st2" runat="server" Width="636px" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Content 2"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="cont2" runat="server" Height="143px" TextMode="MultiLine" Width="539px" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Image 2"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload2" runat="server" BackColor="Transparent" />
                    <br />
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="130px" Width="198px" />
                    <asp:Label ID="img2" runat="server" Text="img" Visible="False"></asp:Label>
                &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label15" runat="server" Text="Subtitle 3"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="st3" runat="server" Width="636px" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Content 3"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="content3" runat="server" Height="146px" TextMode="MultiLine" Width="540px" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Image 3"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload3" runat="server" BackColor="Transparent" />
                    <br />
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="136px" Width="198px" />
                    <asp:Label ID="img3" runat="server" Text="img" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label17" runat="server" Text="Subtitle 4"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="st4" runat="server" Width="636px" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Text="Content 4"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="content4" runat="server" Height="150px" TextMode="MultiLine" Width="537px" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Text="Image 4"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload4" runat="server" BackColor="Transparent" />
                    <br />
                    <br />
                    <asp:Image ID="Image4" runat="server" Height="115px" Width="187px" />
                    <asp:Label ID="img4" runat="server" Text="img" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label12" runat="server" Text="Video link"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="video" runat="server" TextMode="MultiLine" Height="123px" Width="518px" BackColor="Transparent"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="msg" runat="server" Text="msg" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
                    &nbsp;&nbsp;
                    <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Edit" />
                    &nbsp;&nbsp;
                    <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Delete" />
                &nbsp;&nbsp;
                    <asp:Button ID="breset" runat="server" OnClick="breset_Click" Text="Reset" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
</asp:Content>

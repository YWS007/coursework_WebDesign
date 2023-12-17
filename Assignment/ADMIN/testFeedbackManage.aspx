<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="testFeedbackManage.aspx.cs" Inherits="Assignment.ADMIN.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title></title>
 <style type="text/css">
     .auto-style1 {
         width: 100%;
     }
     .auto-style2 {
         width: 42px;
     }
     .auto-style3 {
         width: 834px;
     }
 </style>

 <style>
     .action-button {
         margin-right: 10px; /* Adjust the margin value to control the spacing */
     }
     .auto-style4 {
         width: 42px;
         height: 40px;
     }
     .auto-style5 {
         width: 834px;
         height: 40px;
     }
     .auto-style6 {
         height: 40px;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Manage Feedback"></asp:Label>
         <br />
 </div>
 <table class="auto-style1">
     <tr>
         <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
             &nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style3">
             &nbsp;</td>
         <td>&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style3">
             <asp:Label ID="Label2" runat="server" Text="Pending Feedback" Font-Bold="True"></asp:Label>
         </td>
         <td>&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style3">
             &nbsp;</td>
         <td>&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td colspan="2">
             <asp:GridView ID="GridView1" runat="server" DataKeyNames="member" Width="100%" AutoGenerateColumns="false">
                 <Columns>
                     <asp:BoundField DataField="member" HeaderText="Member ID" />
                     <asp:BoundField DataField="rating" HeaderText="Rating" />
                     <asp:BoundField DataField="feedback" HeaderText="Feedback" />
                     <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" />
                     <asp:TemplateField HeaderText="Actions">
                         <ItemTemplate>
                             <asp:Button ID="btnApprove" Text="Approve" runat="server" OnClick="btnApprove_Click" CssClass="action-button" />
                             <asp:Button ID="btnReject" Text="Reject" runat="server" OnClick="btnReject_Click" CssClass="action-button" />
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
         </td>
         <td class="auto-style2">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style3">
             <asp:Label ID="msg" runat="server" Text="msg" Visible="False"></asp:Label>
         </td>
         <td>&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style4"></td>
         <td class="auto-style5"></td>
         <td class="auto-style6"></td>
         <td class="auto-style4"></td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style3">
             <asp:Label ID="Label3" runat="server" Text="Approved Feedback" Font-Bold="True"></asp:Label>
         </td>
         <td>&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style4"></td>
         <td class="auto-style6" colspan="2">
             <asp:GridView ID="GridView2" runat="server" DataKeyNames="member" Width="100%" AutoGenerateColumns="false">
                 <Columns>
                     <asp:BoundField DataField="member" HeaderText="Member ID" />
                     <asp:BoundField DataField="rating" HeaderText="Rating" />
                     <asp:BoundField DataField="feedback" HeaderText="Feedback" />
                     <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" />
                     
                 </Columns>
             </asp:GridView>
         </td>
         <td class="auto-style4"></td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style3">&nbsp;</td>
         <td>&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style3">
             <asp:Label ID="Label4" runat="server" Text="Rejected Feedback" Font-Bold="True"></asp:Label>
         </td>
         <td>&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td colspan="2">
             <asp:GridView ID="GridView3" runat="server" DataKeyNames="member" Width="100%" AutoGenerateColumns="false">
                 <Columns>
                     <asp:BoundField DataField="member" HeaderText="Member ID" />
                     <asp:BoundField DataField="rating" HeaderText="Rating" />
                     <asp:BoundField DataField="feedback" HeaderText="Feedback" />
                     <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" />
 
                 </Columns>
             </asp:GridView>
         </td>
         <td class="auto-style2">&nbsp;</td>
     </tr>
 </table>
</asp:Content>

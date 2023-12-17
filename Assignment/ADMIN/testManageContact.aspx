<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="testManageContact.aspx.cs" Inherits="Assignment.ADMIN.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 35px;
    }
    .auto-style3 {
        width: 47px;
    }
    .auto-style4 {
        width: 389px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
     <asp:Label ID="Label1" runat="server" Text="Manage Contact Page" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
 </div>
 <table class="auto-style1">
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style4">&nbsp;</td>
         <td>&nbsp;</td>
         <td class="auto-style3">&nbsp;</td>
     </tr>
     <tr>
         <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;
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
         <td class="auto-style4">
             <asp:Label ID="Label2" runat="server" Text="New Message"></asp:Label>
         </td>
         <td>
             &nbsp;</td>
         <td class="auto-style3">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td colspan="2">
             <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" Width="100%" AutoGenerateColumns="false">
                 <Columns>
                     <asp:BoundField DataField="name" HeaderText="Name" />
                     <asp:BoundField DataField="email" HeaderText="Email" />
                     <asp:BoundField DataField="message" HeaderText="Message" />
                     <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" />
                     <asp:TemplateField HeaderText="Actions">
                         <ItemTemplate>
                             <asp:Button ID="btnDone" Text="Done" runat="server" OnClick="btnDone_Click" CssClass="action-button" />
                             
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
         </td>
         <td class="auto-style3">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style4">
             <asp:Label ID="msg" runat="server" Text="msg"></asp:Label>
         </td>
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
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td class="auto-style4">
             <asp:Label ID="Label3" runat="server" Text="All Message"></asp:Label>
         </td>
         <td>&nbsp;</td>
         <td class="auto-style3">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td colspan="2">
             <asp:GridView ID="GridView2" runat="server" DataKeyNames="id" Width="100%" AutoGenerateColumns="false">
                 <Columns>
                     <asp:TemplateField>
                         <ItemTemplate>
                             <asp:CheckBox ID="chk" runat="server" AutoPostBack="true" />
                         </ItemTemplate>
                     </asp:TemplateField>
                     
                     <asp:BoundField DataField="name" HeaderText="Name" />
                     <asp:BoundField DataField="email" HeaderText="Email" />
                     <asp:BoundField DataField="message" HeaderText="Message" />
                     <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" />
                 </Columns>
             </asp:GridView>


         </td>
         <td class="auto-style3">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td colspan="2">&nbsp;</td>
         <td class="auto-style3">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style2">&nbsp;</td>
         <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="bDelete" runat="server" Text="Delete" OnClick="bDelete_Click" />
             &nbsp;&nbsp;
             <asp:Label ID="msg2" runat="server" Text="msg" Visible="False"></asp:Label>
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
 </table>
</asp:Content>

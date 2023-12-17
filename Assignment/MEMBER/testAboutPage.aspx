<%@ Page Title="" Language="C#" MasterPageFile="~/MEMBER/member.Master" AutoEventWireup="true" CodeBehind="testAboutPage.aspx.cs" Inherits="Assignment.MEMBER.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>About Page</title>
<style type="text/css">
    h1 {
        text-align: center;
        font-size: 100px;
        margin-top: 60px;
    }
    .auto-style1 {
        width: 100%;
    }
    .auto-style4 {
        width: 695px;
    }
    .auto-style5 {
        width: 90px;
    }
    .auto-style6 {
        width: 1092px;
    }
    .auto-style8 {
        margin-left: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
          <div class="row">
              <p>&nbsp;</p>
              <p>
                  <asp:Label ID="uname" runat="server" Text="uname" font-size="20px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testMemberEditProfile.aspx" font-size="20px">Edit Profile</asp:HyperLink>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testFeedback.aspx" font-size="20px">Feedback</asp:HyperLink>
                     &nbsp;&nbsp; &nbsp;&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testQuizList.aspx" font-size="20px">Quiz</asp:HyperLink>
                     &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testAboutPage.aspx" font-size="20px">About Us</asp:HyperLink>
                     &nbsp;&nbsp; &nbsp;&nbsp; <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testMemberDashboard.aspx" font-size="20px">Courses</asp:HyperLink>
                     &nbsp;&nbsp;&nbsp;
                   <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click" font-size="20px">Sign out</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink10" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testAnnouncementList.aspx" font-size="20px">News</asp:HyperLink>
               </p>
               <h1 style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">ABOUT US</h1>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
           </div>
     </div>
     <div>
        <table class="auto-style1">
             <tr>
                 <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="298px" Width="463px" CssClass="auto-style8" />
                    &nbsp;<asp:Label ID="img" runat="server" Text="img" Visible="False"></asp:Label>
                 </td>
                 <td colspan="2">
                       <asp:Label ID="content" runat="server" Text="content"></asp:Label>
                 </td>
                 <td class="auto-style5">&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style6">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td class="auto-style4">&nbsp;</td>
                  <td class="auto-style5">&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style6">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </td>
                  <td class="auto-style5">&nbsp;</td>
              </tr>
        </table>
     </div>
</asp:Content>

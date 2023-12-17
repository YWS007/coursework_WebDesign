<%@ Page Title="" Language="C#" MasterPageFile="~/MEMBER/member.Master" AutoEventWireup="true" CodeBehind="testMemberEditProfile.aspx.cs" Inherits="Assignment.MEMBER.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <titleMember Edit Profile></titleMember>
<style type="text/css">
     h1 {
        text-align: center;
        font-size: 100px;
        margin-top: 60px;
    }
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
    .auto-style9 {
         width: 433px;
    }
    .auto-style10 {
         width: 433px;
         height: 50px;
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
               <h1 style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">PROFILE EDIT</h1>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
           </div>
     </div>
     
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style4">
                &nbsp;&nbsp;
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style7">
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" Text="Female" />&nbsp;
                    <asp:RadioButton ID="rbMale" runat="server" GroupName="Gender" Text="Male" />&nbsp;
                </td>
                <td class="auto-style6" rowspan="5">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Country:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="country" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="img" runat="server" Text="img" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style4"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

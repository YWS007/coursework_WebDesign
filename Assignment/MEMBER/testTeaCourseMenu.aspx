<%@ Page Title="" Language="C#" MasterPageFile="~/MEMBER/member.Master" AutoEventWireup="true" CodeBehind="testTeaCourseMenu.aspx.cs" Inherits="Assignment.MEMBER.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Tea Course></title>
<style type="text/css">
    h1 {
        text-align: center;
        font-size: 80px;
        margin-top: 60px;
    }
    .menu-item {
        width: 25%;
        float: left;
        text-align: center;
        margin-bottom: 20px;
    }

    .menu-item:nth-child(4n+1) {
        clear: both;
    }

    .menu-image {
        width: 80%; /* Adjust the width of the image as needed */
    }

    .menu-item{
        margin-bottom: 60px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
           <div class="row">
                 <p>&nbsp;</p>
                 <p>
                       <asp:Label ID="uname" runat="server" Text="uname" font-size="20px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testMemberEditProfile.aspx" font-size="20px">Edit Profile</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testFeedback.aspx" font-size="20px">Feedback</asp:HyperLink>&nbsp;&nbsp; &nbsp;&nbsp;
                       <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testQuizList.aspx" font-size="20px">Quiz</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp; 
                       <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testAboutPage.aspx" font-size="20px">About Us</asp:HyperLink>&nbsp;&nbsp; &nbsp;&nbsp; 
                       <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testMemberDashboard.aspx" font-size="20px">Courses</asp:HyperLink>&nbsp;&nbsp;&nbsp;
                       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" font-size="20px">Sign out</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink10" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testAnnouncementList.aspx" font-size="20px">News</asp:HyperLink>
                 </p>
                <h1 style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">TEA COURSE</h1>
            </div>
        </div>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
        <div class="menu-item">
            <img class="menu-image" src='<%# ResolveUrl(Eval("image").ToString()) %>' alt='<%# Eval("courseName") %>' />
            <br />
            <asp:Label runat="server" Text='<%# Eval("courseID") %>'></asp:Label>
            <br />
            <asp:Label runat="server" Text='<%# Eval("courseName") %>'></asp:Label>
            <br />
            <!-- Add a Select button to set the courseID in the session and redirect to the next page -->
            <asp:LinkButton ID="btnSelect" runat="server" Text="Select" CommandName="Select" CommandArgument='<%# Eval("courseID") %>' OnCommand="btnSelect_Command" />
        </div>
    </ItemTemplate>
</asp:Repeater>

</asp:Content>

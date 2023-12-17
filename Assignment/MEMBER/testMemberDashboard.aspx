<%@ Page Title="" Language="C#" MasterPageFile="~/MEMBER/member.Master" AutoEventWireup="true" CodeBehind="testMemberDashboard.aspx.cs" Inherits="Assignment.MEMBER.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Member Dashboard Page</title>


 <style type="text/css">
     h1 {
         text-align: center;
         font-size: 100px;
         margin-top: 60px;
     }
     .auto-style1 {
         width: 100%;
     }
     .auto-style2 {
         width: 374px;
     }
     .auto-style3 {
         width: 428px;
     }

     .auto-style1 {
        width: 100%;
    }

    .auto-style2 {
        width: 374px;
    }

    .auto-style3 {
        width: 428px;
    }
     .auto-style4 {
         width: 162px;
         height: 125px;
     }
     .auto-style5 {
         width: 118px;
         height: 83px;
         margin-bottom: 0px;
     }
     .auto-style6 {
         width: 101px;
         height: 90px;
     } 
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
           <div class="row">
                       <p>
&nbsp;</p>
                       <p>
            <asp:Label ID="uname" runat="server" Text="uname" font-size="20px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testMemberEditProfile.aspx" font-size="20px">Edit Profile</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testFeedback.aspx" font-size="20px">Feedback</asp:HyperLink>
&nbsp;&nbsp; &nbsp;&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testQuizList.aspx" font-size="20px">Quiz</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testAboutPage.aspx" font-size="20px">About Us</asp:HyperLink>
&nbsp;&nbsp; &nbsp;&nbsp; <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testMemberDashboard.aspx" font-size="20px">Courses</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink10" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MEMBER/testAnnouncementList.aspx" font-size="20px">News</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:HyperLink ID="HyperLink11" runat="server" ForeColor="Black" NavigateUrl="~/VISITOR/testMemberLogin.aspx">Sign Out</asp:HyperLink>
        </p>
    <h1 style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">MY DASHBOARD</h1>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../pictures/tea4.jpg" width:50px class="auto-style4"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="auto-style5" src="../pictures/shaolin3.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img class="auto-style6" src="../pictures/event2.jpg" /></p>
         

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2"> <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="Black" NavigateUrl="~/MEMBER/testTeaCourseMenu.aspx" font-size="30px">Tea</asp:HyperLink>
                        </td>
                        <td class="auto-style3"> <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="Black" NavigateUrl="~/MEMBER/testWushuCourse.aspx" font-size="30px">Wushu</asp:HyperLink>
                        </td>
                        <td> <asp:HyperLink ID="HyperLink9" runat="server" Font-Underline="True" ForeColor="Black" NavigateUrl="~/MEMBER/testFestivalCourseMenu.aspx" font-size="30px">Festival</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
           </div>
       </div>
                        <td class="auto-style2">
                            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="216px" Width="231px">
                              <series>
                                <asp:Series ChartType="Doughnut" Name="Series1">
                                </asp:Series>
                              </series>
                              <chartareas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                              </chartareas>
                            </asp:Chart>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        &nbsp;&nbsp;
                        </td>
                        <td class="auto-style3">
                            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" Height="216px" Width="231px">
                              <series>
                                <asp:Series ChartType="Doughnut" Name="Series2">
                                </asp:Series>
                              </series>
                              <chartareas>
                                <asp:ChartArea Name="ChartArea2">
                                </asp:ChartArea>
                              </chartareas>
                            </asp:Chart>
                        </td>
                        <td>
                            <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1" Height="223px" Width="220px">
                                <series>
                                    <asp:Series ChartType="Doughnut" Name="Series3">
                                    </asp:Series>
                                </series>
                                <chartareas>
                                    <asp:ChartArea Name="ChartArea3">
                                    </asp:ChartArea>
                                </chartareas>
                            </asp:Chart>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="tl" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="wl" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="fl" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>

</asp:Content>

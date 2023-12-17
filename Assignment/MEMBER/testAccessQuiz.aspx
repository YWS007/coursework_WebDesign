<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testAccessQuiz.aspx.cs" Inherits="Assignment.MEMBER.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Access Quiz</title>
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
        width: 35px;
    }
    .auto-style3 {
        width: 46px;
    }

    .quiz-question {
        font-weight: bold;
        margin-bottom: 10px;
        margin-top: 20px;
    }

    .answer-options {
        margin-left: 20px;
    }
    .auto-style4 {
        width: 35px;
        height: 40px;
    }
    .auto-style5 {
        height: 40px;
    }
    .auto-style6 {
        width: 46px;
        height: 40px;
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
               <h1 style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">QUIZ</h1>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
           </div>
     </div>

     <div>
      <asp:Label ID="Label1" runat="server" Text="Quiz" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            <br /><br />
            <asp:Label ID="currentDate" runat="server" Text="currentDate" Visible="False"></asp:Label>&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <asp:Repeater ID="quizRepeater" runat="server">
                        <ItemTemplate>
                            <div class="quiz-question">
                                <asp:Label ID="questionNumberLabel" runat="server" Text='<%# Container.ItemIndex + 1 %>'></asp:Label>
                                <asp:Label ID="correctAnswerLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CorrectAnswer") %>' Visible="false"></asp:Label>
                                <%# DataBinder.Eval(Container.DataItem, "QuestionText") %>
                            </div>
                            <div class="answer-options">
                                <asp:RadioButtonList ID="answerChoicesRadioButtonList" runat="server"
                                    RepeatDirection="Vertical" RepeatLayout="Flow"
                                    DataSource='<%# DataBinder.Eval(Container.DataItem, "AnswerChoices") %>'
                                    DataTextField="Text" DataValueField="Value" />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;&nbsp; 
                        <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="msg" runat="server" Text="msg" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
         </div>
</asp:Content>

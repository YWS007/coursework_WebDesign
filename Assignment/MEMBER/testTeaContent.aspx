<%@ Page Title="" Language="C#" MasterPageFile="~/MEMBER/member.Master" AutoEventWireup="true" CodeBehind="testTeaContent.aspx.cs" Inherits="Assignment.MEMBER.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Tea Content</title>

<style type="text/css">
    h1 {
        text-align: center;
        font-size: 100px;
        margin-top: 60px;
    }

    body{
        display: flex;
        flex-direction: column;
        margin: auto;
        max-width:1200px;
    }
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 22px;
    }
    .auto-style4 {
        width: 629px;
    }
    .auto-style8 {
        width: 536px;
    }
    .auto-style9 {
        width: 22px;
        height: 2px;
    }
    .auto-style10 {
        height: 2px;
    }
    .auto-style11 {
        width: 22px;
        height: 40px;
    }
    .auto-style12 {
        width: 629px;
        height: 40px;
    }
    .auto-style13 {
        width: 536px;
        height: 40px;
    }
    .auto-style14 {
        height: 40px;
    }
    .custom-gridview {
        border-collapse: collapse;
        width: 100%;
    }

    .custom-gridview th, .custom-gridview td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    .select-column {
        width: 80px;
    }

    .larger-column {
        width: 300px;
    }
    .auto-style15 {
        width: 22px;
        height: 58px;
    }
    .auto-style16 {
        height: 58px;
    }
    .auto-style17 {
        height: 2px;
        width: 534px;
    }
    .auto-style18 {
        height: 2px;
        width: 508px;
    }
    .auto-style20 {
        width: 629px;
        height: 58px;
    }
    .auto-style21 {
        width: 536px;
        height: 58px;
    }
    .auto-style22 {
        width: 22px;
        height: 38px;
    }
    .auto-style23 {
        width: 629px;
        height: 38px;
    }
    .auto-style24 {
        width: 536px;
        height: 38px;
    }
    .auto-style25 {
        height: 2px;
        width: 146px;
    }
    .justified-label {
        text-align: justify;
    }
    .auto-style26 {
        width: 42px;
    }
    .auto-style29 {
        width: 496px;
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
               <h1 style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">TEA</h1>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
           </div>
     </div>

    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12" colspan="3">
                    <asp:Label ID="title" runat="server" Text="title" Font-Bold="True" Font-Italic="False" Font-Names="Stencil" Font-Size="XX-Large"></asp:Label>
                </td>
                <td class="auto-style13" colspan="2">
                    <asp:Label ID="cID" runat="server" Text="contentID" Visible="False"></asp:Label>
                </td>
                <td class="auto-style14">
                    </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style18" colspan="2">
                    &nbsp;</td>
                <td class="auto-style17" colspan="2">
                    <asp:Panel ID="videoPanel" runat="server">
                    </asp:Panel>
                </td>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style10">
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" DataKeyNames="contentID" Width="100%" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" CssClass="custom-gridview">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-primary select-column" SelectText="Select" ItemStyle-Width="50px" />
                                        <asp:BoundField DataField="ChapterTitle" HeaderText="Courses" ItemStyle-CssClass="table-cell larger-column" ItemStyle-Width="200px" />
                                        
                                    </Columns>
                                </asp:GridView>



                            </td>
                        </tr>
                    </table>
                </td>
         </tr>
         <tr>
              <td class="auto-style2">&nbsp;</td>
              <td class="auto-style4" colspan="3">&nbsp;</td>
              <td class="auto-style8" colspan="2">&nbsp;</td>
              <td rowspan="20">&nbsp;</td>
          </tr>
         <tr>
              <td class="auto-style2">&nbsp;</td>
              <td class="auto-style4" colspan="3">
                    <asp:Label ID="st1" runat="server" Text="sub title 1" Font-Bold="True" Font-Size="X-Large" ForeColor="#6600FF"></asp:Label>
                </td>
              <td class="auto-style8" colspan="2">&nbsp;</td>
          </tr>
         <tr>
              <td class="auto-style2">&nbsp;</td>
              <td class="auto-style4" colspan="3">&nbsp;</td>
              <td class="auto-style8" colspan="2">&nbsp;</td>
          </tr>
          <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Image ID="Image1" runat="server" Height="300px" Width="420px" BorderColor="White" />&nbsp;
                    <asp:Label ID="img1" runat="server" Text="img" Visible="False"></asp:Label>
                </td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td colspan="3">
                    <asp:Label ID="cont1" runat="server" Text="Content 1" CssClass="justified-label"></asp:Label>

                    

                </td>
          </tr>
          <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4" colspan="3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    &nbsp;</td>
            </tr>
          <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4" colspan="3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    &nbsp;</td>
            </tr>
          <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4" colspan="3">
                    <asp:Label ID="st2" runat="server" Text="sub title 2" Font-Bold="True" Font-Size="X-Large" ForeColor="#6600FF"></asp:Label>
                </td>
                <td class="auto-style8" colspan="2">
                    &nbsp;</td>
            </tr>
          <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4" colspan="3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    &nbsp;</td>
            </tr>
          <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Image ID="Image2" runat="server" Height="300px" Width="420px" BorderColor="White" />&nbsp;

                    <asp:Label ID="img2" runat="server" Text="img" Visible="False"></asp:Label>
                </td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td colspan="3">
                    <asp:Label ID="cont2" runat="server" Text="content2" CssClass="justified-label"></asp:Label>
                    
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4" colspan="3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4" colspan="3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style20" colspan="3">
                    <asp:Label ID="st3" runat="server" Text="sub title 3" Font-Bold="True" Font-Size="X-Large" ForeColor="#6600FF"></asp:Label>
                </td>
                <td class="auto-style21" colspan="2">
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4" colspan="3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Image ID="Image3" runat="server" Height="300px" Width="420px" BorderColor="White" />
                    &nbsp;<asp:Label ID="img3" runat="server" Text="img" Visible="False"></asp:Label>
                </td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td colspan="3">
                    <asp:Label ID="content3" runat="server" Text="content3" CssClass="justified-label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23" colspan="3">
                </td>
                <td class="auto-style24" colspan="2">
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td colspan="5" class="auto-style16">
                    <asp:Label ID="st4" runat="server" Text="sub title 4" Font-Bold="True" Font-Size="X-Large" ForeColor="#6600FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Image ID="Image4" runat="server" Height="300px" Width="420px" BorderColor="White"  />
                    <asp:Label ID="img4" runat="server" Text="img" Visible="False"></asp:Label>
                </td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td colspan="3">
                    <asp:Label ID="content4" runat="server" Text="content4" CssClass="justified-label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4" colspan="3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    &nbsp;</td>
            </tr>
          </table>
      </div>
</asp:Content>


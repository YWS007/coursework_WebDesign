<%@ Page Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testVisitorAboutPage.aspx.cs" Inherits="Assignment.VISITOR.testVisitorAboutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/style2.css" type="text/css" rel="stylesheet" />
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

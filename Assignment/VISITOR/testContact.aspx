<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testContact.aspx.cs" Inherits="Assignment.VISITOR.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/style2.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
         .center-container {
        display: flex;
        flex-direction: column;
        margin: auto;
        max-width: 1200px; /* Adjust this width based on your design */
        }
        .auto-style1 {
            width: 117px;
        }
        </style>
    <title>Contact Us</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id='contactcontent'>
    <div class="container">
        <div class='row'>
			  <div class='col-md-4'>
				 <h3>Contact Methods</h3>
				 <p>If you have any inquiries, feel free to call or email us.</p>
				 <p><i class="fas fa-phone"></i> Phone: 603- 6226 3333</p>
				 <p><i class="fas fa-envelope"></i> Email: <a href='mailto:wcc@gmail.com'>wcc@gmail.com</a></p>
			  </div>
			  
    
                &nbsp;&nbsp;<br />
              <br />
              <br />
              <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Leave a message"></asp:Label>
              <br />
              <br />
              <br />
              <table class="w-100">
                  <tr>
                      <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                      </td>
                      <td>
                    <asp:TextBox ID="name" runat="server" Width="385px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                      </td>
                      <td>
                    <asp:TextBox ID="email" runat="server" Width="385px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Message"></asp:Label>
                      </td>
                      <td>
                    <asp:TextBox ID="message" runat="server" Height="352px" TextMode="MultiLine" Width="635px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
              </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a  href="#" role="button" onclick="showSuccessMessage()"><asp:Button ID="Button1" runat="server" BackColor="#FF9933" ForeColor="White" Text="Submit" OnClick="Button1_Click" BorderColor="#FF9933" />
                  </a>
                    <asp:Label ID="msg" runat="server" Text="msg" Visible="False"></asp:Label>
            </div>
        </div>
    </div>
</section>
  
    <script>
    function showSuccessMessage() {
        // Display a Bootstrap alert with a success message
        const alertElement = `<div class="alert alert-success alert-dismissible fade show" role="alert">
                                Submit successful!
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                              </div>`;
        
        // Append the alert to the body
        document.body.insertAdjacentHTML('beforeend', alertElement);
    }
    </script>
    </asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testMemberLogin.aspx.cs" Inherits="Assignment.MEMBER.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="path/to/boxicons/css/boxicons.min.css"/> 
    <link href="/style2.css" type="text/css" rel="stylesheet" />
<style type="text/css">

    section.gray-background {
        background-color: #dddddd;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="memberLogin" class="gray-background">
    <div class="row">
<h1 class="text-center">Member Login Page</h1>
   <div class="container login-box">
     
         <div class="col-12-sm-6 col-md-4 m-auto">
             <div class="card border-0 shadow">
                 <div class="card-body text-center">
                     <svg class="mx-auto my-3"  xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                       <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                       <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                     </svg>
                         <form action="">
                             <asp:TextBox ID="username" runat="server" CssClass="form-control mx-auto my-4 py-2" placeholder="Username"></asp:TextBox>
                             <asp:TextBox ID="password" runat="server" CssClass="form-control mx-auto my-4 py-2" placeholder="Password" TextMode="Password"></asp:TextBox>
                             <asp:Label ID="errorMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                             <div class="text-center mt-8">
                                 <asp:Button runat="server" ID="Button2" Text="Login" CssClass="btn btn-primary" OnClick="Button1_Click"/>
                                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nav-link" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/VISITOR/testMemberRegister.aspx">Not yet Registered?</asp:HyperLink>
                             </div>
                         </form>
                     </div>
                  </div>
             </div>     
         </div>
     </div>
</section>
</asp:Content>

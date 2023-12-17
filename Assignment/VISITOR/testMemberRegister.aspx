<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testMemberRegister.aspx.cs" Inherits="Assignment.MEMBER.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/style2.css" type="text/css" rel="stylesheet" />
        <style type="text/css">
        .dropdown-custom {
        width: 40%;
        height: 100%;
        padding: 0.375rem 0.75rem;
        font-size: 1rem;
        line-height: 1.5;
        color: #495057;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid #000000; /* Set the border color */
        border-radius: 0.25rem; /* Set the border radius */
        float:left;
        margin-bottom: 20px;
    }

        section.gray-background {
            background-color: #dddddd;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="memberRegister" class="gray-background">
    <div class="container">
       <div class="row"> 
            <h1 class="text-center">Member Register Page</h1>
            <p class="col-12-sm-5 col-md-4 m-auto">Create your account it's free and only takes a minute.</p>
                <div class="container register-box">
                 <div class="row">
                <div class="col-12-sm-6 col-md-4 m-auto">
                    <div class="card border-0 shadow">
                         <div class="card-body text-center">
                             <form action="">
                                 <asp:TextBox ID="fname" runat="server" CssClass="form-control mx-auto my-4 py-2" placeholder="First Name"></asp:TextBox>
                                 <asp:TextBox ID="lname" runat="server" CssClass="form-control mx-auto my-4 py-2" Placeholder="Last Name"></asp:TextBox>
                                 <asp:DropDownList ID="gender" runat="server" CssClass="dropdown-custom text-left">
                                    <asp:ListItem>F</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                    <asp:ListItem>Not to Specify</asp:ListItem>
                                </asp:DropDownList>
                                 <asp:TextBox ID="country" runat="server" CssClass="form-control mx-auto my-4 py-2" placeholder="Country"></asp:TextBox>
                                 <asp:TextBox ID="email" runat="server" CssClass="form-control mx-auto my-4 py-2" placeholder="Email"></asp:TextBox>
                                 <asp:TextBox ID="username" runat="server" CssClass="form-control mx-auto my-4 py-2" placeholder="Username"></asp:TextBox>
                                 <asp:TextBox ID="psw" runat="server" CssClass="form-control mx-auto my-4 py-2" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                                 <div class="text-center mt-8">
                                 <label>
                                    <input type="checkbox" name=""/>
                                    I accept the <a href="#">Terms of Use</a> & <a href="#">Privacy Policy</a>
                                </label>    
                                     <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="btn btn-primary" OnClick="Button1_Click" />
                                 </div>    
                             </form>
                         </div>
                      </div>
                 </div>     
             </div>
         </div>
        </div>
    </div>
</section>

</asp:Content>

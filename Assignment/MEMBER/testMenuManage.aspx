<%@ Page Title="" Language="C#" MasterPageFile="~/MEMBER/member.Master" AutoEventWireup="true" CodeBehind="testMenuManage.aspx.cs" Inherits="Assignment.MEMBER.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Menu</title>
<style type="text/css">
    h1 {
        text-align: center;
        font-size: 100px;
        margin-top: 60px;
    }
    .menu-list {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .menu-item {
        display: inline-block;
        margin-right: 20px;
        text-align: center;
    }

    .menu-image {
        display: block;
        width: 75px;
        height: 75px;
        margin: 0 auto;
    }
    .f-item {
        width: 33.33%; /* Set the width to 33.33% to accommodate three items in a row */
        float: left;
        text-align: center;
        margin-bottom: 20px;
    }

    .f:nth-child(3n+1) {
        clear: both;
    }

    <!-- Add Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/
<style type="text/css"/
    /* Your existing styles */
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                   
                      
            <div>
            <asp:Repeater ID="menuRepeater" runat="server">
                <ItemTemplate>
                    <div class="menu-item">
                        <a href='<%# Eval("courseID") %>'>
                            <img class="menu-image" src='<%# ResolveUrl(Eval("image").ToString()) %>' alt='<%# Eval("courseName") %>' />
                            <br />
                            <span><%# Eval("courseID") %></span>
                            <br />
                            <span><%# Eval("courseName") %></span>
                            <br />
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Feedback"></asp:Label>
            <br />
        </div> 
<asp:Repeater ID="feedbackRepeater" runat="server">
    <HeaderTemplate>
        <div id="feedbackCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
    </HeaderTemplate>
    <ItemTemplate>
        <%# Container.ItemIndex % 3 == 0 ? "<div class='carousel-item'><div class='row'>" : "" %>
            <div class="col-md-4 f-item">
                <asp:Label runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                <br />
                <asp:Label runat="server" Text='<%# Eval("feedback") %>'></asp:Label>
                <br />
                <asp:Label runat="server" Text='<%# "Rating: " + Eval("rating") %>'></asp:Label>
            </div>
        <%# (Container.ItemIndex + 1) % 3 == 0 || Container.ItemIndex == (feedbackRepeater.Items.Count - 1) ? "</div></div>" : "" %>
    </ItemTemplate>
    </asp:Repeater>

</asp:Content>

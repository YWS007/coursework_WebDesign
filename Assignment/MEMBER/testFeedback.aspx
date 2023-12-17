<%@ Page Title="" Language="C#" MasterPageFile="~/MEMBER/member.Master" AutoEventWireup="true" CodeBehind="testFeedback.aspx.cs" Inherits="Assignment.MEMBER.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Feedback Page</title>
<style type="text/css">
    h1 {
        text-align: center;
        font-size: 100px;
        margin-top: 60px;
    }
    .auto-style1 {
        width: 100%;
    }
    
    .rating {
        display: inline-block;
    }

    .star {
        font-size: 30px;
        cursor: pointer;
    }

    .star.active {
        color: gold;
    }
    .auto-style2 {
        width: 42px;
    }
    .auto-style3 {
        width: 40px;
    }
    .auto-style4 {
        width: 899px;
    }
    .auto-style5 {
        width: 42px;
        height: 90px;
    }
    .auto-style6 {
        width: 899px;
        height: 90px;
    }
    .auto-style7 {
        height: 90px;
    }
    .auto-style8 {
        width: 40px;
        height: 90px;
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
               <h1 style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">FEEDBACK</h1>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
               <p style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-weight: bolder; font-style: normal">&nbsp;</p>
           </div>
     </div>

    <div>
        <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Rating" Font-Size="Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <div id="rating" class="rating">
                    <span class="star" data-rating="1">&#9733;</span>
                    <span class="star" data-rating="2">&#9733;</span>
                    <span class="star" data-rating="3">&#9733;</span>
                    <span class="star" data-rating="4">&#9733;</span>
                    <span class="star" data-rating="5">&#9733;</span>
                </div>
                &nbsp;<asp:Label ID="ratingLabel" runat="server" Text=""></asp:Label>&nbsp;
            </td>
            <td class="auto-style7">
                <asp:HiddenField ID="ratingHiddenField" runat="server" />
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Feedback"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2">
                <asp:TextBox ID="fb" runat="server" Height="275px" TextMode="MultiLine" Width="1002px"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="submit" />&nbsp;&nbsp;
                <asp:Label ID="msg" runat="server" Text="msg" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
    </div>
</form>

<script type="text/javascript">
    window.onload = function () {
        const stars = document.querySelectorAll('.star');
        let selectedRating = 0;
        stars.forEach(star => {
            star.addEventListener('click', onStarClick);
            star.addEventListener('mouseover', onStarMouseOver);
            star.addEventListener('mouseout', onStarMouseOut);
        });

        function onStarClick(event) {
            selectedRating = event.target.getAttribute('data-rating');
            updateStars();
            updateRatingLabel(selectedRating);

            <%-- Set the hidden field value --%>
            document.getElementById('<%= ratingHiddenField.ClientID %>').value = selectedRating;
        }

        function onStarMouseOver(event) {
            selectedRating = event.target.getAttribute('data-rating');
            updateStars();
        }

        function onStarMouseOut(event) {
            updateStars();
        }

        function updateStars() {
            stars.forEach(star => {
                const rating = star.getAttribute('data-rating');
                if (selectedRating >= rating) {
                    star.classList.add('active');
                } else {
                    star.classList.remove('active');
                }
            });
        }

        function updateRatingLabel(rating) {
            document.getElementById('<%= ratingLabel.ClientID %>').textContent = `You rated this as ${rating} star(s).`;
        }
    };
</script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testDuanWu.aspx.cs" Inherits="Assignment.VISITOR.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/style2.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
         .center-container {
        display: flex;
        flex-direction: column;

        margin: auto;
        max-width: 1200px; /* Adjust this width based on your design */
        }
        .auto-style3 {
            width: 435px;
        }
        .auto-style5 {
            width: 421px;
            height: 294px;
        }
        .auto-style7 {
            margin-right: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="contentFestival">
    <div class="center-container">
                    <h1>Essential Things to Know About the Duan Wu Festival</h1>
   
<br />
<div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/s6IJnbc1_yU?si=2tjgG6cJ5t5N0-Ml" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
   </div>


<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Dragon Boat Festival is one of the four top traditional Chinese festivals, along with the Spring Festival, Tomb-Sweeping Day, and Mid-Autumn Festival." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label9" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="In addition to Chinese mainland, many other Asian countries and regions also celebrate this festival. In Malaysia, Indonesia, Singapore, and Taiwan, China, it is known as Bak Chang Festival ('Dumpling Festival'). " Font-Size="Large"></asp:Label>
<p>&nbsp;</p>
<div style="display: flex; justify-content: center; align-items: center;">
    <asp:Image ID="Image1" runat="server" Height="372px" ImageUrl="~/pictures/duanwu1.jpg" Width="473px" />
</div>


<br />

<br />
<br />
        
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">The Date of Dongzhi Festival</h2>
<p>
    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="Dragon Boat Festival is a traditional Chinese holiday which falls on the fifth day of the fifth lunar month, which is in late May or June on the Gregorian calendar." Font-Size="Large"></asp:Label>
</p>
<p>&nbsp;</p>
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">How Do People Celebrate the Dragon Boat Festival?</h2>

    <asp:Label ID="Label10" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="Dragon Boat Festival customs can be roughly divided into two categories. One is to worship the god of dragon and heroes, such as Qu Yuan. The activities include dragon boat races and eating glutinous rice dumplings." Font-Size="Large"></asp:Label>
                    <br />
    <asp:Label ID="Label11" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="Another category aims to fend off evils and keep people healthy. The activities include bathing in herbal concoctions, hanging wormwood and calamus, and drinking realgar wine." Font-Size="Large"></asp:Label>
                    <br />

&nbsp;<table class="w-100">
    <tr>
        <td colspan="2" style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000; text-align:left;">
            1. Eating Sticky Rice Dumplings</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Image ID="Image3" runat="server" Height="313px" ImageUrl="~/pictures/duanwu2.jpeg" Width="424px" />
</td>
        <td>
    <asp:Label ID="Label3" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Zongzi (粽子zòngzi /dzong-dzuh/) are the most traditional Dragon Boat Festival food. Related to Qu Yuan commemoration, the legend says that lumps of rice (not unlike zongzi) were thrown into the river to stop fish eating his drowned body."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label4" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Zongzi are made of glutinous rice filled with meats, beans, and other fillings. They are wrapped in triangle or rectangle shapes within bamboo or reed leaves and tied with soaked stalks or colorful silky cords. The flavors of zongzi are usually different from one region to another across China."></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000;" colspan="2">2. Participating In or Attending Dragon Boat Races</td>
    </tr>
    <tr>
        <td>

<h3>
<img src="../pictures/duanwu3.jpg" class="auto-style5"/></h3>
        </td>
        <td>

<asp:Label ID="Label5" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Dragon boat racing is the most important activity of the Dragon Boat Festival. It is said to originate from the legend of people paddling out on boats to seek the body of patriotic poet Qu Yuan (343–278 BC), who drowned himself in a River."></asp:Label>
            <br />
            <br />
    <asp:Label ID="Label6" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="The wooden boats are shaped and decorated in the form of a Chinese dragon. The boats' size varies by region and usually need 30–60 people to paddle them. During the races, dragon boat teams paddle harmoniously and hurriedly, accompanied by the sound of beating drums. It is said that the winning team will have good luck and a happy life in the following year."></asp:Label>
        </td>
    </tr>
    <tr>
        <td>

            &nbsp;</td>
        <td>

            &nbsp;</td>
    </tr>
    <tr>
        <td style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000;" colspan="2">

            3. Hanging Chinese Mugwort and Calamus</td>
    </tr>
    <tr>
        <td>

            <asp:Image ID="Image2" runat="server" Height="313px" ImageUrl="~/pictures/duanwu4.jpg" Width="424px" CssClass="auto-style7" />
        </td>
        <td>

    <asp:Label ID="Label7" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="The Dragon Boat Festival is held at the start of summer when diseases are more prevalent. Mugwort leaves are used medicinally in China to combat such diseases. Their fragrance deters flies and mosquitoes. Calamus is an aquatic plant that has similar effects."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label8" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="On the fifth day of the fifth month, people usually clean their houses, courtyards, and hang mugwort and calamus on doors lintels to discourage diseases. It is also said hanging mugwort and calamus can bring good luck to the family."></asp:Label>
        </td>
    </tr>
</table>
<br />
<br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" ForeColor="Black" CssClass="rounded-link" NavigateUrl="~/VISITOR/testMemberRegister.aspx" font-size="20px">More &gt;&gt;&gt;</asp:HyperLink>
                    <br />
                    <br />
<br />
<br />
         </div>
        </section>
   
    </asp:Content>


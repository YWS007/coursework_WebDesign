<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testMooncake.aspx.cs" Inherits="Assignment.VISITOR.WebForm2" %>
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
                    <h1>Legend of Mooncake Festival</h1>
   
<br />
<div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/R8tHNitL-LU?si=yDEKRH6BP3xkZKZg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
   </div>


<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Celebrated every year in September to early October, the Mid-Autumn Festival falls on the same date, or very close to, the Autumn Equinox, the time of year when the daylight has as many hours as the night–it is also be considered as a harvest festival. There are many tales and legends associated with the date and children get to enjoy a great part of this festival. Here in Macau, people usually get together in the evening before the public holiday. The city gets dressed in colorful and bright lanterns and, at home, friends exchange the star of the season: the mooncake." Font-Size="Large"></asp:Label>
<p>&nbsp;</p>
<div style="display: flex; justify-content: center; align-items: center;">
    <asp:Image ID="Image1" runat="server" Height="372px" ImageUrl="~/pictures/mooncake.jpg" Width="473px" />
</div>


<br />

<br />
<br />
        
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">The Date of Dongzhi Festival</h2>
<p>
    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="Different countries have different holiday times for this festival. In China, the festival falls on September 17th. In Singapore, Malaysia, Indonesia, and the Philippines, there is no public holiday." Font-Size="Large"></asp:Label>
</p>
<p>&nbsp;</p>
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">6 Most Well-Known Legends about Mid-Autumn Festival</h2>

&nbsp;<table class="w-100">
    <tr>
        <td colspan="2" style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000; text-align:left;">
            1. Chang E Flying to the Moon</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Image ID="Image3" runat="server" Height="313px" ImageUrl="~/pictures/mooncake1.jpg" Width="424px" />
</td>
        <td>
    <asp:Label ID="Label3" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Chang E Flying to the Moon is the most widely told Mid-Autumn Festival legend. It is said that in ancient times, ten suns existed in the sky and the extreme heat made people’s lives very difficult. It was the hero Hou Yi, who, using his great strength, shot down nine of the ten suns. Later, Hou Yi married a beautiful and kind-hearted woman named Chang E and lived a happy life."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label4" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="One day, the Queen of Heaven presented Hou Yi an elixir which, if took, would help him to ascend immediately to heaven and become a god. Hou Yi took it home and asked Chang E to keep it. Unfortunately, a villain named Pengmeng got to know this, broke into their home and demanded Chang E hand over the elixir while Hou Yi was out hunting. In a moment of desperation, Chang E swallowed the elixir. Reluctant to leave his husband, Cheng E tried her best to fly to the moon, the nearest place to the earth in heaven. Houyi missed Chang E a lot, so on the day of the full moon he placed on tables foods that Chang E liked. This custom was later followed by folk people praying to the Goddess Chang E for good luckand gradually formed the Mid-Autumn Festival."></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000;" colspan="2">2. Rabbit in the Moon Story </td>
    </tr>
    <tr>
        <td>

<h3>
<img src="../pictures/mooncake2.png" class="auto-style5"/></h3>
        </td>
        <td>

<asp:Label ID="Label5" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="The Mid-Autumn Festival rabbit story goes about that three immortals reincarnated themselves into three poor old people and begged food from a fox, a monkey and a rabbit. The fox and monkey both gave food to the immortals. However, the rabbit did not have any food. It then said to the immortals: “you can eat me” and jumped into the fire. The immortals were so moved by the rabbit and sent it to the moon to become an immortal jade rabbit. Ever since then, the Chinese jade rabbit stays in the Moon Palace to accompany Chang E and compounds immortal medicine for those living in the heaven. This is “rabbit in the moon legend”, also known as “jade rabbit story”. "></asp:Label>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td>

            &nbsp;</td>
        <td>

            &nbsp;</td>
    </tr>
    <tr>
        <td style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000;">

            3. Wu Gang Chops the Tree</td>
        <td>

            &nbsp;</td>
    </tr>
    <tr>
        <td>

            <asp:Image ID="Image2" runat="server" Height="313px" ImageUrl="~/pictures/mooncake3.jpg" Width="424px" CssClass="auto-style7" />
        </td>
        <td>

    <asp:Label ID="Label7" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="This is another well-known Mid-Autumn Festival legend happening on the moon. Long time ago, there was a man from Xihe of Han Dynasty (202 BC - 220 AD) named Wu Gang. He once followed the immortals to develop himself and became an immortal, too. However, when in the heaven, he made a mistake and was banished to the moon to chop the laurel tree. This laurel tree growing in front of the Moon Palace was very flourishing and tall. Each time Wu Gang chopped the tree, it grew back immediately. This happened again and again and the tree was never able to be cut down. The endless, arduous hard job was a punishment for Wu Gang. If you look carefully at the moon in clear nights, you can see a black shadow on it, which is said to be Wu Gang."></asp:Label>
            <br />
            <br />
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


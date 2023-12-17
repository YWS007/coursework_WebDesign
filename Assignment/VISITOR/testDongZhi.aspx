<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testDongZhi.aspx.cs" Inherits="Assignment.VISITOR.WebForm1" %>
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
     <section id="dongzhi">
    <div class="center-container">
                    <h1>What is Dong Zhi</h1>
   
<br />
<div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/1HFjnBKzsI0?si=dMQWZh6qDlRF2qEa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>


<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Dongzhi (冬至) literally means 'Winter's Arrival'. It is one of the 24 solar terms of China's traditional solar calendar. It has long been celebrated on (China's) Winter Solstice when the night is longest, and the day is shortest in the Northern Hemisphere. Dongzhi became an imperially recognized traditional festival during the Han Dynasty era (206 BC – 220 AD)." Font-Size="Large"></asp:Label>
<p>&nbsp;</p>
<div style="display: flex; justify-content: center; align-items: center;">
    <asp:Image ID="Image1" runat="server" Height="372px" ImageUrl="~/pictures/dongZhi1.jpg" Width="473px" />
</div>


<br />

<br />
<br />
        
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">The Date of Dongzhi Festival</h2>
<p>
    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="The date of Dongzhi varies slightly. It always falls on December 21, 22, or 23." Font-Size="Large"></asp:Label>
</p>
<p>&nbsp;</p>
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">Traditional Foods of Dongzhi Festival</h2>

&nbsp;<table class="w-100">
    <tr>
        <td colspan="2" style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000; text-align:left;">
            Dumplings-Northern China Food</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Image ID="Image3" runat="server" Height="313px" ImageUrl="~/pictures/dongZhi2.jpg" Width="424px" />
</td>
        <td>
    <asp:Label ID="Label3" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="In northern China where it can get bitterly cold, the people lacked sufficient warm clothing and adequate heating, so they ate hot food and drank hot liquids to stay warm. People believed that when the days were short, there was insufficient Yang energy, and they tried to eat high Yang foods according to Chinese medicinal cuisine principals."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label4" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Dumplings have been the most traditional food in the north of China for a long time. People make dumplings on Dongzhi Day with their friends and family."></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000;" colspan="2">Tangyuan-Southern China Food</td>
    </tr>
    <tr>
        <td>

<h3>
<img src="../pictures/dongZhi3.jpg" class="auto-style5"/></h3>
        </td>
        <td>

<asp:Label ID="Label5" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Besides dumplings, people of south China have a tradition of eating glutinous rice balls called tangyuan. The history of eating tangyuan can be dated back to the Song Dynasty (960–1279)."></asp:Label>
            <br />
            <br />
    <asp:Label ID="Label6" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Some people in southern China and some Chinese in communities in Southeast Asia gather together to make and eat a meal of tangyuan (汤圆 Tāngyuán /tung-ywen/). Tangyuan symbolizes family unity and prosperity."></asp:Label>
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

            Wonton Soup-Eastern China Food</td>
        <td>

            &nbsp;</td>
    </tr>
    <tr>
        <td>

            <asp:Image ID="Image2" runat="server" Height="313px" ImageUrl="~/pictures/dongZhi4.jpeg" Width="424px" CssClass="auto-style7" />
        </td>
        <td>

    <asp:Label ID="Label7" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Wonton soup is another must-eat food for the Dongzhi festival in eastern parts of China, especially in Zhejiang and Fujian provinces. Stuffings of wontons are much the same as dumplings'."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label8" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="However, wonton dough is much thinner than dumplings'. Eating a bowl of wonton soup can keep people warm and comfortable in the cold of winter."></asp:Label>
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

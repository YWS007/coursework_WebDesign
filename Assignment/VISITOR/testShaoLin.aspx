<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testShaoLin.aspx.cs" Inherits="Assignment.VISITOR.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>Shao Lin Kung Fu</title>
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
                    <h1>Style Of Shaolin Kung Fu</h1>
   
<br />
<div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/9_qaHh2RF4Y?si=nHEjqo09kRRA3mLY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>


<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Shaolin kung fu is a symbol of Chinese martial arts. Shaolin Kung Fu (Chinese: 少林功夫 ), also called Shaolin Wushu (少林武術 ), is among the oldest institutionalized styles of Chinese martial arts. Known in Chinese as Shaolinquan (Chinese: 少林拳) , it originated and was developed in the Buddhist Shaolin temple in Henan province, China. , also known as Shaolin martial arts, is one of the famous martial arts . It has a long history and profound influence, is an important part of the traditional martial arts China. Began about Northern Wei. Chronicles continue some development, spur widespread throughout the country, modern and gradually spread overseas .The most prominent feature of Shaolin Kungfu is &quot;chan wu he yi&quot;, namely the chan wu he yi, practicing meditation, so there are &quot;Zen martial arts&quot;." Font-Size="Large"></asp:Label>
                    <br />
                    <br />
                    <br />
<div style="display: flex; justify-content: center; align-items: center;">
    <asp:Image ID="Image1" runat="server" Height="372px" ImageUrl="~/pictures/shaolin1.jpg" Width="1108px" />
</div>


<br />

<br />
<br />
        
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">Basic Goals of Kung Fu</h2>
<p>
    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="The basic goals of Shaolin Kung Fu are to protect against opponents and disable them quickly with strikes. There is also a very philosophical side to the art, as it is strongly tied to Buddhist and Taoist principles. Shaolin Kung Fu sub-styles also have a very theatrical presence. Therefore, some practitioners have the goal of acrobatics and entertainment, more than practicality." Font-Size="Large"></asp:Label>
</p>
<p>&nbsp;</p>
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">Shaolin Kung Fu Techniques</h2>
        <h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #000000;">Shaolin Kung Fu Stance</h2>

&nbsp;<table class="w-100">
    <tr>
        <td colspan="2" style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000; text-align:left;">
            Horse Stance</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Image ID="Image3" runat="server" Height="313px" ImageUrl="~/pictures/shaolin2.jpg" Width="424px" />
</td>
        <td>
    <asp:Label ID="Label3" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="The horse stance (sometimes called horse riding stance) is a common posture in Asian martial arts and takes its name from the position assumed when riding a horse. It is called mǎbù (馬步) in Chinese, This stance can not only be integrated into fighting but also during exercises and forms. It is most commonly used for practicing punches or to strengthen the legs and back. Horse stance is used for endurance training as well as strengthening the back and leg muscles, tendon strength, and overall feeling and understanding of &quot;feeling grounded&quot;. It is a wide, stable stance with a low center of gravity."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label4" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Step your left leg out to the side so your feet are wider than your shoulders and slowly squat into Ma Bu."></asp:Label>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000;" colspan="2">Bow Stance</td>
    </tr>
    <tr>
        <td>

<h3>
<img src="../pictures/shaolin3.jpg" class="auto-style5"/></h3>
        </td>
        <td>

<asp:Label ID="Label5" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Translated as &quot;bow stance&quot;, Gong Bu is also known as &quot;Deng Shan Bu&quot; (mountain-climbing stance) or &quot;Gong Jian Bu&quot; (bow and arrow stance). The lead foot is pointed straight ahead, with the lead leg bent slightly. The trailing foot is angled outward at a 45 degree angle, with the heel lined up with the heel of the leading foot. The trailing leg can be held straight or slightly bent. The result is a &quot;lunging&quot; pose. In southern styles, the toe is if it had stayed in Ma Bu; starting in Ma Bu, the hind leg steps forward and turns while the front leg stays in the same position. In northern styles, the toe points forward. The given weighting is 70% on the front foot and 30% on the rear. "></asp:Label>
            <br />
            <br />
    <asp:Label ID="Label6" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="The structure of the stance partially protects the groin and allows the martial artist to punch with greater power by driving the rear leg into the ground. Additionally, the rear leg can be quickly drawn forward for kicking attacks."></asp:Label>
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

            Cat Stance</td>
        <td>

            &nbsp;</td>
    </tr>
    <tr>
        <td>

            <asp:Image ID="Image2" runat="server" Height="313px" ImageUrl="~/pictures/shaolin4.jpg" Width="424px" CssClass="auto-style7" />
        </td>
        <td>

    <asp:Label ID="Label7" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="This stance is used for transitional movements and mobility. All the weight is on the back leg. The front leg rests on the toe or the ball of the foot. The front foot resembles the way a cat will put its paw out to take a step, with no weight on it, and this is how we get the name. The front leg can be used to step into another stance or it can be used to kick the opponent. It is great for kicking attacks. In the end one puts all the weight onto the back leg, the front leg just slightly touching the ground, like a cat paw. Ultimately the stance should be so low that there is a 90 degree angle. To reach that one has to do many, many pistol squats. But don’t worry usually it is fine if you start up higher and then slowly with training and strength make your way down."></asp:Label>
            <br />
        </td>
    </tr>
</table>
                    <br />
                    <br />
                    <h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">Learning Video</h2>
<br />
     <div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/2F_4JKcmPX0?si=AytBcGnAq9hk-96o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
       </div>
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

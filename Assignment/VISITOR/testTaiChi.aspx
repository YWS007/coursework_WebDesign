<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testTaiChi.aspx.cs" Inherits="Assignment.VISITOR.WebForm5" %>
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
                    <h1>What is Tai Chi</h1>
   
<br />
<div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/uWY5he0N4Zo?si=mLbUEJHYbg4uDbC9" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>


<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Tai Chi is a mind-body exercise originating from ancient China, where it started as a famous martial art. These days, it’s practised around the world as an effective exercise for health." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label9" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="At the heart of it, Tai Chi is a moving meditation in the form of a series of gentle exercises that create harmony between the mind and body. The ultimate purpose is to cultivate our inner life energy (qi) to flow smoothly and powerfully through the body. This is a spiritual experience, as much as a physical one." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label10" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Movements are fluid, graceful, circular and slow. Breathing is deep, aiding visual and mental concentration. This relaxes the body and allows the life force to flow freely." Font-Size="Large"></asp:Label>
                    <br />
                    <br />
<div style="display: flex; justify-content: center; align-items: center;">
    <asp:Image ID="Image1" runat="server" Height="372px" ImageUrl="~/pictures/taichi4.jpg" Width="473px" />
</div>


<br />

<br />
<br />
        
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">Health benefits of Tai Chi</h2>
<p>
    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="On a physical level, Tai Chi improves strength, flexibility, aerobic conditioning and balance. It’s been proven to improve cardiovascular fitness, lower blood pressure, prevent falls and help people who have arthritis." Font-Size="Large"></asp:Label>
</p>
                    <p>
    <asp:Label ID="Label11" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="There are also immense emotional and mental benefits. The deliberate movements help people to feel more relaxed, grounded and present in their bodies. This lowers anxiety, stress and depression; while improving memory, focus and sleep." Font-Size="Large"></asp:Label>
</p>
<p>&nbsp;</p>
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">Principles of Tai Chi</h2>

&nbsp;<table class="w-100">
    <tr>
        <td colspan="2" style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000; text-align:left;">
            1. Movement Control</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Image ID="Image3" runat="server" Height="313px" ImageUrl="~/pictures/taichi.jpg" Width="424px" />
</td>
        <td>
    <asp:Label ID="Label3" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Tai Chi movements are slow to help you integrate mind and body. They are smooth to facilitate serenity, flowing like water in a river. This continual flow gathers inner energy like hydraulic power, growing as it flows."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label4" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Move as though you’re pushing against gentle resistance. Every movement generates a soft inner power. Another good way is to imagine the air around you becoming denser, or pretend that you’re moving in water."></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000;" colspan="2">2. Body Structure</td>
    </tr>
    <tr>
        <td>

<h3>
<img src="../pictures/taichi2.jpg" class="auto-style5"/></h3>
        </td>
        <td>

<asp:Label ID="Label5" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Maintain an upright posture. Studies show that good posture strengthens the Deep Stabiliser muscles, which support the spine. It also provides more space for internal organs. What’s more, you feel stronger and more positive when upright. Qi flows better in an aligned body. A poorly aligned body puts extra strain on the spine and compromises balance."></asp:Label>
            <br />
            <br />
    <asp:Label ID="Label6" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Be mindful of weight transference. Balance is an essential part of Tai Chi. Like nature, we are happier and healthier when in harmony."></asp:Label>
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

            3. Internal Components</td>
        <td>

            &nbsp;</td>
    </tr>
    <tr>
        <td>

            <asp:Image ID="Image2" runat="server" Height="313px" ImageUrl="~/pictures/taichi3.jpeg" Width="424px" CssClass="auto-style7" />
        </td>
        <td>

    <asp:Label ID="Label7" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Loosen or ‘松 – Song‘ the joints. Relax when you do Tai Chi, but not to the point where your muscles get floppy. Instead, consciously and gently stretch your joints from within. Qi can only flow smoothly and powerfully if your joints are Song (and not tensed). Song also strengthens the internal ligaments and muscles, enhancing the function of joints."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label8" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Develop a state of mental quietness or ‘静 – Jing’. You’re more mindful of the present and the self when you’re ‘Jing’."></asp:Label>
        </td>
    </tr>
</table>
                    <br />
                    <br />
                    <h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">Learning Video</h2>
<br />
     <div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/jUhqkKddPyA?si=UT-oOslrHGRldZd5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testType.aspx.cs" Inherits="Assignment.VISITOR.WebForm10" %>
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
        .auto-style8 {
            font-family: "Cooper Black";
            font-weight: 200;
            font-size: x-large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="contentkungfu">
    <div class="center-container">
                    <h1>Basic Classification of Chinese Tea</h1>
   
<br />
<div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/lAYRZeDJ4Pc?si=mPFY1IQPoGxDTypX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>


<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="The tea typically refer to as tea is a beverage made by processing the leaves of the tea plant, which can be steeped in hot water and consumed directly." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label9" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Tea, coffee, and cocoa are often referred to as the three major beverages in the world." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label10" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Chinese tea culture has a long history, and because of the different climates in various places, we get all sorts of different kinds of tea. This makes tea one of the three most popular drinks in the world." Font-Size="Large"></asp:Label>
<p>&nbsp;</p>
        
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">What is the classification of the six major tea types?</h2>
<p>
    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="In the late 1970s and 1980s, Chinese tea expert Professor Chen Chuan categorized Chinese tea into six major types for easier recognition and understanding based on their quality and production processes." Font-Size="Large"></asp:Label>
</p>
                    <p>
    <asp:Label ID="Label11" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="These six categories: white tea, green tea, yellow tea, oolong tea, black tea, and dark tea." Font-Size="Large"></asp:Label>
</p>
<p>
            <asp:Image ID="Image4" runat="server" Height="313px" ImageUrl="~/pictures/tea9.jpg" Width="424px" />
&nbsp;&nbsp; </p>
                    <p>
    <asp:Label ID="Label12" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="Actually, it is not too complicated to identify different Chinese teas. The classification system is based on the degree of fermentation. It's important to note that the concept of tea fermentation is not equivalent to the fermentation process in beverages or foods like alcohol or dairy products." Font-Size="Large"></asp:Label>
                    </p>
                    <p>
    <asp:Label ID="Label13" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="Tea fermentation refers to the enzymatic oxidation of tea leaves over time, which make the leaves turn red. Simply put, these classifications reflect the amount of fermentation which occurs when the tea is processed. This results in a scale of tea strength and color once the tea is brewed." Font-Size="Large"></asp:Label>
                    </p>
                    <p>
    <asp:Label ID="Label14" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="It is the percentage of fermentation that actually differentiates the various types of tea: green tea is up to 5 % fermented，normally less; white tea is 5-10% fermented; yellow tea is up to 10% fermented; oolong tea is around 10-60% fermented, black tea 80-85% and dark green tea 100%." Font-Size="Large"></asp:Label>
                    </p>
                    <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image5" runat="server" Height="313px" ImageUrl="~/pictures/tea9b.jpg" Width="424px" />
                    </p>

&nbsp;<table class="w-100">
    <tr>
        <td colspan="2" style="text-align:left;" class="auto-style8">
            White Tea</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Image ID="Image3" runat="server" Height="313px" ImageUrl="~/pictures/tea10.jpg" Width="424px" />
</td>
        <td>
    <asp:Label ID="Label3" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Making white tea involves minimal processing. The fresh leaves are simply spread out on a bamboo mat under weak sunlight, or in a well-lit room with good ventilation, and allowed to wither naturally. When the leaves are 70-80% dry, slowly dried by the gentle fire. Slight oxidation takes place gradually throughout the process, so white tea is more oxidised than green tea."></asp:Label>
            <br />
            <br />
            <br />
    <asp:Label ID="Label15" runat="server" Font-Names="Ebrima" Font-Size="X-Large" ForeColor="Black" style="text-align:left" Text="Making Process:" Font-Bold="True"></asp:Label>
            <br />

<asp:Label ID="Label16" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Making white tea involves minimal processing. The fresh leaves are simply spread out on a bamboo mat under weak sunlight, or in a well-lit room with good ventilation, and allowed to wither naturally. When the leaves are 70-80% dry, slowly dried by the gentle fire. Slight oxidation takes place gradually throughout the process, so white tea is more oxidised than green tea."></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image6" runat="server" Height="313px" ImageUrl="~/pictures/tea10.png" Width="424px" />
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


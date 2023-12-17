<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testWhiteTea.aspx.cs" Inherits="Assignment.VISITOR.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/style2.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
         .center-container {
        display: flex;
        flex-direction: column;

        margin: auto;
        max-width: 1200px; /* Adjust this width based on your design */
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="contentkungfu">
    <div class="center-container">
                    <h1>What is White Tea</h1>
   
<br />
<div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/PkRVrDOb5lE?si=7IyuJjBNy4YpOVu_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>


<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="White tea is known to be one of the most delicate tea varieties because it is so minimally processed. White tea is harvested before the tea plant’s leaves open fully, when the young buds are still covered by fine white hairs, hence the name “white” tea." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label9" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="These buds and unfurled leaves from the newest growth on the tea plant are handpicked and then quickly and meticulously dried, so the leaves are not allowed to oxidize as long as leaves plucked for green or black tea production. This minimal processing and low oxidation results in some of the most delicate and freshest tea available." Font-Size="Large"></asp:Label>
<p>&nbsp;</p>
<div style="display: flex; justify-content: center; align-items: center;">
    <asp:Image ID="Image1" runat="server" Height="372px" ImageUrl="~/pictures/tea11.jpg" Width="473px" />
</div>


<br />

<br />
<br />
        
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">History Of White Tea</h2>
<p>
    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="White Tea first appeared in the Northern Song Dynasty (960 - 1127). It was during this period that the first paper money and gunpowder were used and a standing navy and the location of true north on a compass were first established." Font-Size="Large"></asp:Label>
</p>
                    <p>
    <asp:Label ID="Label10" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="The first mention of White Tea appeared in &quot;Treatise on Tea”, written by the Emperor Huizong (1107-1110).  A tea connoisseur, White Tea was his favourite and his book included highly detailed descriptions and rules for the making and judging of tea." Font-Size="Large"></asp:Label>
</p>
                    <p>
    <asp:Label ID="Label11" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="In 1769, the first Silver Needle Pekoe Tea was developed and in 1857, tea plants were found in Fuding County in Fujian which yielded a superior White Tea. In 1885, Silver Needle Tea was developed and then White Peony Tea in 1922.  In 1968 the first exports of White Tea were made possible by new techniques of growing and processing." Font-Size="Large"></asp:Label>
</p>
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


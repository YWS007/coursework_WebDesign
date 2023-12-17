<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testGreenTea.aspx.cs" Inherits="Assignment.VISITOR.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>green tea</title>
    <link href="/style2.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
         .center-container {
        display: flex;
        flex-direction: column;

        margin: auto;
        max-width: 1200px; /* Adjust this width based on your design */
        }
        .auto-style11 {
            height: 315px;
        }
        .auto-style12 {
            width: 100%;
            height: 502px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="contentkungfu">
    <div class="center-container">
                    <h1>Types of Green Tea</h1>
   
<br />
<div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/GXfc3QYAZvs?si=mslGexw-x8Jm5sqi" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>


<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Green tea is the most popular beverage in China and is increasing in popularity around the world. It is made from leaves of the tea tree (Camellia sinensis) that are steamed or roasted shortly after harvesting to inactivate enzymes, preventing oxidative fermentation, then pressed and finally dried." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label14" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="By definition, green tea is not fermented. However, enzymes metabolize naturally as soon as the leaves are picked, and a micro amount of fermentation is unavoidable. After the leaves are harvested from the trees, they are left sitting under shade for a few hours to let the surface moisture evaporate. They treat the best green tea leaves very carefully to avoid bruising or damage during this process. " Font-Size="Large"></asp:Label>
<p>&nbsp;</p>
<div style="display: flex; justify-content: center; align-items: center;">
    <asp:Image ID="Image1" runat="server" Height="372px" ImageUrl="~/pictures/tea8.jpg" Width="473px" />
</div>


<br />

<br />
<br />
        
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">How to choose green tea</h2>
<p>
    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="There are various types of green teas from China and other places throughout the world. In the Chinese market, the following green teas are popular: Bi Luo Chun, Long Jing and Tie Guan Yin." Font-Size="Large"></asp:Label>
</p>
<p>
    <asp:Label ID="Label9" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="We suggest that before you buy green tea, you can usually visit a quality tea shop to see which one you like. Traditionally, Chinese people are very fussy about their tea and prefer to drink fresh seasonally-picked green tea leaves." Font-Size="Large"></asp:Label>
                    </p>
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">Types of Green Tea</h2>

&nbsp;<table class="w-100">
    <tr>
        <td style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000; text-align:left;">
            Bi Luo Chun Tea<br />
            <table class="auto-style12">
                <tr>
                    <td colspan="2">
    <asp:Label ID="Label3" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Bi luo chun, or “green snail spring,” is one of China’s tribute teas, and superior grades can reach similarly high prices. It’s also processed in a deep stationary wok, but instead of being shaped into flat quills, it’s rolled by hand into tiny spirals. When steeped, these wee curlicues reveal a complex, creamy, gently nutty aroma that’s less roasty than long jing. The infusion is remarkably thick in the mouth—think barely-set gelatin—with a vegetal flavor that feels rich like steamed asparagus or fresh spring greens with butter."></asp:Label>
                        <br />
<asp:Label ID="Label4" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Dumplings Bi luo chun also hails from Jiangsu Province, where long jing originated. The plants are harvested early in the spring, when the small leaves are most tender and can be shaped with minimal breakage. You’ll notice these rolled buds are covered with a fine layer of downy hairs; this peach fuzz is a sign of youth and vitality in the leaf, and it contributes to the brew’s voluptuous texture.have been the most traditional food in the north of China for a long time. People make dumplings on Dongzhi Day with their friends and family."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
            <asp:Image ID="Image4" runat="server" Height="313px" ImageUrl="~/pictures/tea5b.jpg" Width="424px" />
                    </td>
                    <td class="auto-style11">
            <asp:Image ID="Image3" runat="server" Height="313px" ImageUrl="~/pictures/tea5.jpg" Width="424px" />
                    </td>
                </tr>

            </table>
            <br />
            <table class="w-100">
                <tr>
                    <td>Long Jing Tea<br />
                    </td>
                </tr>
            </table>
            <table class="w-100">
                <tr>
                    <td colspan="2">
    <asp:Label ID="Label10" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Dragon Well tea, which is also known as “Longjing” tea, is a premium grade traditional green tea from China which has a history dating more than a thousand years."></asp:Label>
                        <br />
    <asp:Label ID="Label11" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Dragon Well is a delicate tea, which has to be picked at just the right time for the perfect tea.  Generally, the earlier the Dragon Well leaves are picked the better.  The very highest quality Dragon Well teas are plucked before Tomb Sweeping Day (which occurs in early April), and is hence called “Ming Qian Tea”.  When Dragon Well is plucked, the tea workers focus on being tender and gentle with the leaves so that the quality is retained.  Sometimes only one tender top bud is picked, which is called the “Heart of Lotus”.  When the tender top bud and top leaf is picked, the resulting leaf with a bud resembles the form of a gun, and is thus called “Flag Gun”.  When a bud and the top two leaves are picked, they look like the tongue of the Stellaria uliginosa and so it is called that in China."></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td>
            <asp:Image ID="Image5" runat="server" Height="313px" ImageUrl="~/pictures/tea6b.jpeg" Width="424px" />
                    </td>
                    <td>
            <asp:Image ID="Image6" runat="server" Height="313px" ImageUrl="~/pictures/tea6.jpg" Width="424px" />
                    </td>
                </tr>
            </table>
            <table class="w-100">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">Huangshan Mao Feng Tea</td>
                </tr>
                <tr>
                    <td colspan="2">
    <asp:Label ID="Label12" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Huang Shan Mao Feng is the quintessential green tea profile – a pristine clean and soft character, sweet floral aroma, and a mellow, savory, vegetal flavor that isn’t bitter or musty."></asp:Label>
                        <br />
    <asp:Label ID="Label13" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Huang Shan is located in Anhui province where centuries ago monks perfected a technique now known as “pan-firing”. This is the step used to “kill green”, which means to stop or prevent oxidation (and, oddly enough, keep the tea green). Prior to pan-firing, Chinese tea was steamed, a technique similar to what is still used in Japan. By switching from steaming (which retains moisture) to pan-firing (which decreases moisture) they changed the craft of Chinese tea – a trajectory that modern tea-making is still following today."></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td>
            <asp:Image ID="Image7" runat="server" Height="313px" ImageUrl="~/pictures/tea7b.jpg" Width="424px" />
                    </td>
                    <td>
            <asp:Image ID="Image8" runat="server" Height="313px" ImageUrl="~/pictures/tea7.jpg" Width="424px" />
                    </td>
                </tr>
            </table>
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

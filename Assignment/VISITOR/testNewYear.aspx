<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testNewYear.aspx.cs" Inherits="Assignment.VISITOR.WebForm4" %>
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
        .auto-style8 {
            width: 435px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="contentFestival">
    <div class="center-container">
                    <h1>How Do People Celebrate Chinese New Year?</h1>
   
<br />
<div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/cKoaVYALLVI?si=qdnIZnWV-wFYOEVY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>


<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="The Chinese New Year (新年) is also known as the Spring Festival (春节). It is the most solemn festival of the year for every Chinese and has been celebrated in China for thousands of years, with various forms of activities among the diverse regions of China." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label9" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="The New Year celebration is centred around removing the bad and the old, and welcoming the new and the good. It's a time to worship ancestors, exorcise evil spirits and pray for good harvest." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label10" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="In the run-up to the new year people will clean their houses to get rid of dirt, rubbish and other unwanted items. They will redecorate them with red couplets, lanterns, new flowerpots and furniture, and will shop for foodstuffs for banquet specialities." Font-Size="Large"></asp:Label>
                    <br />
<div style="display: flex; justify-content: center; align-items: center;">
    <asp:Image ID="Image1" runat="server" Height="372px" ImageUrl="~/pictures/newYear1.jpg" Width="473px" />
</div>


<br />

<br />
<br />
        
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">The Date of Chinese New Year</h2>
<p>
    <asp:Label ID="Label2" runat="server" Font-Names="Ebrima" ForeColor="Black" style="text-align:justify" Text="It is celebrated from the 1st day of the 1st lunar month to the 15th day of the 1st lunar month. The final (15th) day is called Lantern Festival, and the night before the 1st day is called Chinese New Year's Eve (Chuxi in Chinese pinyin). This is a time for family reunions, visiting relatives and friends and exchanging greetings for the coming New Year. It is also a time to ring out the old and ring in the new. The Chinese New Year can also be called &quot;Guonian&quot; which means the passing of the old year to the new one. This festival emphasizes the importance of family ties. The dinner gathering on Chinese New Year's Eve is the most important family occasion of the year." Font-Size="Large"></asp:Label>
</p>
<p>&nbsp;</p>
<h2 style="font-family: 'Cooper Black'; font-size: xx-large; font-weight: bolder; color: #FF9933;">Lucky Things to Do for Chinese New Year</h2>

&nbsp;<table class="w-100">
    <tr>
        <td colspan="2" style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000; text-align:left;">
            Clean up the House</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Image ID="Image3" runat="server" Height="313px" ImageUrl="~/pictures/newYear2.jpg" Width="424px" />
</td>
        <td>
    <asp:Label ID="Label3" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Cleaning up the house before new year is a very old tradition for Chinese people. Once you clean your home inside and out, you can get rid of the bad luck collected over the year and start to bring in good fortune for the new year."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label4" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" style="text-align:left" Text="Can I get good luck by cleaning on New Year’s Day? Of course not. Chinese people believe that good luck flows around the house, and any cleaning on New Year’s Day will wash away good luck for wealth and prosperity."></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td style="font-family: 'Cooper Black'; font-size: x-large; font-weight: 200; color: #000000;" colspan="2">Wear a Dash of Red</td>
    </tr>
    <tr>
        <td>

<h3>
<img src="../pictures/newYear3.jpeg" class="auto-style5"/></h3>
        </td>
        <td>

<asp:Label ID="Label5" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Wearing something red is an auspicious way to attract maximum good luck and warn off any bad spirits. If it’s right your zodiac year, “benming nian” in Chinese, it’s a must do thing to wear something red, such as red clothes, socks and underwear. Some people prefer to wear red inside, it boosts up energy and happiness from inside out.  "></asp:Label>
            <br />
            <br />
    <asp:Label ID="Label6" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="If you really don’t like red color, just choose some bright colors. Keep things colorful and a glorious future will come to you in the next year."></asp:Label>
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

            Have a Lucky Meal with Your Family</td>
    </tr>
    <tr>
        <td>

            <asp:Image ID="Image2" runat="server" Height="313px" ImageUrl="~/pictures/newYear4.jpg" Width="424px" CssClass="auto-style7" />
        </td>
        <td>

    <asp:Label ID="Label7" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="Chinese New Year is a great time for family reunion. Having a lucky “reunion dinner” with your family is one of the most important things to do for the Spring Festival. It’s propitious to prepare some lucky food like dumplings and fish, for a good wish of prosperity."></asp:Label>
            <br />
            <br />
<asp:Label ID="Label8" runat="server" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="As the word “fish” and “surplus” share the same pronunciation in Chinese, usually Chinese people won’t eat up the whole fish for this big meal, because they want to ask for a good will of having a surplus year after year."></asp:Label>
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

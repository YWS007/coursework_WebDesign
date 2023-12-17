<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testYuanJia.aspx.cs" Inherits="Assignment.VISITOR.WebForm8" %>
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
                    <h1>Life of a Legend:</h1>
                    <h1 style="font-family: 'Cooper Black'; font-size: 60px; font-weight: bolder; font-style: italic; margin-top:0px">Huo Yuan Jia</h1>
   
<br />


<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Huo Yuanjia, born in Tianjin in 1868, overcame childhood illnesses to pursue his family's Mizongquan kung fu tradition. Initially denied training by his father, he secretly observed and practiced, eventually proving his skills in a family contest. Huo became a renowned martial artist, protecting monks, defeating challengers, and gaining disciples. Martial arts, rooted in Shaolin monastery principles, symbolized physical and mental discipline." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label9" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="In 1901, Huo accepted a Russian's challenge, but the Russian backed out. Eight years later, he faced Hercules O'Brien in Shanghai, with unclear outcomes. Huo gained fame after a clash with a Japanese judo club, defending China's honor and sending the injured judo contingent back to Japan. Huo emerged as a symbol of resolve, resilience, and resistance during a challenging period in China's history, inspiring legends depicted in TV adaptations and films with martial arts icons like Bruce Lee and Jet Li." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label10" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Huo Yuanjia's reputation allowed him to establish the Jing Wu Athletic Society, the first modern martial arts school. Starting as a modest structure on the outskirts of Shanghai, it quickly became popular, attracting students and skilled martial artists nationwide. The society aimed to provide a comprehensive martial arts education, offering classes in various disciplines and making kung fu more accessible to the public. One notable technique taught was the &quot;cross-shaped routine,&quot; a move designed to unbalance and defeat opponents, emphasizing its effectiveness in the Annals of Jingwu in 1919." Font-Size="Large"></asp:Label>
                    <br />
                    <br />
        <div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/G-wJXFQr-Es?si=IqxyjcDJ-qNms5iC" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        </div>
<br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" ForeColor="Black" CssClass="rounded-link" NavigateUrl="~/VISITOR/testMemberRegister.aspx" font-size="20px" Width="190px">Watch Continue</asp:HyperLink>
                    <br />
                    <br />
<br />
<br />

          </div>
        </section>
   
    </asp:Content>

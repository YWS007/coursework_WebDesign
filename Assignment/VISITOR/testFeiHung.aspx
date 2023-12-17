<%@ Page Title="" Language="C#" MasterPageFile="~/VISITOR/visitor.Master" AutoEventWireup="true" CodeBehind="testFeiHung.aspx.cs" Inherits="Assignment.VISITOR.WebForm6" %>
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
                    <h1>Life of a Legend: </h1>
        <h1 style="font-family: 'Cooper Black'; font-size: 60px; font-weight: bolder; font-style: italic; margin-top:0px">Wong Fei-hung</h1>
   
   
<br />


<br />
<asp:Label ID="Label1" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="In 1847, in the southern-Chinese city of Foshan, the owner of a medical clinic had a son. As the boy grew older, his father taught him a martial art called Hung Gar, and the two traveled from village to village demonstrating it and selling medicine. Occasionally, a local martial artist would challenge them, and the son became famous for never losing a fight. He grew up to inherit the clinic as well as his father’s position as a martial-arts coach for the local militia, and eventually opened a second clinic in another city. He married four times and had four children, but after one of his clinics burned down during antigovernment riots in 1924, he became despondent, and, following a slow decline, he died the following year." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label9" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="This is the modest real-life story of Wong Fei-hung, who posthumously became a pop-culture phenomenon with no equivalent in the West. Imagine Benjamin Franklin spawning a franchise larger than James Bond’s that sprawls like the Star Wars empire: movies, TV shows, museums, books, video games, and music. Since 1949, there have been well over a hundred feature films, numerous TV series, several radio dramas, and an unknown number of novels about Wong. There are many movies about his students and teachers, and even his fourth wife got a thirty-two-episode television series in 2011. Jackie Chan and Jet Li found early fame playing Wong, and movies about him have been directed by some of Hong Kong’s greatest auteurs, including Chang Cheh, Lau Kar-leung, Yuen Wo-ping, Tsui Hark, and Sammo Hung." Font-Size="Large"></asp:Label>
                    <br />
<asp:Label ID="Label10" runat="server" Font-Names="Ebrima" style="text-align:justify" Text="Wong doesn’t belong to any one studio or owner, he belongs to everyone, and from his first movie, in 1949, to his most recent, in 2018, different directors, producers, and actors have added to his legend and changed the folk hero’s personality to suit the times. One thing that has never changed, however, is Wong’s status as a southern-Chinese hero who embodies that region’s multicultural identity, best exemplified by diverse Hong Kong, which often exists in tension with the more monolithic North." Font-Size="Large"></asp:Label>
                    <br />
                    <br />
        <div style="display: flex; justify-content: center; align-items: center;">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/M5rszGYe7q0?si=fxPDXgiruMCvNRgF" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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

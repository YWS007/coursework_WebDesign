<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageAnnouncement.aspx.cs" Inherits="Assignment.manageAnnouncement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 28px;
        }
        .auto-style3 {
            width: 27px;
        }
        .auto-style4 {
            width: 403px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="News"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="title" runat="server" Width="1087px"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Label ID="sTitle" runat="server" Text="title" Visible="False"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">Content</td>
                <td>
                    <asp:TextBox ID="content" runat="server" Height="222px" TextMode="MultiLine" Width="1085px"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="add" runat="server" Text="Add" OnClick="add_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Edit" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bReset" runat="server" OnClick="bReset_Click" Text="Reset" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="msg" runat="server" Text="msg" Visible="False"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Current News"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" Width="100%" AutoGenerateColumns="false">
                       <Columns>
                           <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chk" runat="server" AutoPostBack="true" OnCheckedChanged="chk_CheckedChanged" />
                                </ItemTemplate>
                            </asp:TemplateField>
                           <asp:BoundField DataField="title" HeaderText="Title" />
                           <asp:BoundField DataField="content" HeaderText="Content" />
                           <asp:BoundField DataField="date" HeaderText="Date" />
                           
       
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

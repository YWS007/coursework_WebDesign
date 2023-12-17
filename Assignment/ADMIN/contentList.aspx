<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contentList.aspx.cs" Inherits="Assignment.ADMIN.contentList" EnableViewState="true" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 36px;
        }
        .auto-style3 {
            width: 46px;
        }
        .auto-style4 {
            width: 265px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Content List"></asp:Label>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="courseCategory" runat="server" AutoPostBack="true" >
                        <asp:ListItem>Tea</asp:ListItem>
                        <asp:ListItem>Wushu</asp:ListItem>
                        <asp:ListItem>Festival</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="search" runat="server" OnClick="search_Click" Text="Search" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="courseID" Width="100%" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-primary" SelectText="Select" />
                            <asp:BoundField DataField="courseID" HeaderText="Course ID" />
                            <asp:BoundField DataField="courseName" HeaderText="Course Name" />
                        </Columns>
                    </asp:GridView>

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
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

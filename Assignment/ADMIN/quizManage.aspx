<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quizManage.aspx.cs" Inherits="Assignment.ADMIN.quizManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
            width: 590px;
        }
        .auto-style3 {
            width: 387px;
        }
        .auto-style4 {
            height: 40px;
            width: 387px;
        }
        .auto-style5 {
            width: 590px;
        }
        .auto-style6 {
            height: 40px;
        }
        .auto-style7 {
            width: 47px;
        }
        .auto-style8 {
            height: 40px;
            width: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Manage Quiz"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="CourseID"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="cID" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Quiz Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="quizName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">Category</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="category" runat="server">
                            <asp:ListItem>Tea</asp:ListItem>
                            <asp:ListItem>Wushu</asp:ListItem>
                            <asp:ListItem>Festival</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">Question number</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="questionNum" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="quizID" runat="server" Text="quizID" Visible="False"></asp:Label>
                    &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
&nbsp;
                        <asp:Button ID="edit" runat="server" Text="Edit" OnClick="edit_Click" />
&nbsp;
                        <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />
                    &nbsp;&nbsp;
                        <asp:Button ID="manageQuestion" runat="server" OnClick="manageQuestion_Click" Text="Manage Question" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="quizID" Width="100%" AutoGenerateColumns="false">
                           <Columns>
                               <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chk" runat="server" AutoPostBack="true" OnCheckedChanged="chk_CheckedChanged" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <asp:BoundField DataField="quizID" HeaderText="Quiz ID" />
                               <asp:BoundField DataField="quizName" HeaderText="Quiz Name" />
                               <asp:BoundField DataField="quizCategory" HeaderText="Quiz Category" />
                               <asp:BoundField DataField="questionNumber" HeaderText="Question Number" />
                               <asp:BoundField DataField="contentID" HeaderText="Content ID" />
       
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

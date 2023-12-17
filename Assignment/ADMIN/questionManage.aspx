<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="questionManage.aspx.cs" Inherits="Assignment.ADMIN.questionManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 57px;
        }
        .auto-style3 {
            width: 92px;
        }
        .auto-style4 {
            width: 224px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="manageQuestion" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Manage Question"></asp:Label>
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
                        <asp:Label ID="qID" runat="server" Text="qID"></asp:Label>
                    </td>
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
                    <td class="auto-style4">
                        <asp:Label ID="Label7" runat="server" Text="Question Type"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="rbMC" runat="server" GroupName="questionType" Text="Multiple Choice" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rbTF" runat="server" GroupName="questionType" Text="True or False Question" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Question"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="question" runat="server" TextMode="MultiLine" Height="111px" Width="892px"></asp:TextBox>
&nbsp;
                        <asp:Label ID="questionID" runat="server" Text="questionID" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="194px" Width="293px" />
&nbsp;
                        <asp:Label ID="img" runat="server" Text="img" Visible="False"></asp:Label>
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
                        <asp:Label ID="Label2" runat="server" Text="A"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="choice1" runat="server" TextMode="MultiLine" Width="646px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="B"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="choice2" runat="server" TextMode="MultiLine" Width="643px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="C"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="choice3" runat="server" TextMode="MultiLine" Width="639px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Text="D"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="choice4" runat="server" TextMode="MultiLine" Width="641px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label6" runat="server" Text="Answer"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ans" runat="server"></asp:TextBox>
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
                        <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
&nbsp;&nbsp;
                        <asp:Button ID="edit" runat="server" Text="Edit" OnClick="edit_Click" />
&nbsp;&nbsp;
                        <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click1" />
                    &nbsp;&nbsp;
                        <asp:Button ID="breset" runat="server" OnClick="reset_Click" Text="Reset" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="questionID" Width="100%" AutoGenerateColumns="false">
                           <Columns>
                               <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chk" runat="server" AutoPostBack="true" OnCheckedChanged="chk_CheckedChanged" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <asp:BoundField DataField="questionID" HeaderText="Question ID" />
                               <asp:BoundField DataField="questionType" HeaderText="Question Type" />
                               <asp:BoundField DataField="question" HeaderText="Question" />
                               <asp:BoundField DataField="choice1" HeaderText="Choice 1" />
                               <asp:BoundField DataField="choice2" HeaderText="Choice 2" />
                               <asp:BoundField DataField="choice3" HeaderText="Choice 3" />
                               <asp:BoundField DataField="choice4" HeaderText="Choice 4" />
                               <asp:BoundField DataField="ans" HeaderText="Answer" />
                               <asp:BoundField DataField="image" HeaderText="Image" />
       
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
            </table>
        </div>
    </form>
</body>
</html>

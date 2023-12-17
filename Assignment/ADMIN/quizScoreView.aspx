<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quizScoreView.aspx.cs" Inherits="Assignment.ADMIN.quizScoreView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 88%;
        }
        .auto-style2 {
            width: 45px;
        }
        .auto-style3 {
            width: 1195px;
        }
        .auto-style4 {
            width: 818px;
        }
    </style>

    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="View Score"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Quiz List"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="quizID" Width="100%" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoPostBack="true">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lblSelect" runat="server" CommandName="Select" CommandArgument='<%# Eval("quizID") %>' >Select</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="quizID" HeaderText="Quiz ID" />
                                <asp:BoundField DataField="quizName" HeaderText="Quiz Name" />
                            </Columns>
                        </asp:GridView>


                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Score"></asp:Label>
                        </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="errMsg" runat="server" ForeColor="Red" Text="No records found!" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:GridView ID="GridView2" runat="server" DataKeyNames="quizID" Width="100%" AutoGenerateColumns="false" >
                            
                            <Columns>
                               <asp:BoundField DataField="quiz" HeaderText="Quiz ID" />
                               <asp:BoundField DataField="member" HeaderText="Member ID" />
                               <asp:BoundField DataField="fname" HeaderText="First Name" />
                               <asp:BoundField DataField="lname" HeaderText="Last Name" />
                               <asp:BoundField DataField="date" HeaderText="Date" />
                               <asp:BoundField DataField="score" HeaderText="Score" />

                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

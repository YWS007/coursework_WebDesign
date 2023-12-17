<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="courseManagement.aspx.cs" Inherits="Assignment.ADMIN.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 281px;
        }
        .auto-style3 {
            width: 246px;
        }
        .auto-style4 {
            width: 281px;
            height: 46px;
        }
        .auto-style5 {
            width: 246px;
            height: 46px;
        }
        .auto-style6 {
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="font-size:x-large" align="center">Course Info Manage Form</div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Course ID</td>
                    <td>
                        <asp:TextBox ID="courseID" runat="server" Font-Size="Medium" Width="355px"></asp:TextBox>
                    &nbsp;
                        <asp:Button ID="bSearch" runat="server" OnClick="bSearch_Click" Text="Search" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Course Name</td>
                    <td>
                        <asp:TextBox ID="courseName" runat="server" Font-Size="Medium" Width="346px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Course Category</td>
                    <td>
                        <asp:RadioButton ID="rbTea" runat="server" GroupName="courseCategory" Text="Tea" />
&nbsp;&nbsp;
                        <asp:RadioButton ID="rbWushu" runat="server" GroupName="courseCategory" Text="Wushu" />
                    &nbsp;&nbsp;
                        <asp:RadioButton ID="rbFestival" runat="server" GroupName="courseCategory" Text="Festival" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">Instructor</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="instructor" runat="server" Font-Size="Medium" Width="446px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Image</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="164px" Width="249px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="img" runat="server" Text="img" Visible="False"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="bAdd" runat="server" BackColor="#9966FF" BorderColor="#9966FF" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Add" Width="137px" />
                    &nbsp;&nbsp;
                        <asp:Button ID="bUpdate" runat="server" Text="Update" OnClick="bEdit_Click" />
                    &nbsp;&nbsp;
                        <asp:Button ID="bDelete" runat="server" Text="Delete" OnClick="bDelete_Click" />
                    &nbsp;&nbsp;
                        <asp:Button ID="bReset" runat="server" OnClick="bReset_Click" Text="Reset" />
                    &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Manage Content" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        
                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="courseID" Width="100%" AutoGenerateColumns="false">
                           <Columns>
                               <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chk" runat="server" AutoPostBack="true" OnCheckedChanged="chk_CheckedChanged" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <asp:BoundField DataField="courseID" HeaderText="Course ID" />
                               <asp:BoundField DataField="courseName" HeaderText="Course Name" />
                               <asp:BoundField DataField="courseCategory" HeaderText="Course Category" />
                               <asp:BoundField DataField="instructor" HeaderText="Instructor" />
                               <asp:BoundField DataField="image" HeaderText="Image" />
                               
                            </Columns>
                        </asp:GridView>
                      

                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageCourseContent.aspx.cs" Inherits="Assignment.ADMIN.manageCourseContent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 22px;
        }
        .auto-style4 {
            width: 169px;
        }
        .auto-style8 {
            width: 882px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Course Content"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="course" runat="server" Text="course"></asp:Label>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label13" runat="server" Text="Chapter"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="chapter" runat="server" Width="220px"></asp:TextBox>
                &nbsp;<asp:Label ID="ch" runat="server" Text="ch" Visible="False"></asp:Label>
&nbsp;
                    <asp:Label ID="cID" runat="server" Text="contentID" Visible="False"></asp:Label>
                </td>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="contentID" Width="100%" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-primary" SelectText="Select" />
                        <asp:BoundField DataField="chapter" HeaderText="Chapter" />
                        <asp:BoundField DataField="title" HeaderText="Title" />
                    </Columns>
                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Text="Title"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="title" runat="server" Width="636px"></asp:TextBox>
                </td>
                <td rowspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Content 1"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="content1" runat="server" Height="130px" TextMode="MultiLine" Width="548px" style="text-align:justify"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Image 1"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="142px" Width="206px" />
&nbsp;<asp:Label ID="img1" runat="server" Text="img"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Content 2"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="content2" runat="server" Height="143px" TextMode="MultiLine" Width="539px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Image 2"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    <br />
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="130px" Width="198px" />
                    <asp:Label ID="img2" runat="server" Text="img"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Content 3"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="content3" runat="server" Height="146px" TextMode="MultiLine" Width="540px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Image 3"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload3" runat="server" />
                    <br />
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="136px" Width="198px" />
                    <asp:Label ID="img3" runat="server" Text="img"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Text="Content 4"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="content4" runat="server" Height="150px" TextMode="MultiLine" Width="537px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Text="Image 4"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload4" runat="server" />
                    <br />
                    <br />
                    <asp:Image ID="Image4" runat="server" Height="115px" Width="187px" />
                    <asp:Label ID="img4" runat="server" Text="img"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label12" runat="server" Text="Video link"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="video" runat="server" TextMode="MultiLine" Height="123px" Width="518px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="msg" runat="server" Text="msg" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
                &nbsp;&nbsp;
                    <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Edit" />
&nbsp;&nbsp;
                    <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Delete" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

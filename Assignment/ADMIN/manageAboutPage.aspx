<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageAboutPage.aspx.cs" Inherits="Assignment.ADMIN.manageAboutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 1046px;
    }
    .auto-style3 {
        width: 243px;
    }
    .auto-style4 {
        width: 695px;
    }
    .auto-style5 {
        width: 90px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="About Us" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        

                        

                        <br />
                        <asp:Image ID="Image1" runat="server" Height="219px" Width="378px" />
&nbsp;<asp:Label ID="img" runat="server" Text="img" Visible="False"></asp:Label>
                        

                        

                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="preview" runat="server" Text="preview"></asp:Label>

                         
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <br />
                        Edit Text:<br />
                        <asp:TextBox ID="information" runat="server" TextMode="MultiLine" Rows="10" Columns="50" Height="148px" Width="876px"></asp:TextBox>

                         
                        <asp:Label ID="id" runat="server" Text="id" Visible="False"></asp:Label>

                         
                    </td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <br />
                        <asp:Button ID="bSave" runat="server" Text="Save" OnClick="Button1_Click" />

                         
                    &nbsp;&nbsp; <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                        

                        

                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

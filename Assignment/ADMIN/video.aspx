<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="video.aspx.cs" Inherits="Assignment.ADMIN.video" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YouTube Video Player</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Upload YouTube Video Link</h2>
            <asp:TextBox ID="txtYouTubeLink" runat="server" CssClass="form-control" placeholder="Enter YouTube Video Link"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Play Video" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            
            <hr />

            <asp:Panel ID="videoPanel" runat="server"></asp:Panel>
        </div>
    </form>
</body>
</html>

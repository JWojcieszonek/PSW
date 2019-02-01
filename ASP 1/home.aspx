<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Strona startowa</h1>
        </div>
        <asp:Image ID="Image1" runat="server" Height="133px" ImageUrl="~/img2.png" Width="92px" />
        <br />
        <p>
            <asp:Button ID="btnRegister" runat="server" onClick="btnRegister_Click" Text="Rejestracja" />
            <asp:Button ID="btnInfo" runat="server" onClick="btnInfo_Click" Text="Informacje o stronie" />
        </p>
    </form>
</body>
</html>

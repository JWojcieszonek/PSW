<%@ Page Language="C#" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Informacje o stronie</h1>
            <p>
                Strona wykonana na potrzeby laboratorium z Programowania Systemów Webowych.</p>
            <p>
                Autor: Jakub Wojcieszonek</p>
            <br />
            <asp:Button ID="btnBack" runat="server" Text="Wróć" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>

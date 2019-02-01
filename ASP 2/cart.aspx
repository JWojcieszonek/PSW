<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Zawartość koszyka<asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/cart.png" /></h1>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Suma:"></asp:Label>
        <hr />
        Wybierz sposób dostawy:<h3>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True" Value="0">Odbiór osobisty - 0PLN</asp:ListItem>
                <asp:ListItem Value="15">Przesyłka kurierska - 15PLN</asp:ListItem>
                <asp:ListItem Value="7">Poczta Polska - 7PLN</asp:ListItem>
            </asp:RadioButtonList>
        </h3>
        <h3>
            <asp:Label ID="Label3" runat="server" Text="Całkowity koszt zamówienia: "></asp:Label>
        </h3>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Wróć do listy produktów" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Złóż zamówienie" Enabled="False" />
    </form>
</body>
</html>

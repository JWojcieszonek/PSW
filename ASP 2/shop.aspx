<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Wybierz kategorię produktów:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="cart" runat="server" Height="50px" ImageUrl="~/cart.png" Width="50px" OnClick="cart_Click" />
&nbsp;<asp:Label ID="counter" runat="server" Text="Wybranych produktów:"></asp:Label>
                <br />
            </h2>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True">Książki</asp:ListItem>
                <asp:ListItem>Filmy</asp:ListItem>
                <asp:ListItem>Płyty</asp:ListItem>
                <asp:ListItem>Inne</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="selectedCategory" runat="server" Text="Label"></asp:Label>
            <asp:CheckBoxList ID="bookList" runat="server" Visible="False">
            </asp:CheckBoxList>
            <asp:CheckBoxList ID="movieList" runat="server" Visible="False">
            </asp:CheckBoxList>
            <asp:CheckBoxList ID="CdList" runat="server" Visible="False">
            </asp:CheckBoxList>
            <asp:CheckBoxList ID="otherList" runat="server" Visible="False">
            </asp:CheckBoxList>
            <asp:Button ID="Submit" runat="server" Text="Dodaj do koszyka" onClick="Submit_Click" PostBackUrl="~/shop.aspx"/>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/shop.aspx" Text="Opróżnij koszyk" />
            <br />
        </div>
    </form>
</body>
</html>

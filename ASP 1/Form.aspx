<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Form</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 139px;
            height: 34px;
        }
        .auto-style4 {
            height: 34px;
        }
        .auto-style5 {
            font-size: small;
        }
        .auto-style6 {
            height: 34px;
            margin-left: 40px;
        }
        .auto-style7 {
            color: #999999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Formularz rejestracji:</h3>
            <p>&nbsp;Uzupełnij dane w formularzu.</p>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Imię:&nbsp;&nbsp; </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="nameTextBox" Display="Dynamic" ErrorMessage="Wpisz imię" ForeColor="Red" CssClass="auto-style5"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Nazwisko: </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="lastNameValidator" runat="server" ControlToValidate="lastNameTextBox" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Wpisz nazwisko" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Data urodzenia:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <span class="auto-style7">dd.mm.yyyy lub dd-mm-yyyy</span><br />
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Niepoprawna data urodzenia" ForeColor="Red" MaximumValue="24.01.2019" MinimumValue="01.01.1900" Type="Date"></asp:RangeValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Niepoprawny format daty" ForeColor="Red" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Email: </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="emailValidator" runat="server" ControlToValidate="emailTextBox" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Wpisz adres email" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="emailRegularValidator" runat="server" ControlToValidate="emailTextBox" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Adres emial niepoprawny" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Potwierdź email: </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="emailTextBox0" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="emailValidator0" runat="server" ControlToValidate="emailTextBox0" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Wpisz adres email" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="emailRegularValidator0" runat="server" ControlToValidate="emailTextBox0" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Adres emial niepoprawny" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="emailTextBox" ControlToValidate="emailTextBox0" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Adres email różni się" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Telefon:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="phoneTextBox" runat="server" ></asp:TextBox>
                            <span class="auto-style7">+48 999 999 999</span><br />
                            <asp:RegularExpressionValidator ID="phoneRegularValidator" runat="server" ControlToValidate="phoneTextBox" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Niepoprawny numer telefonu" ForeColor="Red" ValidationExpression="(?&lt;!\w)((\+)?48?)?[ -]?\d{3}[ -]?\d{3}[ -]?\d{3}(?!\w)"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Adres:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="adressTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Kod pocztowy:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="codeTextBox" runat="server"></asp:TextBox>
                            <span class="auto-style7">99-999</span><br />
                            <asp:RegularExpressionValidator ID="zipCodeRegexValidator" runat="server" ControlToValidate="codeTextBox" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Niepoprawny kod pocztowy" ForeColor="Red" ValidationExpression="[0-9]{2}\-[0-9]{3}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Miasto:</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="cityTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            <asp:Button ID="Button1" runat="server" Text="Zarejestruj" />
            <asp:Button ID="btnBack" runat="server" Text="Wróć" onClick="btnBack_Click"/>
        </div>
        <asp:Label ID="output" runat="server"></asp:Label>
    </form>
</body>
</html>

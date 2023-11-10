<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionRegistrosContables.aspx.cs" Inherits="CuentasContablesTp3.GestionRegistrosContables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Menu</asp:HyperLink>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </div>
    </form>
</body>
</html>

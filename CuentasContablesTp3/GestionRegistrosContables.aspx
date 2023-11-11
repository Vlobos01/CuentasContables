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
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="id" Width="126px">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" placeholder="Monto" ToolTip="Monto" runat="server" TextMode="Number"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" />
            <asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="Button2_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="False">Debe</asp:ListItem>
                <asp:ListItem Value="True">Haber</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="122px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="id" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:Button ID="Button3" runat="server" Text="Borrar" OnClick="Button3_Click" />
            <br />
            <br />
            <asp:Table ID="Table1" runat="server" Width="735px">
            </asp:Table>
            <br />

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [Cuentas]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM [RegistrosContables] WHERE [id] = @id" InsertCommand="INSERT INTO [RegistrosContables] ([idCuenta], [monto], [tipo]) VALUES (@idCuenta, @monto, @tipo)" SelectCommand="SELECT RegistrosContables.id, RegistrosContables.idCuenta, RegistrosContables.monto, RegistrosContables.tipo, Cuentas.descripcion FROM RegistrosContables INNER JOIN Cuentas ON RegistrosContables.idCuenta = Cuentas.id" UpdateCommand="UPDATE [RegistrosContables] SET [idCuenta] = @idCuenta, [monto] = @monto, [tipo] = @tipo WHERE [id] = @id">
            <DeleteParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="idCuenta" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" Name="monto" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="DropDownList2" Name="tipo" PropertyName="SelectedValue" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="idCuenta" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" Name="monto" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="DropDownList2" Name="tipo" PropertyName="SelectedValue" Type="Boolean" />
                <asp:ControlParameter ControlID="DropDownList3" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT RegistrosContables.id, Cuentas.descripcion, RegistrosContables.monto, RegistrosContables.tipo FROM RegistrosContables INNER JOIN Cuentas ON RegistrosContables.idCuenta = Cuentas.id"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [RegistrosContables] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

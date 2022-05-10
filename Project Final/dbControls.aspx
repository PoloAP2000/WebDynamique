<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dbControls.aspx.cs" Inherits="dbControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="dsDept" DataTextField="dname" DataValueField="deptno" AutoPostBack="True">
            <asp:ListItem Value="0">Choose...</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="dsDept" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT * FROM [dept]">
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="dsEmp" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT * FROM [emp] WHERE ([deptno] = @deptno)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="deptno" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="dsEmp" DataTextField="ename" DataValueField="empno">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ds.aspx.cs" Inherits="ds" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        </asp:RadioButtonList>
        <br />
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <br />
        <br />
        Department Name : <asp:TextBox ID="txtDname" runat="server"></asp:TextBox>
        <br />
        Department Location :
        <asp:TextBox ID="txtLoc" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
&nbsp;<asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        <br />
        <br />
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save in the database" />
        <br />
    
    </div>
    </form>
</body>
</html>
